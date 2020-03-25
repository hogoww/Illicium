Class {
	#name : #FAArrayNodeTranslator,
	#superclass : #FAAbstarctNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAArrayNodeTranslator >> translateNode: aRBArrayNode [ 
	self flag: #todo.
	^ ASTCLiteral new value:'' ; yourself
]
