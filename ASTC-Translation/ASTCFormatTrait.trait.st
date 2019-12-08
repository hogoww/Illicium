Trait {
	#name : #ASTCFormatTrait,
	#category : #'ASTC-Translation'
}

{ #category : #formatting }
ASTCFormatTrait >> formatSelector: aSelector [
	^aSelector onlyLetters
]
