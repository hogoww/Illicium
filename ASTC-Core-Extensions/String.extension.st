Extension { #name : #String }

{ #category : #'*ASTC-Core-Extensions' }
String >> asCTypeNode [
	^ ASTCType new 
		type: (SingleType new type: (CType createFrom: self) )
]
