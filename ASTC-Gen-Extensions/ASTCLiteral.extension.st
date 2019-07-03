Extension { #name : #ASTCLiteral }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCLiteral class >> value: aValue [
	
	^ self new
		value: aValue;
		yourself
]
