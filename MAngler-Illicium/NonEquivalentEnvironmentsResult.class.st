Class {
	#name : #NonEquivalentEnvironmentsResult,
	#superclass : #CDifferentialTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
NonEquivalentEnvironmentsResult class >> canHandle: aPharoResult and: aCResult [
	^ (aPharoResult hasPassed and: [ aCResult isPass not ])
		or: [ aPharoResult hasFailuresOrErrors and: [ aCResult isPass ] ]
]

{ #category : #testing }
NonEquivalentEnvironmentsResult >> isNonEquivalent [
	^ true
]

{ #category : #testing }
NonEquivalentEnvironmentsResult >> passedOnlyInC [
	^ pharoTestResult hasFailuresOrErrors and: cTestResult isPass
]

{ #category : #testing }
NonEquivalentEnvironmentsResult >> passedOnlyInSimulation [
	^  pharoTestResult hasPassed and: cTestResult isPass not
]

{ #category : #testing }
NonEquivalentEnvironmentsResult >> passesOnlyInOneEnvironemnet [
	^ self passedOnlyInSimulation or: [ self passedOnlyInC  ]
]
