Class {
	#name : #ANSlangDeclarationAnnotatorTest,
	#superclass : #ASTCVariableDeclarationAnnotatorTest,
	#category : #'Angler-Slang'
}

{ #category : #testing }
ANSlangDeclarationAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> setUp [
	super setUp.
	visitor := ANSlangDeclarationAnnotator new.
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testAssignmentInCondition [
	super testAssignmentInCondition.
	
	"Should not be declared in the if condition"
	self assert: (ast body statements at: 1) receiver propertyEquals: false.

	"But in the body of the function"
	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: ast body temporaries
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	super testAssignmentInDifferentSequence.
	
	"The temporary first used in another sequence than the method's one should nit be declared in it"
	self assert: (((ast body statements at: 1) arguments at: 1) statements at: 1) propertyEquals: false.

	"But in the function"
	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: ast body temporaries
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testMethodWithTwoBlockWithSameVariable [
	"Argument used in 2 different blocks, should be only declared once"
	super testMethodWithTwoBlockWithSameVariable. 
	
	"It should not be declared in either blocks"	
	self assert: ast body statements first body propertyEquals: OrderedCollection new.
	self assert: ast body statements first arguments isNotEmpty.
	self assert: ast body statements second body propertyEquals: OrderedCollection new.
	self assert: ast body statements second arguments isNotEmpty.

	"But declared once in the function"
	self assert: ast body propertyEquals: ast body statements first arguments.
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testVisitArgumentNodeInABlock [
	super testVisitArgumentNodeInABlock. 
	
	"The argument should not be declared in its block"	
	self assert: ast body statements first body propertyEquals: OrderedCollection new.

	"But at the start of the function"
	self assert: ast body statements first arguments isNotEmpty.
	self assert: ast body propertyEquals: ast body statements first arguments.
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testVisitArgumentNodeToDiscardInABlock [
	super testVisitArgumentNodeToDiscardInABlock. 
	
	"The argument should not be declared."	
	self assert: ast body statements first arguments second body propertyEquals: OrderedCollection new.

	self assert: ast body statements first arguments isNotEmpty.
	self assert: ast body statements first arguments second body propertyEquals: OrderedCollection new.
	self assert: ast body propertyEquals: ast body temporaries.
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testVisitGlobalNode [
	super testVisitGlobalNode.
	
	"Global nodes should not be declared in functions"
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	super testVisitInstanceVariableNode.
	
	"InstanceVariables should not be declared in functions. (plus, they are globals in Slang)"
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testVisitTemporaryNode [
	super testVisitTemporaryNode.
	"Temporaries should not be declared with the assignment"
	self assert: (ast body statements at: 1) propertyEquals: false.
	
	"But at the start of the function"
	self assert: ast body temporaries isNotEmpty.	
	self assert: ast body propertyEquals: ast body temporaries
]

{ #category : #basic }
ANSlangDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	super testVisitTemporaryNodeInBlock. 
	
	"Temp declared in Smalltalk blocks should not be declared in the block"	
	self assert: ast body statements first statements first propertyEquals: false.

	"But should be declared at the start of the function"
	self assert: ast body statements first temporaries isNotEmpty.
	self assert: ast body statements first body propertyEquals: OrderedCollection new.
	self assert: ast body propertyEquals: ast body statements first temporaries.
]