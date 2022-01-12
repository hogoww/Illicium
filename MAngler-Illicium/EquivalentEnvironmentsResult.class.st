Class {
	#name : #EquivalentEnvironmentsResult,
	#superclass : #CDifferentialTestResult,
	#category : #'MAngler-Illicium-Results'
}

{ #category : #testing }
EquivalentEnvironmentsResult class >> canHandle: aPharoResult and: aCResult [
	^ (aPharoResult hasPassed and: [ aCResult isPass ]) 
		or: [ aPharoResult hasFailuresOrErrors and: aCResult isPass not ]
]

{ #category : #testing }
EquivalentEnvironmentsResult >> isEquivalent [ 
	^ true
]
