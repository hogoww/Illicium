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
	^ anAssignmentOperator
]

{ #category : #'visiting-modifying' }
ASTCStatementsBecomeExpressions >> visitBlock: aBlock [
	self shouldBeExpression ifTrue: [
			aBlock becomeExpressionList.
			aBlock parent isAssignmentOperator ifTrue:[ | assignment returnedExpression |
				self halt.
				assignment := aBlock parent.
				aBlock parent: assignment parent.
				returnedExpression := aBlock expressions removeLast.
				assignment operands at: 2 put: returnedExpression.
				returnedExpression parent: assignment.
				aBlock expressions add: assignment.
				].
			^ aBlock acceptVisitor: self
		].
	^ super visitBlock: aBlock
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
	^ aFunctionCall
]

{ #category : #'visiting-modifying' }
ASTCStatementsBecomeExpressions >> visitIf: anIf [
	self shouldBeExpression ifTrue: [ 
			anIf becomeTernaryConditionalOperator.
			^ anIf acceptVisitor: self
		].
	^ super visitIf: anIf
]

{ #category : #visiting }
ASTCStatementsBecomeExpressions >> visitReturn: aReturn [ 
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions + 1.
	super visitReturn: aReturn.
	subTreeShouldBeAllExpressions := subTreeShouldBeAllExpressions - 1.
	^ aReturn
]
