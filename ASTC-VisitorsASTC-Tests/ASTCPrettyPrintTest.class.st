Class {
	#name : #ASTCPrettyPrintTest,
	#superclass : #TestCase,
	#category : #'ASTC-VisitorsASTC-Tests-Validation'
}

{ #category : #tests }
ASTCPrettyPrintTest >> testVisitEqualityOperator [
	| operator |
	self flag:#shouldFail. "temporary, should be adjusted after work on operator priorities"
	"should equal 'a == b'"
	operator := (ASTCIdentifier new id: #a) equals: (ASTCIdentifier new id: #b).
	
	self assert: operator isEqualityOperator.
	self assert: operator prettyPrint equals: 'a == b'.
]
