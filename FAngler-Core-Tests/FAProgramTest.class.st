Class {
	#name : #FAProgramTest,
	#superclass : #TestCase,
	#instVars : [
		'dependencyProgram',
		'mainProgram'
	],
	#category : #'FAngler-Core-Tests'
}

{ #category : #support }
FAProgramTest >> aMethod [
]

{ #category : #support }
FAProgramTest >> anotherMethod [
]

{ #category : #running }
FAProgramTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	mainProgram := FAProgram new.
	dependencyProgram := FAProgram new.
	mainProgram addDependency: dependencyProgram.
]

{ #category : #addDependency }
FAProgramTest >> testAddDependencyWithConflict [
	| newDependency |
	mainProgram addMethod: (self class >> #aMethod) ast.
	newDependency := FAProgram new.
	newDependency addMethod: (self class >> #aMethod) ast.
	self should: [ mainProgram addDependency: newDependency ] raise: MethodExistsInDependency.
]

{ #category : #addDependency }
FAProgramTest >> testAddDependencyWithConflictInSubDependency [
	| newDependency subDependency |
	mainProgram addMethod: (self class >> #aMethod) ast.
	newDependency := FAProgram new.
	subDependency := FAProgram new.
	subDependency addMethod: (self class >> #aMethod) ast.

	newDependency addDependency: subDependency.


	self should: [ mainProgram addDependency: newDependency ] raise: MethodExistsInDependency.
	
]

{ #category : #addDependency }
FAProgramTest >> testAddDependencyWithoutConflict [
	| newDependency |
	newDependency := FAProgram new.
	newDependency addMethod: (self class >> #aMethod) ast.
	self shouldnt: [ mainProgram addDependency: newDependency ] raise: MethodExistsInDependency.

]

{ #category : #addDependency }
FAProgramTest >> testAddDependencyWithoutConflict2 [
	| newDependency |
	mainProgram addMethod: (self class >> #aMethod) ast.
	newDependency := FAProgram new.
	newDependency addMethod: (self class >> #anotherMethod) ast.
	self shouldnt: [ mainProgram addDependency: newDependency ] raise: MethodExistsInDependency.
]

{ #category : #addDependency }
FAProgramTest >> testAddEmptyDependency [
	| newDependency |
	newDependency := FAProgram new.
	self shouldnt: [ mainProgram addDependency: newDependency ] raise: MethodExistsInDependency.

]

{ #category : #addMethod }
FAProgramTest >> testAddMethodConflictingMethodWithSubDependency [
	| newDependency subDependency |
	newDependency := FAProgram new.
	subDependency := FAProgram new.
	subDependency addMethod: (self class >> #aMethod) ast.

	newDependency addDependency: subDependency.
	mainProgram addDependency: newDependency.

	self should: [ 	mainProgram addMethod: (self class >> #aMethod) ast ] raise: MethodExistsInDependency.
	
]

{ #category : #addMethod }
FAProgramTest >> testAddMethodTwice [
	self shouldnt: [ mainProgram addMethod: (self class >> #aMethod) ] raise: MethodWasAlreadyAdded.
	self should: [ mainProgram addMethod: (self class >> #aMethod) ] raise: MethodWasAlreadyAdded.


]

{ #category : #addMethod }
FAProgramTest >> testAddMethodWhichIsInDependency [
	self shouldnt: [ dependencyProgram addMethod: (self class >> #aMethod) ] raise: MethodWasAlreadyAdded.
	self should: [ mainProgram addMethod: (self class >> #aMethod) ] raise: MethodExistsInDependency.

]

{ #category : #addMethod }
FAProgramTest >> testAddMethodWithEmptyDependency [
	self shouldnt: [ mainProgram addMethod: (self class >> #aMethod) ] raise: MethodWasAlreadyAdded.
	self assert: mainProgram methods size equals: 1.
	self assert: dependencyProgram methods size equals: 0.
	self assert: mainProgram methods anyOne selector equals: #aMethod.
]

{ #category : #methodSearch }
FAProgramTest >> testSearchForMethodInDependency [
	dependencyProgram addMethod: (self class >> #aMethod).
	self assert: (mainProgram methodNamedAnywhere: #aMethod) isNotNil
]

{ #category : #methodSearch }
FAProgramTest >> testSearchForMethodInMainProg [
	mainProgram addMethod: (self class >> #aMethod).
	self assert: (mainProgram methodNamedAnywhere: #aMethod) isNotNil
]

{ #category : #methodSearch }
FAProgramTest >> testSearchForMethodInSubDependency [
	| subDependency |
	subDependency := FAProgram new.
	subDependency addMethod: (self class >> #aMethod).
	dependencyProgram addDependency: subDependency.
	self assert: (mainProgram methodNamedAnywhere: #aMethod) isNotNil
]

{ #category : #methodSearch }
FAProgramTest >> testSearchForMethodNotExisting [
	self assert: (mainProgram methodNamedAnywhere: #aMethod) isNil
]
