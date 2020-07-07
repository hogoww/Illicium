Class {
	#name : #IlliciumDeclarationAnnotatorTest,
	#superclass : #FAVariableDeclarationAnnotatorTest,
	#category : #'MAngler-Illicium-Tests-AnalysisTests'
}

{ #category : #testing }
IlliciumDeclarationAnnotatorTest class >> isAbstract [ 
	^ false
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> setUp [
	visitor := IlliciumDeclarationAnnotator new.
	super setUp.
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testAssignmentInCondition [
	super testAssignmentInCondition.
	
	self assert: (ast body statements at: 1) receiver propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: ast body temporaries
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [ 
	super testAssignmentInDifferentSequence.
	
	self assert: ast body statements first arguments first statements first propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: ast body temporaries
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testVisitArgumentNodeInABlock [
	"not sure how I want it to be for Illicium"
	<expectedFailure>
	self assert: false.
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testVisitGlobalNode [
	super testVisitGlobalNode.
	
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	super testVisitInstanceVariableNode.
	
	"An instance variable should not be declared in a function"
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testVisitTemporaryNode [
	super testVisitTemporaryNode.
	
	"the assignment should become a C declaration"	
	self assert: (ast body statements at: 1) propertyEquals: true.

	"and therefore shouldn't be declared at the start"
	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: OrderedCollection new
]

{ #category : #basic }
IlliciumDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	super testVisitTemporaryNodeInBlock. 
	
	"the assignment should become a C declaration"	
	self assert: ast body statements first statements first propertyEquals: false.

	"and therefore shouldn't be declared at the start"
	self assert: ast body statements first temporaries isNotEmpty.
	"Sometimes the temporaries are in an array, sometime in an OrderedCollection"
	self assert: ast body propertyEquals: #().
	self assert: ast body statements first body 
		propertyEquals: ast body statements first temporaries.
]
