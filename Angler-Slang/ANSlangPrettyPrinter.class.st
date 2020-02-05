Class {
	#name : #ANSlangPrettyPrinter,
	#superclass : #ASTCPrettyPrint,
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ANSlangPrettyPrinter >> doesThisNeedParenthesis: aNode [

	aNode isLiteral ifTrue: [ ^ false ].
	(aNode isBitLeftShiftOperator
		and: [ aNode operands first isCastOperator
			and: [ aNode parent isCastOperator ] ]) ifTrue: [ ^ false ].

	^ aNode parent isIf not 
		and: [ aNode parent isAssignmentOperator not
			and: [ aNode parent isStatement not
				and: [ aNode parent isFunctionCall not 
					and: [ aNode parent isTernaryConditionalOperator not ]]]].
]

{ #category : #visiting }
ANSlangPrettyPrinter >> initialize [

	super initialize.
	self indentationString: '	'
]

{ #category : #printing }
ANSlangPrettyPrinter >> printDeclarationQualifiers: qualifiers [
	qualifiers do: [:aQualifier | self << aQualifier. self space ] .
]

{ #category : #visiting }
ANSlangPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  aTypeNode acceptVisitor: self
]

{ #category : #visiting }
ANSlangPrettyPrinter >> printLogicalOperatorInConditionnal: anOperator [
	self parenthesisFor: anOperator print: [	
		self printBinaryOperand: anOperator operands first.
		self cr spaces << Character tab.
		self << ' ' << anOperator class symbol << ' '.
		self printBinaryOperand: anOperator operands second
	]
]

{ #category : #comments }
ANSlangPrettyPrinter >> printMultilineComment: aString [
	stream << '/*'
		<< aString
		<< ' */'
]

{ #category : #comments }
ANSlangPrettyPrinter >> printNodeInMultilineComment: aNode [
	stream << '/* '
		print: aNode;
		<< ' */'
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitAddressOfOperator: anAddressOfOperatorNode [
	"systematique use of parenthesis"
	self << '('.
	self visitUnaryOperator: anAddressOfOperatorNode.
	self << ')'.
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitAndOperator: anAndOperator [
	self printLogicalOperatorInConditionnal: anAndOperator
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitAssignementAdditionOperator: anAssignmentAdditionOperator [
	"use of one more set of parentheses than needed. Ok."
	self << '('.
	super visitAssignementAdditionOperator: anAssignmentAdditionOperator.
	self << ')'
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitAssignmentOperator: anAssignmentOperator [
"	anAssignmentOperator comment ifNotNil:[ self cr spaces ; printMultilineComment: ' ' , anAssignmentOperator comment first ; cr ; spaces ]."
	super visitAssignmentOperator: anAssignmentOperator.

]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitBitLeftShiftOperator: aBitLeftShiftOperator [
	
	| shouldWrapWithExtraParenthesis |
	shouldWrapWithExtraParenthesis := aBitLeftShiftOperator operands first isCastOperator.
	shouldWrapWithExtraParenthesis ifTrue: [ self << '(' ].
	super visitBitLeftShiftOperator: aBitLeftShiftOperator.
	shouldWrapWithExtraParenthesis ifTrue: [ self << ')' ].
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitBlock: aBlock [
	self << '{' << Character cr.
	self enterBlock.
	"
	aBlock comment ifNotNil:[ self cr spaces ; printMultilineComment: ' ' , aBlock comment first ; cr ]."
	
	(aBlock declarations sort: [:decl1 :decl2| decl1 varName <= decl2 varName ])
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
ANSlangPrettyPrinter >> visitCastOperator: aCastOperator [
	
	self
		parenthesisIf: (aCastOperator parent isCastOperator not and: [aCastOperator parent isBitLeftShiftOperator not])
		print: [
			self
				<< '(';
				print: aCastOperator type;
				<< ') '.
			self
				parenthesisIf: (aCastOperator operands first isIdentifier not
					and: [ aCastOperator operands first isBitLeftShiftOperator not ])
				print: [
					self
						parenthesisIf: (aCastOperator operands first isIdentifier not
							and: [ aCastOperator operands first isFunctionCall not
								and: [ aCastOperator operands first isBitLeftShiftOperator not ] ])
						print: [ self print: aCastOperator operands first ] ] ]
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	anExpressionStatement expression isPreprocessorIf ifFalse: [ self << $; ]. "pretty sure that won't always be the case."
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitFunctionCall: aFunctionCall [
	self parenthesisFor: aFunctionCall print: [
		aFunctionCall id acceptVisitor: self.
		self << '('.
		self enterBlock.
		aFunctionCall arguments do: [:each | each acceptVisitor:self ]
			separatedBy: [ self << ', ' ].
		stream peekLast = Character cr ifTrue: [ self spaces ].
		self leaveBlock.
		self << ')'.
	]
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitFunctionDeclaration: aFunctionDeclaration [
  self printDeclarationQualifiers: aFunctionDeclaration qualifiers.
  self printDeclarationReturnType: aFunctionDeclaration type.

  self << Character cr.
  aFunctionDeclaration id acceptVisitor: self.
  self << $(.
  aFunctionDeclaration parameters ifEmpty: [ stream << #void ] ifNotEmpty: [:params |  params do: [:each |  each acceptVisitor: self ] separatedBy: [ self << ', ' ] ].
  self << $)
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitFunctionDefinition: aFunctionDefinition [
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
ANSlangPrettyPrinter >> visitIf: anIf [
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
ANSlangPrettyPrinter >> visitLiteral: aLiteral [
	aLiteral value = #null 
		ifTrue: [ ^ self << aLiteral value ].

	super visitLiteral: aLiteral
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitOrOperator: anOrOperator [
	self printLogicalOperatorInConditionnal: anOrOperator
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitPreprocessorIf: aPreprocessorIfNode [
   self cr.
   self << '#  if ' print: aPreprocessorIfNode condition ; cr.
   aPreprocessorIfNode then do: [:anExpression | 
		self spaces print: anExpression.
			(aPreprocessorIfNode parent isExpression or: [anExpression isPreprocessorIf ])
				ifFalse: [ self << ';'].
		self cr ] .
   aPreprocessorIfNode else ifNotEmpty: [
	
    	self << '#  else '.
		self printNodeInMultilineComment: aPreprocessorIfNode condition ; cr.
        aPreprocessorIfNode else do:[:anExpression | 
				self spaces print: anExpression.
				(aPreprocessorIfNode parent isExpression or: [anExpression isPreprocessorIf ])
					ifFalse: [ self << ';' ].
				self cr]
			].
		
   self << '#  endif '.
	self printNodeInMultilineComment: aPreprocessorIfNode condition.
	aPreprocessorIfNode parent isExpression ifTrue: [ self cr ]
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitRawCCode: aRawCCodeNode [
	self << aRawCCodeNode cCode
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitRawDeclaration: aRawDeclarationNode [
	self << aRawDeclarationNode rawDeclaration << ';'
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitTernaryConditionalOperator: anOperator [
	
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
ANSlangPrettyPrinter >> visitUnaryOperator: anUnaryOperator [

	self parenthesisFor: anUnaryOperator print: [
		self << anUnaryOperator class symbol.
		self parenthesisIf: anUnaryOperator operands first isRawCCode 
		print:[ (anUnaryOperator operands at: 1) acceptVisitor: self ]
	]
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type acceptVisitor:self.
	stream peekLast = $* ifFalse: [ self << Character space ].
	aVariableDeclaration id acceptVisitor:self.
]
