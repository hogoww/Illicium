Class {
	#name : #ASTCStatementsBecomeExpressionsTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'Angler-VisitorsASTC-PrettyPrint'
}

{ #category : #running }
ASTCStatementsBecomeExpressionsTest >> setUp [
	super setUp.
	visitor := ASTCStatementsBecomeExpressions new
]
