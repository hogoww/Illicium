Class {
	#name : #ASTCStatementsBecomeExpressions,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#instVars : [
		'subTreeShouldBeAllExpressions'
	],
	#category : #'Angler-VisitorsASTC-PrettyPrint'
}

{ #category : #initialization }
ASTCStatementsBecomeExpressions >> initialize [
	subTreeShouldBeAllExpressions := 0
]

{ #category : #testing }
ASTCStatementsBecomeExpressions >> shouldBeExpression [
	^ subTreeShouldBeAllExpressions > 0
]

{ #category : #visiting }
ASTCStatementsBecomeExpressions >> visitAssignmentOperator: anAssignmentOperator [ 
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitAssignmentOperator: anAssignmentOperator.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]

{ #category : #'visiting-modifying' }
ASTCStatementsBecomeExpressions >> visitBlock: aBlock [
	self shouldBeExpression ifTrue: [
			aBlock statements size = 0 ifTrue: [ self halt "I want to see the useCase" ].
			aBlock statements size = 1 ifTrue: [ 
				aBlock declarations isEmpty ifFalse: [ self halt "I want to see the useCase" ].
				aBlock becomeSingleStatement.
				]
				ifFalse:[ aBlock becomeExpressionList ].
			
			^ aBlock acceptVisitor: self
		].
	super visitBlock: aBlock
]

{ #category : #'visiting-modifying' }
ASTCStatementsBecomeExpressions >> visitExpressionStatement: anExpressionStatement [
	self shouldBeExpression ifTrue: [ 
			anExpressionStatement becomeExpression.
			^ anExpressionStatement acceptVisitor: self
		].
	super visitExpressionStatement: anExpressionStatement
]

{ #category : #visiting }
ASTCStatementsBecomeExpressions >> visitFunctionCall: aFunctionCall [
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitFunctionCall: aFunctionCall.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]

{ #category : #'visiting-modifying' }
ASTCStatementsBecomeExpressions >> visitIf: anIf [
	self shouldBeExpression ifTrue: [ 
			anIf becomeTernaryConditionalOperator.
			^ anIf acceptVisitor: self
		].
	
	"if is kind of a particular case, because statements inside the condition should be expressions too. 
	We therefore inline the visit code."
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	anIf condition ifNotNil: [ :aCondition | aCondition acceptVisitor: self ].
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
	anIf then ifNotNil: [ :aThen | aThen acceptVisitor: self ].
	anIf else ifNotNil: [ :anElse | anElse acceptVisitor: self ].
	
	self visitStatement: anIf
]

{ #category : #visiting }
ASTCStatementsBecomeExpressions >> visitOperator: anOperator [
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitOperator: anOperator.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]

{ #category : #visiting }
ASTCStatementsBecomeExpressions >> visitReturn: aReturn [ 
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitReturn: aReturn.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]
