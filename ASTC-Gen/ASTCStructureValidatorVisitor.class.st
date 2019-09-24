Class {
	#name : #ASTCStructureValidatorVisitor,
	#superclass : #ASTCDebugStructureVisitor,
	#instVars : [
		'errors'
	],
	#category : #'ASTC-Gen-visitor'
}

{ #category : #accessing }
ASTCStructureValidatorVisitor >> errors [
	^errors
]

{ #category : #initialization }
ASTCStructureValidatorVisitor >> initialize [
	errors:=0.
]

{ #category : #testing }
ASTCStructureValidatorVisitor >> isValidAst [
	^errors=0
]
