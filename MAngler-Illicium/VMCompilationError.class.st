Class {
	#name : #VMCompilationError,
	#superclass : #Error,
	#instVars : [
		'description'
	],
	#category : #'MAngler-Illicium-Results'
}

{ #category : #accessing }
VMCompilationError >> description [

	^ description
]

{ #category : #accessing }
VMCompilationError >> description: anObject [

	description := anObject
]
