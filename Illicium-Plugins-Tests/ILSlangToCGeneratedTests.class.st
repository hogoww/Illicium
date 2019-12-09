Class {
	#name : #ILSlangToCGeneratedTests,
	#superclass : #ParametrizedTestCase,
	#instVars : [
		'translator',
		'testedClass'
	],
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #accessing }
ILSlangToCGeneratedTests >> testMethod: aSelector [
	| cu |
	cu := translator translateMethod: aSelector fromClass: testedClass.
	^ cu
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> testedClass [
	^ testedClass
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> testedClass: aClass [
	testedClass := aClass
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> translator [
	^ translator
]

{ #category : #accessing }
ILSlangToCGeneratedTests >> translator: anObject [
	translator := anObject
]
