Class {
	#name : #ASTCPreProcessorDefine,
	#superclass : #ASTCNode,
	#instVars : [
		'name',
		'value'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCPreProcessorDefine >> = aPreProcessorDefine [
	super = aPreProcessorDefine
		ifFalse: [ ^ false ].
	name = aPreProcessorDefine name
		ifFalse: [ ^ false ].
	value = aPreProcessorDefine value
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCPreProcessorDefine >> acceptVisitor: aVisitor [
	aVisitor visitPreProcessorDefine: self
]

{ #category : #testing }
ASTCPreProcessorDefine >> isPreProcessorDefine [
	^ true
]

{ #category : #accessing }
ASTCPreProcessorDefine >> name [
	^ name
]

{ #category : #accessing }
ASTCPreProcessorDefine >> name: aName [
	aName ifNotNil: [ aName parent: self ].
	name := aName
]

{ #category : #accessing }
ASTCPreProcessorDefine >> value [
	^ value
]

{ #category : #accessing }
ASTCPreProcessorDefine >> value: aValue [
	aValue ifNotNil: [ aValue parent: self ].
	value := aValue
]
