Class {
	#name : #MASlangFoundSameNameTwice,
	#superclass : #Error,
	#instVars : [
		'conflictings'
	],
	#category : #'MAngler-Slang-Error'
}

{ #category : #accessing }
MASlangFoundSameNameTwice >> conflictings [
	^ conflictings
]

{ #category : #accessing }
MASlangFoundSameNameTwice >> conflictings: aCollection [
	^ conflictings := aCollection
]

{ #category : #accessing }
MASlangFoundSameNameTwice >> description [
	^ String streamContents: [ :s |
			s print: conflictings anyOne name;
				<< ' was declared in two different nodes'
		]
]
