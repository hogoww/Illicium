Class {
	#name : #MASlangPrettyPrinter,
	#superclass : #FAPrettyPrint,
	#category : #'MAngler-Slang-Prettyprint'
}

{ #category : #'printing-literals' }
MASlangPrettyPrinter >> cLiteralFor: anObject [
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
				[^ FAFormatHelper formatSelector: anObject].
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

{ #category : #'printing-literals' }
MASlangPrettyPrinter >> cLiteralForInteger: anInteger hex: aBoolean [
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

{ #category : #'printing-literals' }
MASlangPrettyPrinter >> cLiteralForUnsignedInteger: anInteger hex: aBoolean longlong: llBoolean [
	"Answer the string for generating an unsigned literal integer.
	Use hexadecimal notation as prescribed by aBoolean.
	Force long long suffix (LL) if the integer does not fit on 32 bits, or if llBoolean is true."
	
	| printString |
	printString := aBoolean
		ifTrue: [anInteger positive
			ifTrue: ['0x' , (anInteger printStringBase: 16)]
			ifFalse: ['-0x' , (anInteger negated printStringBase: 16)]]
		ifFalse: [anInteger printString].
	^anInteger positive
		ifTrue: [(llBoolean or: [anInteger > 16rFFFFFFFF "UINT_MAX"])
			ifTrue: [printString , 'ULL']
			ifFalse: [printString , 'U']]
		ifFalse: [self error: 'please provide positive integer']
]

{ #category : #'printing-literals' }
MASlangPrettyPrinter >> cLiteralForUnsignedInteger: anInteger longlong: llBoolean [
	"Answer the string for generating an unsigned literal integer.
	Eventually use hexadecimal.
	Force long long suffix (LL) if the integer does not fit on 32 bits, or if llBoolean is true."
	
	| hex |
	hex := (anInteger > 0
				and: [(anInteger >> anInteger lowBit + 1) isPowerOfTwo
				and: [(anInteger highBit = anInteger lowBit and: [anInteger > 65536])
					  or: [anInteger highBit - anInteger lowBit >= 4]]]).
	^self cLiteralForUnsignedInteger: anInteger hex: hex longlong: llBoolean
]

{ #category : #visiting }
MASlangPrettyPrinter >> doesThisNeedParenthesis: aNode [
	true ifTrue:[ super doesThisNeedParenthesis: aNode ].
	
	
	aNode isLiteral ifTrue: [ ^ false ].
	(aNode isBitLeftShiftOperator
		and: [ aNode operand isCastOperator
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
MASlangPrettyPrinter >> initialize [

	super initialize.
	self indentationString: '	'
]

{ #category : #printing }
MASlangPrettyPrinter >> parenthesisAround: aBlockClosure [ 
	
	self parenthesisIf: true print: aBlockClosure
]

{ #category : #visiting }
MASlangPrettyPrinter >> printBinaryOperand: anOperand [

	self visitExpression: anOperand
]

{ #category : #printing }
MASlangPrettyPrinter >> printDeclarationQualifiers: qualifiers [
	qualifiers do: [:aQualifier | self << aQualifier. self space ] .
]

{ #category : #visiting }
MASlangPrettyPrinter >> printDeclarationReturnType: aTypeNode [
  aTypeNode acceptVisitor: self
]

{ #category : #visiting }
MASlangPrettyPrinter >> printLogicalOperatorInConditionnal: anOperator [
	self parenthesisFor: anOperator print: [	
		self printBinaryOperand: anOperator leftOperand.
		self cr spaces.
		self << ' ' << anOperator class symbol << ' '.
		self printBinaryOperand: anOperator rightOperand
	]
]

{ #category : #comments }
MASlangPrettyPrinter >> printMultilineComment: aString [
	stream << '/*'
		<< aString
		<< ' */'
]

{ #category : #comments }
MASlangPrettyPrinter >> printNodeInMultilineComment: aNode [
	self
		<< '/* ';
		print: aNode;
		<< ' */'
]

{ #category : #accessor }
MASlangPrettyPrinter >> stream: aStream [
	stream := aStream
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitAddressOfOperator: anAddressOfOperatorNode [
	"systematique use of parenthesis"
	self << '('.
	self visitUnaryOperator: anAddressOfOperatorNode.
	self << ')'.
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitAndOperator: anAndOperator [
	self printLogicalOperatorInConditionnal: anAndOperator
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitAssignementAdditionOperator: anAssignmentAdditionOperator [
	"use of one more set of parentheses than needed. Ok."
	| isStatement |
	isStatement := anAssignmentAdditionOperator parent isExpressionStatement
		or: [ anAssignmentAdditionOperator parent isIndexerOperator ].
	isStatement ifFalse: [self << '('].
	super visitAssignementAdditionOperator: anAssignmentAdditionOperator.
	isStatement ifFalse: [self << ')'].
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitBinaryOperator: anOperator [

	self printBinaryOperand: anOperator leftOperand.
	self << ' ' << anOperator class symbol << ' '.
	self printBinaryOperand: anOperator rightOperand.
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitBitLeftShiftOperator: aBitLeftShiftOperator [

	"Special case if first operator is a constant: format the integer correctly"
	aBitLeftShiftOperator leftOperand isLiteral ifTrue: [
		self << (self cLiteralForUnsignedInteger: aBitLeftShiftOperator leftOperand value longlong: false).
		self << ' ' << aBitLeftShiftOperator class symbol << ' '.
		self printBinaryOperand: aBitLeftShiftOperator rightOperand.
		^ self
	].
	
	super visitBitLeftShiftOperator: aBitLeftShiftOperator
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitBlock: aBlock [
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
MASlangPrettyPrinter >> visitCastOperator: aCastOperator [

	"Cast operators always are wrapped in parenthesis in slang"
	self parenthesisAround: [
		self
			<< '(';
			print: aCastOperator type;
			<< ') '.
		self parenthesisAround: [ self visitExpression: aCastOperator operand ] ]
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitExpression: anExpression [

	self
		parenthesisIf: ((anExpression isLiteral or: [ anExpression isIdentifier ]) not
				and: [ (anExpression isFunctionCall and: [ anExpression id id = 'GIV' ]) not  ] )
		print: [ self print: anExpression ]
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitExpressionList: anExpressionList [
	self parenthesisIf: true
		print:[
			anExpressionList expressions do: [:anExpression | 
				self print: anExpression 
				]
			separatedBy: [ self << $, ; cr ; spaces ]
			]
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	anExpressionStatement expression isPreprocessorIf ifFalse: [ self << $; ]. "pretty sure that won't always be the case."
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitFunctionCall: aFunctionCall [

	aFunctionCall id acceptVisitor: self.
	self << '('.
	self enterBlock.
	aFunctionCall arguments do: [:each | each acceptVisitor:self ]
		separatedBy: [ self << ', ' ]."
	stream peekLast = Character cr ifTrue: [ self spaces ]."
	self leaveBlock.
	self << ')'.
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitFunctionDeclaration: aFunctionDeclaration [
  self printDeclarationQualifiers: aFunctionDeclaration qualifiers.
  self printDeclarationReturnType: aFunctionDeclaration type.

  "Swith next two lines to match more slang stuff. But it's not great for declarations"
 "self << Character cr. "
  self space.

  aFunctionDeclaration id acceptVisitor: self.
  self << $(.
  aFunctionDeclaration parameters ifEmpty: [ stream << #void ] ifNotEmpty: [:params |  params do: [:each |  each acceptVisitor: self ] separatedBy: [ self << ', ' ] ].
  self << $)
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitFunctionDefinition: aFunctionDefinition [
	"aFunctionDefinition comment ifNotNil: [ 
		self cr cr;
			printMultilineComment: '	', aFunctionDefinition comment anyOne;
			cr
		].
	self cr."
	
	stream tab.
	aFunctionDefinition pharoNode ifNotNil:[
			self printMultilineComment: ' ' , aFunctionDefinition pharoNode methodClass name , '>>' , aFunctionDefinition pharoNode selector printString.	
		].
	self cr.
	aFunctionDefinition declaration acceptVisitor:self. 
	self cr spaces."cr after a curly brace is inconsistent, so we cannot factorise this in visitBlock (see if)"
	aFunctionDefinition body acceptVisitor: self.
	self cr.
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitIf: anIf [
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
MASlangPrettyPrinter >> visitLiteral: aLiteral [
	self flag: #badFix.
	aLiteral value isArray ifTrue: [ 'Literal array unprinted' crTrace.^self << 1 ]." corner cases of the printing... (primitiveTable for exemple"
	aLiteral value isDictionary ifTrue: [ 'Literal dictionnary unprinted' crTrace.^self << 1 ]." corner cases of the printing... (printing of options)."
	self << (self cLiteralFor: aLiteral value)
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitNegationOperator: aNegationOperator [

	aNegationOperator operand isLiteral ifTrue: [ 
		^ (ASTCLiteral value: (aNegationOperator operand value negated)) acceptVisitor: self
	].

	super visitNegationOperator: aNegationOperator
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitOrOperator: anOrOperator [
	self printLogicalOperatorInConditionnal: anOrOperator
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitPreprocessorIf: aPreprocessorIfNode [
   self cr.
   self << '#  if ' print: aPreprocessorIfNode condition ; cr.
   aPreprocessorIfNode then do: [:anExpression | 
		self spaces;spaces; print: anExpression.
			(aPreprocessorIfNode parent isExpression or: [anExpression isPreprocessorIf ])
				ifFalse: [ self << ';'].
		self cr ] .
   aPreprocessorIfNode else ifNotEmpty: [
	
    	self << '#  else '.
		self printNodeInMultilineComment: aPreprocessorIfNode condition ; cr.
        aPreprocessorIfNode else do:[:anExpression | 
				self spaces;spaces; print: anExpression.
				(aPreprocessorIfNode parent isExpression or: [anExpression isPreprocessorIf ])
					ifFalse: [ self << ';' ].
				self cr]
			].
		
   self << '#  endif '.
	self printNodeInMultilineComment: aPreprocessorIfNode condition.
	aPreprocessorIfNode parent isExpression ifTrue: [ self cr ]
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitRawDeclaration: aRawDeclarationNode [
	self << aRawDeclarationNode rawDeclaration << ';'
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitTernaryConditionalOperator: anOperator [
	
	self enterBlock.
	self << '('.
	anOperator condition acceptVisitor: self.
	self cr spaces << '? '.
	anOperator then acceptVisitor: self.
	self cr spaces << ' : '.
	anOperator else  acceptVisitor: self .
	self leaveBlock.
	self << ')'.
]

{ #category : #visiting }
MASlangPrettyPrinter >> visitUnaryOperator: anUnaryOperator [

	self parenthesisFor: anUnaryOperator print: [
		self << anUnaryOperator class symbol.
		self parenthesisIf: anUnaryOperator operand isRawCCode 
		print:[ anUnaryOperator operand acceptVisitor: self ]
	]
]
