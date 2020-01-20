Class {
	#name : #ASTCSlangPrettyPrinter,
	#superclass : #ASTCPrettyPrint,
	#category : #'ASTC-VisitorsASTC-PrettyPrint'
}

{ #category : #visiting }
ASTCSlangPrettyPrinter >> doesThisNeedParenthesis: aNode [
	^ aNode parent isIf not 
		and: [ aNode parent isAssignmentOperator not
			and: [ aNode parent isStatement not
				and: [ aNode parent isFunctionCall not 
					and: [ aNode parent isTernaryConditionalOperator not ]]]].
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> initialize [

	super initialize.
	self indentationString: '	'
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> printLogicalOperatorInConditionnal: anOperator [
	| parenthesis |
	parenthesis := self doesThisNeedParenthesis: anOperator.
	parenthesis ifTrue: [ self << '(' ].
	self printBinaryOperand: anOperator operands first.
	self cr spaces << Character tab.
	self << ' ' << anOperator class symbol << ' '.
	self printBinaryOperand: anOperator operands second.
	parenthesis ifTrue: [ self << ')' ].
]

{ #category : #comments }
ASTCSlangPrettyPrinter >> printMultilineComment: aString [
	stream << '/*'
		<< aString
		<< ' */'
]

{ #category : #comments }
ASTCSlangPrettyPrinter >> printNodeInMultilineComment: aNode [
	stream << '/* '
		print: aNode;
		<< ' */'
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitAndOperator: anAndOperator [
	self printLogicalOperatorInConditionnal: anAndOperator
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitAssignmentOperator: anAssignmentOperator [
"	anAssignmentOperator comment ifNotNil:[ self cr spaces ; printMultilineComment: ' ' , anAssignmentOperator comment first ; cr ; spaces ]."
	super visitAssignmentOperator: anAssignmentOperator.

]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitBlock: aBlock [
	self << '{' << Character cr.
	self enterBlock.
	"
	aBlock comment ifNotNil:[ self cr spaces ; printMultilineComment: ' ' , aBlock comment first ; cr ]."
	
	(aBlock declarations sort: [:decl1 :decl2| decl1 declaration declaration id id <= decl2 declaration declaration id id ])
		do: [ :each | 
			self space space space space."specifically 4 space for them..."
			each acceptVisitor: self.
			self << Character cr ].
	aBlock declarations ifNotEmpty: [ self cr ].

	aBlock statements
		do: [ :each | 
			self spaces.
			each acceptVisitor: self.
			self << Character cr ].
	self leaveBlock.
	self spaces.
	self << '}'.
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	anExpressionStatement expression isPreprocessorIf ifFalse: [ self << $; ]. "pretty sure that won't always be the case."
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionCall: aFunctionCall [
	| parenthesis |
	parenthesis := self doesThisNeedParenthesis: aFunctionCall.
	
	parenthesis ifTrue: [ self << '(' ].
	aFunctionCall id acceptVisitor: self.
	self << '('.
	self enterBlock.
	aFunctionCall arguments do: [:each | each acceptVisitor:self ]
		separatedBy: [ self << ', ' ].
	stream peekLast = Character cr ifTrue: [ self spaces ].
	self leaveBlock.
	self << ')'.
	parenthesis ifTrue: [ self << ')' ].
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionDeclaration: aFunctionDeclaration [
	stream << 'EXPORT('.
	aFunctionDeclaration type acceptVisitor: self.
	stream << ')'.
	self << Character cr.
	aFunctionDeclaration id acceptVisitor:self.
	self << $(.
	aFunctionDeclaration parameters 
		ifEmpty: [ stream << #void ]
		ifNotEmpty: [:params| 
			params do:[:each| each acceptVisitor:self] separatedBy:[ self << $,]].
	self << $).
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionDefinition: aFunctionDefinition [
	"aFunctionDefinition comment ifNotNil: [ 
		self cr cr;
			printMultilineComment: '	', aFunctionDefinition comment anyOne;
			cr
		]."
	
	self cr.
	
	stream tab.
	self printMultilineComment: ' ' , aFunctionDefinition pharoNode methodClass name , '>>' , aFunctionDefinition pharoNode selector printString.
	self cr.
	aFunctionDefinition declaration acceptVisitor:self. 
	self cr spaces."cr after a curly brace is inconsistent, so we cannot factorise this in visitBlock (see if)"
	aFunctionDefinition body acceptVisitor: self.
	self cr.
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitIf: anIf [
	self << 'if ('.
	anIf condition acceptVisitor: self.
	self << ') '.
	anIf then acceptVisitor: self.
	anIf else ifNotNil:[:anElse|
		self cr spaces << 'else '.
		anElse acceptVisitor: self.
		].
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitOrOperator: anOrOperator [
	self printLogicalOperatorInConditionnal: anOrOperator
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitPreprocessorIf: aPreprocessorIfNode [
   self cr.
   self << '#  if ' print: aPreprocessorIfNode condition ; cr.
   aPreprocessorIfNode then do: [:anExpression | 
		self spaces print: anExpression.
		aPreprocessorIfNode parent isExpression ifFalse: [ self << ';'].
		self cr ] .
   aPreprocessorIfNode else ifNotEmpty: [
    	self << '#  else '.
		self printNodeInMultilineComment: aPreprocessorIfNode condition ; cr.
        aPreprocessorIfNode else do:[:anExpression | 
				self spaces print: anExpression.
				aPreprocessorIfNode parent isExpression ifFalse: [ self << ';' ].
				self cr]
			].
   self << '#  endif '.
	self printNodeInMultilineComment: aPreprocessorIfNode condition.
	aPreprocessorIfNode parent isExpression ifTrue: [ self cr ]
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitRawCCode: aRawCCodeNode [
	self << aRawCCodeNode cCode
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitTernaryConditionalOperator: anOperator [
	
	self enterBlock.
	self << '('.
	(anOperator operands at: 1) acceptVisitor: self.
	self cr spaces << '? '.
	(anOperator operands at: 2) acceptVisitor: self.
	self cr spaces << ': '.
	(anOperator operands at: 3) acceptVisitor: self.
	self leaveBlock.
	self << ')'.
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitUnaryOperator: anUnaryOperator [
	| parenthesis innerParenthesis |
	
	parenthesis := self doesThisNeedParenthesis: anUnaryOperator.
	innerParenthesis := anUnaryOperator operands first isRawCCode.
	parenthesis ifTrue: [ self << '(' ].
	self << anUnaryOperator class symbol.
	innerParenthesis ifTrue: [ self << '(' ].	
	(anUnaryOperator operands at: 1) acceptVisitor: self.
	innerParenthesis ifTrue: [ self << ')' ].
	parenthesis ifTrue: [ self << ')' ].
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type acceptVisitor:self.
	stream peekLast = $* ifFalse: [ self << Character space ].
	aVariableDeclaration id acceptVisitor:self.
]
