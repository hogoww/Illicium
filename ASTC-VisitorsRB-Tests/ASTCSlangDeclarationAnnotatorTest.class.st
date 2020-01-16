Class {
	#name : #ASTCSlangDeclarationAnnotatorTest,
	#superclass : #ASTCVariableDeclarationAnnotatorTest,
	#category : #'ASTC-VisitorsRB-Tests'
}

{ #category : #testing }
ASTCSlangDeclarationAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> setUp [
	super setUp.
	visitor := ASTCSlangDeclarationAnnotator new.
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testAssignmentInCondition [
	super testAssignmentInCondition.
	
	self assert: (ast body statements at: 1) receiver propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: (ast body temporaries collect:#name) asSet
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	super testAssignmentInDifferentSequence.

	self assert: (((ast body statements at: 1) arguments at: 1) statements at: 1) propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: (ast body temporaries collect:#name) asSet
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testVisitGlobalNode [
	super testVisitGlobalNode.
	
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	super testVisitInstanceVariableNode.
	
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testVisitTemporaryNode [
	super testVisitTemporaryNode.
	
	self assert: (ast body statements at: 1) propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.	
	self assert: ast body propertyEquals: (ast body temporaries collect:#name) asSet
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	"same as the illicium one, should have the same result"
	super testVisitTemporaryNodeInBlock. 
	
	"the assignment should become a C declaration"	
	self assert: ast body statements first statements first propertyEquals: false.

	"and therefore shouldn't be declared at the start"
	self assert: ast body statements first temporaries isNotEmpty.
	self assert: ast body statements first body propertyEquals: Set new.
	self assert: ast body propertyEquals: (ast body statements first temporaries collect: #name) asSet.
]
