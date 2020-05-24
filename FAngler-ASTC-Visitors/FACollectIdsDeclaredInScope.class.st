Class {
	#name : #FACollectIdsDeclaredInScope,
	#superclass : #ASTCHierarchyWalkerVisitor,
	#instVars : [
		'declaredIDs',
		'scope',
		'declaredFunctions'
	],
	#category : #'FAngler-ASTC-Visitors-Analysis'
}

{ #category : #'as yet unclassified' }
FACollectIdsDeclaredInScope class >> collectFrom: aScope [
	^ self new collectFrom: aScope
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> collectFrom: aScope [
	scope := aScope.
	aScope acceptVisitor: self.
	^ declaredIDs
]

{ #category : #initialization }
FACollectIdsDeclaredInScope >> initialize [
	declaredIDs := Bag new.
	declaredFunctions := Set new.
]

{ #category : #'public api' }
FACollectIdsDeclaredInScope >> visitIdentifier: anIdentifier [
	declaredIDs add: anIdentifier
]
