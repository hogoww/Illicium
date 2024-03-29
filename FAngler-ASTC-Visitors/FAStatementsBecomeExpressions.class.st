Class {
	#name : #FAStatementsBecomeExpressions,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#instVars : [
		'subTreeShouldBeAllExpressions'
	],
	#category : #'FAngler-ASTC-Visitors-Modification'
}

{ #category : #initialization }
FAStatementsBecomeExpressions >> initialize [
	subTreeShouldBeAllExpressions := 0
]

{ #category : #testing }
FAStatementsBecomeExpressions >> shouldBeExpression [
	^ subTreeShouldBeAllExpressions > 0
]

{ #category : #visiting }
FAStatementsBecomeExpressions >> visitAssignmentOperator: anAssignmentOperator [ 
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitAssignmentOperator: anAssignmentOperator.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]

{ #category : #'visiting-modifying' }
FAStatementsBecomeExpressions >> visitBlock: aBlock [
	self flag: #badFix. "empty block seem to happen when I use the aggressive cleanerm which remove assertions."
	self shouldBeExpression ifFalse: [ ^ super visitBlock: aBlock ].
	
	aBlock statements size = 0 ifTrue: [ aBlock becomeExpressionList "we become an empty expression list. Not sure that's okay" ]
		ifFalse:[
			aBlock statements size = 1 ifTrue: [ 
					aBlock declarations isEmpty ifFalse: [ self halt "I want to see the useCase" ].
					aBlock becomeSingleStatement.
				]
				ifFalse:[ aBlock becomeExpressionList ].
			].
	aBlock acceptVisitor: self
	
]

{ #category : #'visiting-modifying' }
FAStatementsBecomeExpressions >> visitExpressionStatement: anExpressionStatement [
	self shouldBeExpression ifFalse: [ ^ super visitExpressionStatement: anExpressionStatement ].
	
	anExpressionStatement becomeExpression.
	anExpressionStatement acceptVisitor: self
	
]

{ #category : #visiting }
FAStatementsBecomeExpressions >> visitFunctionCall: aFunctionCall [
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitFunctionCall: aFunctionCall.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]

{ #category : #'visiting-modifying' }
FAStatementsBecomeExpressions >> visitIf: anIf [
	self shouldBeExpression ifTrue: [
			"it's becomming a ternary operator, it therefore require an Then & an Else.
			Slang adds a 0 when there is not then."
			anIf else ifNil: [ anIf else: (ASTCLiteral value: 0) ].
			anIf becomeTernaryConditionalOperator.
			^ anIf acceptVisitor: self
		].
	
	"if is kind of a particular case, because statements inside the condition should be expressions too. 
	We therefore inline the visit code."
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	anIf condition acceptVisitor: self.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ].
	
	self visitStatement: anIf
]

{ #category : #visiting }
FAStatementsBecomeExpressions >> visitOperator: anOperator [
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.

	anOperator isUnaryOperator
		ifTrue: [ anOperator operand acceptVisitor: self ]
		ifFalse: [ 
			anOperator isBinaryOperator
				ifTrue: [ 
					anOperator rightOperand acceptVisitor: self.
					anOperator leftOperand acceptVisitor: self ]
				ifFalse: [ anOperator condition acceptVisitor: self ] ].

	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.

	anOperator isTernaryConditionalOperator ifFalse: [ ^ self ].
	anOperator then ifNotNil: [ anOperator then acceptVisitor: self ].
	anOperator else ifNotNil: [ anOperator else acceptVisitor: self ].
]

{ #category : #visiting }
FAStatementsBecomeExpressions >> visitReturn: aReturn [ 
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitReturn: aReturn.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]

{ #category : #visiting }
FAStatementsBecomeExpressions >> visitSwitchCase: aSwitchCase [
	"particular case, only the expression should be an esxpression :')"
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.	
	aSwitchCase expression acceptVisitor: self .
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.

	aSwitchCase body acceptVisitor: self.
]
