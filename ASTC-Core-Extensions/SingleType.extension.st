Extension { #name : #SingleType }

{ #category : #'*ASTC-Core-Extensions' }
SingleType >> asCTypeNode [
	^ ASTCType new type: self ; yourself
]
