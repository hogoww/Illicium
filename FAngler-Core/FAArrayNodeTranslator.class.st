Class {
	#name : #FAArrayNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAArrayNodeTranslator >> translateNode: aRBArrayNode [ 
	self flag: #todo.
	^ ASTCLiteral new value:'' ; yourself
]
