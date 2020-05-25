Class {
	#name : #FACollectIdsDeclaredInScope,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#instVars : [
		'declaredIDs',
		'scope',
		'declaredFunctionsIDS'
	],
	#category : #'FAngler-ASTC-Visitors-Analysis'
}

{ #category : #'as yet unclassified' }
FACollectIdsDeclaredInScope class >> collectFrom: aScope [
	^ self new collectFrom: aScope
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> add: aDeclaration [
	(declaredIDs at: aDeclaration id id ifAbsentPut: [ OrderedCollection new])
		add: aDeclaration.
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> collectFrom: aScope [
	scope := aScope.
	aScope acceptVisitor: self.
	declaredFunctionsIDS do: [ :aFuncDecl |
		declaredIDs at: aFuncDecl id id ifAbsentPut: (OrderedCollection with: aFuncDecl) 
		].
	^ declaredIDs
]

{ #category : #initialization }
FACollectIdsDeclaredInScope >> initialize [
	declaredIDs := Dictionary new.
	declaredFunctionsIDS := Set new.
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitDeclaration: aDeclaration [
	"if we visit the declaration, that means that we did not get through a definitions, therefore this was a direct declaration"
	self add: aDeclaration
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitDefinition: aDefinition [
	"we only visit the body/argument of the method if it is the current scope"
	aDefinition = scope
		ifTrue: [ super visitDefinition: aDefinition ]
		ifFalse: [ self add: aDefinition declaration ]
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitFunctionDeclaration: aFunctionDeclaration [
	"we treat function declarations differntly as they might declare a method that is also defined"
	declaredFunctionsIDS add: aFunctionDeclaration
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitFunctionDefinition: aFunctionDefinition [
	^ self visitDefinition: aFunctionDefinition
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitStructureDeclaration: aStructureDeclaration [
	^ self visitDeclaration: aStructureDeclaration
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitStructureDefinition: aStructureDefinition [
	^ self visitDefinition: aStructureDefinition
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitDeclaration: aVariableDeclaration
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitVariableDefinition: aVariableDefinition [
	^ self visitDefinition: aVariableDefinition
]
