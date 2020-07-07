Extension { #name : #String }

{ #category : #'*ASTC-Core-Extensions' }
String >> asCIdentifierNode [
	^ ASTCIdentifier new id: self ; yourself
]

{ #category : #'*ASTC-Core-Extensions' }
String >> asCTypeNode [
	^ (CType createFrom: self) asCTypeNode
]
