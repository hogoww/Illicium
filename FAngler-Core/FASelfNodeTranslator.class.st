Class {
	#name : #FASelfNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FASelfNodeTranslator >> translateNode: aNode [ 
	^ aNode parent isReturn 
		ifTrue:[ nil ] " we just return; for now "
		ifFalse:[ ASTCEmptyStatement new ]
	
"	self error: 'self nodes should not be visited'"
]
