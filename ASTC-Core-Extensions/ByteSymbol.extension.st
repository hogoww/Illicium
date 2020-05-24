Extension { #name : #ByteSymbol }

{ #category : #'*ASTC-Core-Extensions' }
ByteSymbol >> asCIdentifierNode [
	^ ASTCIdentifier new id: self ; yourself
]
