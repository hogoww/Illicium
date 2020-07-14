Extension { #name : #SingleType }

{ #category : #'*FAngler-Core' }
SingleType >> asCTypeNode [
	^ ASTCType new type: self ; yourself
]
