Trait {
	#name : #ASTCFormatTrait,
	#category : #'ASTC-Translating'
}

{ #category : #formatting }
ASTCFormatTrait >> formatSelector: aSelector [
	| functionName | 
	functionName:=aSelector asString.
	1 to:functionName size do:[:index | 
		(functionName at: index)=$: 
		ifTrue:[ functionName at:index put: $ ]
		].
	functionName:=functionName asCamelCase.
	^functionName uncapitalized.
]
