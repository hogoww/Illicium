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
			aBlock becomeStatementList.
			^ aBlock acceptVisitor: self
		].
	super visitIf: aBlock
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
	super visitIf: anIf
]

{ #category : #visiting }
ASTCStatementsBecomeExpressions >> visitReturn: aReturn [ 
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitReturn: aReturn.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	
]
