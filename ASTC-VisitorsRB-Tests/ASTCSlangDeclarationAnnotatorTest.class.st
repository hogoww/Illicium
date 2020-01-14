Class {
	#name : #ASTCSlangDeclarationAnnotatorTest,
	#superclass : #ASTCDeclarationAnnotatorTest,
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
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
]

{ #category : #basic }
ASTCSlangDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	super testAssignmentInDifferentSequence.

	self assert: (((ast body statements at: 1) arguments at: 1) statements at: 1) propertyEquals: false.

	self assert: ast body temporaries isNotEmpty.
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
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
	ast body temporaries do:[ :aTempDecl|
		self assert: aTempDecl propertyEquals: true
		].
]
