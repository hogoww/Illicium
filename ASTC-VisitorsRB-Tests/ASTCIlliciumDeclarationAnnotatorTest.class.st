Class {
	#name : #ASTCIlliciumDeclarationAnnotatorTest,
	#superclass : #ASTCVariableDeclarationAnnotatorTest,
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #testing }
ASTCIlliciumDeclarationAnnotatorTest class >> isAbstract [ 
	^ false
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> setUp [
	super setUp.
	visitor := ASTCIlliciumDeclarationAnnotator new.
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testAssignmentInCondition [
	super testAssignmentInCondition.
	
	self assert: (ast body statements at: 1) receiver propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: (ast body temporaries) asSet
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [ 
	super testAssignmentInDifferentSequence.
	
	self assert: ast body statements first arguments first statements first propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: (ast body temporaries) asSet
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testVisitGlobalNode [
	super testVisitGlobalNode.
	
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	super testVisitInstanceVariableNode.
	
	"An instance variable should not be declared in a function"
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testVisitTemporaryNode [
	super testVisitTemporaryNode.
	
	"the assignment should become a C declaration"	
	self assert: (ast body statements at: 1) propertyEquals: true.

	"and therefore shouldn't be declared at the start"
	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: Set new
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	super testVisitTemporaryNodeInBlock. 
	
	"the assignment should become a C declaration"	
	self assert: ast body statements first statements first propertyEquals: false.

	"and therefore shouldn't be declared at the start"
	self assert: ast body statements first temporaries isNotEmpty.
	self assert: ast body propertyEquals: Set new.
	self assert: ast body statements first body 
		propertyEquals: (ast body statements first temporaries) asSet.
]
