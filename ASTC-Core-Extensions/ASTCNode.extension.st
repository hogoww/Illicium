Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> % anExpression [
	^ ASTCModuloOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> & anExpression [
	^ ASTCBitwiseAndOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> && anExpression [
	^ ASTCAndOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> * anExpression [
	^ ASTCMultiplicationOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> + anExpression [
	^ ASTCAdditionOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> - anExpression [
	^ ASTCSubtractionOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> -> anExpression [
	^ ASTCStructAccessPointerOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> / anExpression [
	^ ASTCDivisionOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> < anExpression [
	^ ASTCLesserOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> << anExpression [
	^ ASTCBitLeftShiftOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> <= anExpression [
	^ ASTCLesserOrEqualOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> = aNode [
	^ aNode isKindOf: self species
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> > anExpression [
	^ ASTCGreaterOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> >= anExpression [
	^ ASTCGreaterOrEqualOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> >> anExpression [
	^ ASTCBitRightShiftOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> asAddressOf [
	^ ASTCAddressOfOperator new
		operand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> asStatement [

	^ ASTCExpressionStatement expression: self
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> assign: anExpression [
	^ ASTCAssignmentOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> assignAndAdd: anExpression [
	^ ASTCAssignementAdditionOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself 
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> astDump [
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> bitXor: anExpression [
	^ ASTCBitwiseXorOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> castTo: aType [
	self assert: aType isType.
	^ ASTCCastOperator new
		type: aType;
		operand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> cu [
	" convinience method to be able to get the correspomnding compilationUnit from anywhere "
	self isCompilationUnit ifFalse: [ ^ parent ifNotNil: [ parent cu ] ifNil: [self error: 'projects don''t have compilation units' ]].
	^ self 
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCDebugStructureVisitor new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> equals: anExpression [
	^ ASTCEqualityOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> gtInspectorASTDumpIn: composite [ 
	<gtInspectorPresentationOrder: 1>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> gtInspectorCPrettyPrint: composite [ 
	<gtInspectorPresentationOrder: 2>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
			
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> indexAt: anExpression [
	^ ASTCIndexerOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> isStructuralyValidAST [ 
	| validationVisitor |
	validationVisitor := ASTCStructureValidatorVisitor new.
	self acceptVisitor: validationVisitor.
	^validationVisitor isValidAst
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> negated [
	^ self isNegationOperator 
		ifTrue: ["If there's aDouble negation, we become positive !"
			self operand
			]
		ifFalse: ["otherwise, we negate !"
			ASTCNegationOperator new
				operand: self;
				yourself
				]
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> not [
	^ ASTCLogicalNotOperator new
		operand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> notEquals: anExpression [
	^ ASTCInequalityOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> parent: aParent [
	parent := aParent
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> preIncr [
	^ ASTCPreIncrementOperator new
		operand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> prettyPrint [
	
	^ self prettyPrintUsing: ANSlangPrettyPrinter new
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> prettyPrintUsing: aPrettyPrinter [ 
	self acceptVisitor: aPrettyPrinter.
	^ aPrettyPrinter stream contents
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> printOn: aStream [

	aStream nextPutAll: self astDump stream contents
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> priority [
	^ self class priority
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode class >> priority [
	"Basic lowest priority for classes without any.
	see Operator class >> priority comment"
	^ 16
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> rootNode [
	^ parent ifNil: [ self ] ifNotNil: [ :p | p rootNode ]
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> structStaticAccess: anIdentifier [
	^ ASTCStructAccessStaticOperator new
		leftOperand: self;
		rightOperand: anIdentifier;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> then: aTrueExpression else: aFalseExpression [
	^ ASTCIf new
		condition: self;
		then: aTrueExpression;
		else: aFalseExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> | anExpression [
	^ ASTCBitwiseOrOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> || anExpression [
	^ ASTCOrOperator new
		leftOperand: self;
		rightOperand: anExpression;
		yourself
]
