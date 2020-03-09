Class {
	#name : #MASlangDeclarationAnnotatorTest,
	#superclass : #FAVariableDeclarationAnnotatorTest,
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #testing }
MASlangDeclarationAnnotatorTest class >> isAbstract [
	^ false
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> aMethodWithCCodeInSmalltalkAndATempInSecondArg [
	self cCode: ''
		inSmalltalk: [ | value | value ]
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> setUp [
	visitor := MASlangDeclarationAnnotator new.
	super setUp.
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testAssignmentInCondition [
	super testAssignmentInCondition.
	
	"Should not be declared in the if condition"
	self assert: (ast body statements at: 1) receiver propertyEquals: false.

	"But in the body of the function"
	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: ast body temporaries asSet
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testAssignmentInDifferentSequence [
	super testAssignmentInDifferentSequence.
	
	"The temporary first used in another sequence than the method's one should nit be declared in it"
	self assert: (((ast body statements at: 1) arguments at: 1) statements at: 1) propertyEquals: false.

	"But in the function"
	self assert: ast body temporaries isNotEmpty.
	self assert: ast body propertyEquals: ast body temporaries asSet
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testMethodWithTwoBlockWithSameVariable [
	"Argument used in 2 different blocks, should be only declared once"
	| defaultCollection |
	super testMethodWithTwoBlockWithSameVariable. 
	defaultCollection := FAVariableDeclarationAnnotator defaultCollection.
	
	"It should not be declared in either blocks"	
	self assert: ast body statements first body propertyEquals: defaultCollection new.
	self assert: ast body statements first arguments isNotEmpty.
	self assert: ast body statements second body propertyEquals: defaultCollection new.
	self assert: ast body statements second arguments isNotEmpty.

	"But declared once in the function"
	self assert: ast body propertyEquals: ast body statements first arguments asSet.
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitArgumentNodeInABlock [
	| defaultCollection |
	super testVisitArgumentNodeInABlock. 
	defaultCollection := FAVariableDeclarationAnnotator defaultCollection.
	
	"The argument should not be declared in its block"	
	self assert: ast body statements first body propertyEquals: defaultCollection new.

	"But at the start of the function"
	self assert: ast body statements first arguments isNotEmpty.
	self assert: ast body propertyEquals: ast body statements first arguments asSet.
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitArgumentNodeToDiscardInABlock [
	| defaultCollection |
	super testVisitArgumentNodeToDiscardInABlock. 
	defaultCollection := FAVariableDeclarationAnnotator defaultCollection.
	
	"The argument should not be declared."	
	self assert: ast body statements first arguments second body propertyEquals: defaultCollection new.

	self assert: ast body statements first arguments isNotEmpty.
	self assert: ast body statements first arguments second body propertyEquals: defaultCollection new.
	self assert: ast body propertyEquals: ast body temporaries asSet.
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitGlobalNode [
	super testVisitGlobalNode.
	
	"Global nodes should not be declared in functions"
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitInstanceVariableNode [
	super testVisitInstanceVariableNode.
	
	"InstanceVariables should not be declared in functions. (plus, they are globals in Slang)"
	self assert: (ast body statements at: 1) propertyEquals: false
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitSmalltalk [
	| defaultCollection |
	defaultCollection := FAVariableDeclarationAnnotator defaultCollection.
	ast := (MASlangDeclarationAnnotatorTest >> #aMethodWithCCodeInSmalltalkAndATempInSecondArg) ast copy.
	ast acceptVisitor: visitor.
	
	self assert: ast body temporaries isEmpty.
	self assert: ast statements first arguments second temporaries isNotEmpty.
	self assert: ast body propertyEquals: defaultCollection new
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitTemporaryNode [
	super testVisitTemporaryNode.
	"Temporaries should not be declared with the assignment"
	self assert: (ast body statements at: 1) propertyEquals: false.
	
	"But at the start of the function"
	self assert: ast body temporaries isNotEmpty.	
	self assert: ast body propertyEquals: ast body temporaries asSet
]

{ #category : #basic }
MASlangDeclarationAnnotatorTest >> testVisitTemporaryNodeInBlock [
	super testVisitTemporaryNodeInBlock. 
	
	"Temp declared in Smalltalk blocks should not be declared in the block"	
	self assert: ast body statements first statements first propertyEquals: false.

	"But should be declared at the start of the function"
	self assert: ast body statements first temporaries isNotEmpty.
	self assert: ast body statements first body propertyEquals: FAVariableDeclarationAnnotator defaultCollection new.
	self assert: ast body propertyEquals: ast body statements first temporaries asSet.
]
