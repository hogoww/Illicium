Class {
	#name : #ASTCPreprocessorInclude,
	#superclass : #ASTCNode,
	#instVars : [
		'name'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCPreprocessorInclude >> = aPreprocessorInclude [
	super = aPreprocessorInclude
		ifFalse: [ ^ false ].
	name = aPreprocessorInclude name
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCPreprocessorInclude >> acceptVisitor: aVisitor [
	^ aVisitor visitPreprocessorInclude: self
]

{ #category : #testing }
ASTCPreprocessorInclude >> isPreprocessorInclude [
	^ true
]

{ #category : #accessing }
ASTCPreprocessorInclude >> name [
	^ name
]

{ #category : #accessing }
ASTCPreprocessorInclude >> name: aName [
	name := aName
]
