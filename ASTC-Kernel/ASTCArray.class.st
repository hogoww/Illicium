Class {
	#name : #ASTCArray,
	#superclass : #ASTCObject,
	#instVars : [
		'elementType'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #accessing }
ASTCArray >> at: anIndex [
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	 self flag:#todo.
	^ ASTCExpression new
]

{ #category : #accessing }
ASTCArray >> at: anIndex put: aValue [
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	 self flag:#todo.
	^ ASTCExpression new
]

{ #category : #accessing }
ASTCArray >> do: aBlock [ 
	self halt.
	self flag:#todo.
	"(methodTranslator getNodeTranslationType: anIndex = ASTCSmallInteger) ifFalse:[ self error: 'Only SmallInteger should be used as array index for now']."
	^ASTCFor new body: ASTCBlock new.
]
