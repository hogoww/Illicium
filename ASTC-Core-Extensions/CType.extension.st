Extension { #name : #CType }

{ #category : #'*ASTC-Core-Extensions' }
CType >> asCTypeNode [
	^ ASTCType new type: (SingleType new type: self ; yourself); yourself
]
