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
FACollectIdsDeclaredInScope >> visitExpression: anExpression [
	"Only Identifier (& preprocessor define ?) may have declarations in them. Othe expressions don't.
	Therefore this is inhibiting the visit of subNodes"
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitFunctionDeclaration: aFunctionDeclaration [
	"we only visit the body of the method if it is the current scope"
	declaredFunctionsIDS add: aFunctionDeclaration
	
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitFunctionDefinition: aFunctionDefinition [
	"we only visit the body of the method if it is the current scope"
	aFunctionDefinition = scope
		ifTrue: [ super visitFunctionDefinition: aFunctionDefinition ]
		ifFalse: [ self add: aFunctionDefinition declaration ]
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitStructureDefinition: aStructureDefinition [
	"we only visit the struct if it is the current scope"
	aStructureDefinition = scope
		ifTrue: [ super visitStructureDefinition: aStructureDefinition ]
		ifFalse: [ aStructureDefinition declaration acceptVisitor: self ].
]
