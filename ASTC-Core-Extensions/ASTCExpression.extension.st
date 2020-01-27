Extension { #name : #ASTCExpression }

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> % anExpression [
	^ ASTCModuloOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> & anExpression [
	^ ASTCBitwiseAndOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> && anExpression [
	^ ASTCAndOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> * anExpression [
	^ ASTCMultiplicationOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> + anExpression [
	^ ASTCAdditionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> - anExpression [
	^ ASTCSubtractionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> -> anExpression [
	^ ASTCStructAccessPointerOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> / anExpression [
	^ ASTCDivisionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> < anExpression [
	^ ASTCLesserOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> << anExpression [
	^ ASTCBitLeftShiftOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> <= anExpression [
	^ ASTCLesserOrEqualOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> > anExpression [
	^ ASTCGreaterOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> >= anExpression [
	^ ASTCGreaterOrEqualOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> >> anExpression [
	^ ASTCBitRightShiftOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> asAddressOf [
	^ ASTCAddressOfOperator new
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> asStatement [

	^ ASTCExpressionStatement expression: self
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> assignAndAdd: anExpression [
	^ ASTCAssignementAdditionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself 
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> bitXor: anExpression [
	^ ASTCBitwiseXorOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> castTo: aType [
	self assert: aType isType.
	^ ASTCCastOperator new
		type: aType;
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> equals: anExpression [
	^ ASTCEqualityOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> indexAt: anExpression [
	^ ASTCIndexerOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> not [
	^ ASTCLogicalNotOperator new
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> notEquals: anExpression [
	^ ASTCInequalityOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> preIncr [
	^ ASTCPreIncrementOperator new
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> structStaticAccess: anIdentifier [
	^ ASTCStructAccessStaticOperator new
		addOperand: self;
		addOperand: anIdentifier;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> then: aTrueExpression else: aFalseExpression [
	^ ASTCTernaryConditionalOperator new
		addOperand: self;
		addOperand: aTrueExpression;
		addOperand: aFalseExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> | anExpression [
	^ ASTCBitwiseOrOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCExpression >> || anExpression [
	^ ASTCOrOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]
