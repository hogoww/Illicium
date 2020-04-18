Class {
	#name : #ASTCPreprocessorDefine,
	#superclass : #ASTCNode,
	#instVars : [
		'name',
		'value'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCPreprocessorDefine >> = aPreprocessorDefine [
	super = aPreprocessorDefine
		ifFalse: [ ^ false ].
	name = aPreprocessorDefine name
		ifFalse: [ ^ false ].
	value = aPreprocessorDefine value
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCPreprocessorDefine >> acceptVisitor: aVisitor [
	^ aVisitor visitPreprocessorDefine: self
]

{ #category : #testing }
ASTCPreprocessorDefine >> isPreprocessorDefine [
	^ true
]

{ #category : #accessing }
ASTCPreprocessorDefine >> name [
	^ name
]

{ #category : #accessing }
ASTCPreprocessorDefine >> name: aName [
	aName ifNotNil: [ aName parent: self ].
	name := aName
]

{ #category : #accessing }
ASTCPreprocessorDefine >> value [
	^ value
]

{ #category : #accessing }
ASTCPreprocessorDefine >> value: aValue [
	aValue ifNotNil: [ aValue parent: self ].
	value := aValue
]
