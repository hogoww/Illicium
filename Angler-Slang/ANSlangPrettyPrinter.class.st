Class {
	#name : #ANSlangPrettyPrinter,
	#superclass : #ASTCPrettyPrint,
	#category : #'Angler-Slang'
}

{ #category : #visiting }
ANSlangPrettyPrinter >> cLiteralFor: anObject [
	"Return a string representing the C literal value for the given object."
	anObject isNumber
		ifTrue:
			[anObject isInteger ifTrue:
				[| hex |
				 hex := (anObject > 0
								and: [(anObject >> anObject lowBit + 1) isPowerOfTwo
								and: [(anObject highBit = anObject lowBit and: [anObject > 65536])
									  or: [anObject highBit - anObject lowBit >= 4]]]).
				^self cLiteralForInteger: anObject hex: hex].
			anObject isFloat ifTrue:
				[^anObject printString]]
		ifFalse:
			[anObject isSymbol ifTrue:
				[^self cFunctionNameFor: anObject].
			anObject isString ifTrue:
				[^'"', (anObject copyReplaceAll: (String with: Character cr) with: '\n') , '"'].
			anObject == nil ifTrue: [^ 'null' ].
			anObject == true ifTrue: [^ '1' ].
			anObject == false ifTrue: [^ '0' ].
			anObject isCharacter ifTrue:
				[^anObject == $'
					ifTrue: ['''\'''''] "i.e. '\''"
					ifFalse: [anObject asString printString]]].
	self error: 'Warning: A Smalltalk literal could not be translated into a C constant: ', anObject printString.
	^'"XXX UNTRANSLATABLE CONSTANT XXX"'
]

{ #category : #literals }
ANSlangPrettyPrinter >> cLiteralForInteger: anInteger hex: aBoolean [
	"Answer the string for generating a literal integer.
	Use hexadecimal notation as prescribed by aBoolean.
	Use long long suffix (LL) if the integer does not fit on 32 bits.
	Use unsigned suffix (U) if the integer does not fit on a signed integer (resp. long long).
	Correctly generate INT_MIN and LONG_LONG_MIN.
	Indeed -0x8000000 is parsed as - (0x8000000) by C Compiler.
	0x8000000 does not fit on a signed int, it is interpreted as unsigned.
	That makes INT_MIN unsigned which is badly broken..."
	
	| printString |
	printString := aBoolean
		ifTrue: [anInteger positive
			ifTrue: ['0x' , (anInteger printStringBase: 16)]
			ifFalse: ['-0x' , (anInteger negated printStringBase: 16)]]
		ifFalse: [anInteger printString].
	^anInteger positive
		ifTrue: [anInteger > 16r7FFFFFFF "INT_MAX"
			ifTrue: [anInteger > 16rFFFFFFFF "UINT_MAX"
				ifTrue: [anInteger > 16r7FFFFFFFFFFFFFFF "LONG_LONG_MAX"
					ifTrue: [printString , 'ULL']
					ifFalse: [printString , 'LL']]
				ifFalse: [printString , 'U']]
			ifFalse: [printString]]
		ifFalse: [anInteger < -16r8000000
			ifTrue: [anInteger = -16r800000000000000	"LONG_LONG_MIN"
				ifTrue: ['(-0x7FFFFFFFFFFFFFFFLL-1)']
				ifFalse: [printString , 'LL']]
			ifFalse: [anInteger = -16r8000000	"INT_MIN"
				ifTrue: ['(-0x7FFFFFFF-1)']
				ifFalse: [printString]]]
]

{ #category : #visiting }
ANSlangPrettyPrinter >> doesThisNeedParenthesis: aNode [

	aNode isLiteral ifTrue: [ ^ false ].
	(aNode isBitLeftShiftOperator
		and: [ aNode operands first isCastOperator
			and: [ aNode parent isCastOperator ] ]) ifTrue: [ ^ false ].

	aNode isFunctionCall ifTrue: [ ^ false ].

	^ aNode parent isNotNil
		and: [ aNode parent isIf not  
			and: [ aNode parent isAssignmentOperator not
				and: [ aNode parent isStatement not
					and: [ aNode parent isFunctionCall not 
						and: [ aNode parent isTernaryConditionalOperator not ]]]]].
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
		self cr spaces.
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
	self
		<< '/* ';
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
	| isStatement |
	isStatement := anAssignmentAdditionOperator parent isExpressionStatement
		or: [ anAssignmentAdditionOperator parent isIndexerOperator ].
	isStatement ifFalse: [self << '('].
	super visitAssignementAdditionOperator: anAssignmentAdditionOperator.
	isStatement ifFalse: [self << ')'].
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

	"Specific for expressions wrapping casts"
	self
		parenthesisIf: (aCastOperator parent isBinaryOperator
			and: [ aCastOperator parent isBitLeftShiftOperator not
				and: [ aCastOperator parent isBitRightShiftOperator not
					and: [ aCastOperator parent isAssignmentOperator not ] ] ])
		print: [
	
	"Second parenthesis is the cast-specific one"
	self
		parenthesisIf: 
		((aCastOperator parent isBinaryOperator and: [ aCastOperator parent isBitLeftShiftOperator not ])
			or: [
		(aCastOperator parent isCastOperator not
			and: [aCastOperator parent isBitLeftShiftOperator not
				and: [ aCastOperator operands first isIdentifier not
							and: [ aCastOperator operands first isFunctionCall not ] ] ])])
		print: [
			self
				<< '(';
				print: aCastOperator type;
				<< ') '.
			self
				parenthesisIf: (aCastOperator operands first isBitLeftShiftOperator not)
				print: [
					self
						parenthesisIf: (aCastOperator operands first isIdentifier not
							and: [ aCastOperator operands first isFunctionCall not
								and: [ aCastOperator operands first isBitLeftShiftOperator not ] ])
						print: [ self print: aCastOperator operands first ] ] ] ]
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	anExpressionStatement expression isPreprocessorIf ifFalse: [ self << $; ]. "pretty sure that won't always be the case."
]

{ #category : #visiting }
ANSlangPrettyPrinter >> visitFunctionCall: aFunctionCall [

	self
		parenthesisIf: (aFunctionCall id id ~= #GIV "Special case due to rewriting."
			and: [((aFunctionCall parent isBinaryOperator
				or: [aFunctionCall parent isCastOperator ])
					and: [ aFunctionCall parent isAssignmentOperator not ])])
		print: [
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

	self << (self cLiteralFor: aLiteral value)
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
