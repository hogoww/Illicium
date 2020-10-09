Class {
	#name : #IlliciumProgramTest,
	#superclass : #TestCase,
	#instVars : [
		'program'
	],
	#category : #'MAngler-Illicium-Tests-TranslatorTest'
}

{ #category : #tests }
IlliciumProgramTest >> setUp [
	"we only need a reference to the method translator"
	program := FAProgram new.
]

{ #category : #tests }
IlliciumProgramTest >> testAddRegularClass [
	program addClass: RegularClass1.
	self assert: (program methods includesAll: 
		(RegularClass1 methodDict asDictionary collect: [:aCompiledMethod| aCompiledMethod ast]))
]

{ #category : #tests }
IlliciumProgramTest >> testAddSameMethodTwiceShouldFail [
	| method |
	method := (RegularClass1 >> #aMethod) ast.
	
	program addMethod: method.
	self should: [ program addMethod: method ] raise: MethodWasAlreadyAdded.

]
