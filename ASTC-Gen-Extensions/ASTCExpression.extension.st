Extension { #name : #ASTCExpression }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> % anExpression [
	^ ASTCModuloOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> && anExpression [
	^ ASTCAndOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> * anExpression [
	^ ASTCMultiplicationOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> + anExpression [
	^ ASTCAdditionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> - anExpression [
	^ ASTCSubtractionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> -> anExpression [
	^ ASTCStructAccessPointerOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> / anExpression [
	^ ASTCDivisionOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> < anExpression [
	^ ASTCLesserOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> <= anExpression [
	^ ASTCLesserOrEqualOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> > anExpression [
	^ ASTCGreaterOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> >= anExpression [
	^ ASTCGreaterOrEqualOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> asStatement [

	^ ASTCExpressionStatement expression: self
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> bitAnd: anExpression [
	^ ASTCBitwiseAndOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> castTo: aType [
	self assert: aType isType.
	^ ASTCCastOperator new
		type: aType;
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> equals: anExpression [
	^ ASTCEqualityOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> indexAt: anExpression [
	^ ASTCIndexerOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> not [
	^ ASTCLogicalNotOperator new
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> notEquals: anExpression [
	^ ASTCInequalityOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> preIncr [
	^ ASTCPreIncrementOperator new
		addOperand: self;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> structStaticAccess: anIdentifier [
	^ ASTCStructAccessStaticOperator new
		addOperand: self;
		addOperand: anIdentifier;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> then: aTrueExpression else: aFalseExpression [
	^ ASTCTernaryConditionalOperator new
		addOperand: self;
		addOperand: aTrueExpression;
		addOperand: aFalseExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCExpression >> || anExpression [
	^ ASTCOrOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]
