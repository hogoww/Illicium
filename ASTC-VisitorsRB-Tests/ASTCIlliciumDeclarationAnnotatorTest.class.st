Class {
	#name : #ASTCIlliciumDeclarationAnnotatorTest,
	#superclass : #ASTCDeclarationAnnotatorTest,
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
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
]

{ #category : #basic }
ASTCIlliciumDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [ 
	super testAssignmentInDifferentSequence.
	
	self assert: (((ast body statements at: 1) arguments at: 1) statements at: 1) 	propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
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
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: false
		].
]
