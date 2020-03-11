Class {
	#name : #MAASuperClass,
	#superclass : #MAASuperSuperClass,
	#category : #'MAngler-Slang-Tests-AnalysisSupport'
}

{ #category : #support }
MAASuperClass >> aMethodUsingSuper [
	1 even
]

{ #category : #support }
MAASuperClass >> aMethodUsingSuperTwice [
	super aMethodUsingSuperTwice
]
