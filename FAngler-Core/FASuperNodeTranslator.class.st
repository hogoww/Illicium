Class {
	#name : #FASuperNodeTranslator,
	#superclass : #FAAbstractNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FASuperNodeTranslator >> translateNode: aNode [
	"Currently, supers are inlined by default. Therefore this should never happen on VM translation."
	^ UnsupportedFeature new feature: 'super is not supported to be translated'; signal.
]
