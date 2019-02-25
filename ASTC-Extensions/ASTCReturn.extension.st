Extension { #name : #ASTCReturn }

{ #category : #'*ASTC-Extensions' }
ASTCReturn >> expression [ 
	"simple Accessor for the expression that will be returned"
	^expressions at: self expressionIndex.
]

{ #category : #'*ASTC-Extensions' }
ASTCReturn >> expression:anExpression [
	"simple Accessor for the expression that will be returned"
	^expressions at: self expressionIndex put:anExpression.
]

{ #category : #'*ASTC-Extensions' }
ASTCReturn >> expressionIndex [
	^1
]

{ #category : #'*ASTC-Extensions' }
ASTCReturn >> initialize: anExpression [
	self expressions:anExpression.
	^self.
]

{ #category : #'*ASTC-Extensions' }
ASTCReturn class >> new [
	"a constructor for a return which returns a value"
	^super new initialize:nil.
]

{ #category : #'*ASTC-Extensions' }
ASTCReturn class >> new:anExpression [
	self flag:'toInvestigate'.
	"a constructor for a return which returns a value"
	^(super new) initialize:anExpression.
]
