Extension { #name : #ASTCLiteral }

{ #category : #'*ASTC-Core-Extensions' }
ASTCLiteral class >> value: aValue [
	
	^ self new
		value: aValue;
		yourself
]
