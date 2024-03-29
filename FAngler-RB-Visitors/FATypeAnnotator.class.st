"
I am an abstract class to implement types annotator for RB ASTs.
Subclasses only need to implement how to type a node.
"
Class {
	#name : #FATypeAnnotator,
	#superclass : #FAAbstractCheckVisitor,
	#instVars : [
		'inferer'
	],
	#category : #'FAngler-RB-Visitors-Typing'
}

{ #category : #accessing }
FATypeAnnotator class >> propertyName [
	"should return a symbol with the name of the property"
	^#type
]

{ #category : #accessing }
FATypeAnnotator >> inferer [
	^ inferer
	
]

{ #category : #accessing }
FATypeAnnotator >> inferer: aTypeInferer [
	inferer := aTypeInferer.
	
]

{ #category : #visiting }
FATypeAnnotator >> typeThatNode: aNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
FATypeAnnotator >> visitArgumentNode: anArgumentNode [
	super visitArgumentNode: anArgumentNode.
	self typeThatNode: anArgumentNode.
	^ anArgumentNode
]

{ #category : #visiting }
FATypeAnnotator >> visitAssignmentNode: anAssignementNode [
	super visitAssignmentNode: anAssignementNode.
	self typeThatNode: anAssignementNode.
	^ anAssignementNode
]

{ #category : #visiting }
FATypeAnnotator >> visitBlockNode: aBlockNode [
	super visitBlockNode: aBlockNode.
	self typeThatNode: aBlockNode.
	^ aBlockNode
]

{ #category : #visiting }
FATypeAnnotator >> visitCascadeNode: aMessageNode [
	"the type of a cascade node is the type of the last message, i guess."
	super visitCascadeNode: aMessageNode.
	self atNewPropertyPut: (aMessageNode messages last propertyAt: self class propertyName) for: aMessageNode.

]

{ #category : #visiting }
FATypeAnnotator >> visitGlobalNode: aGlobalNode [
	super visitGlobalNode: aGlobalNode.
	self typeThatNode: aGlobalNode.
	^ aGlobalNode
]

{ #category : #visiting }
FATypeAnnotator >> visitInstanceVariableNode: anInstanceVariableNode [
	super visitInstanceVariableNode: anInstanceVariableNode.
	self typeThatNode: anInstanceVariableNode.
	^ anInstanceVariableNode
]

{ #category : #visiting }
FATypeAnnotator >> visitLiteralArrayNode: aLiteralNode [
	super visitLiteralArrayNode: aLiteralNode.
	self typeThatNode: aLiteralNode.
	^ aLiteralNode
]

{ #category : #visiting }
FATypeAnnotator >> visitLiteralNode: aLiteralNode [
	super visitLiteralNode: aLiteralNode.
	self typeThatNode: aLiteralNode.
	^ aLiteralNode
]

{ #category : #visiting }
FATypeAnnotator >> visitLiteralValueNode: aLiteralNode [
	super visitLiteralValueNode: aLiteralNode.
	self typeThatNode: aLiteralNode.
	^ aLiteralNode
]

{ #category : #visiting }
FATypeAnnotator >> visitMessageNode: aMessageNode [
	" inlined the code of ProgramNodeVisitor>>#visitMessageNode:
	because we want to treat receivers individually. 
	They should therefore always be typed."
	self visitNode: aMessageNode receiver.
	aMessageNode arguments do: [ :each | self visitNode: each ].

	self typeThatNode: aMessageNode.
	^ aMessageNode
]

{ #category : #visiting }
FATypeAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	self typeThatNode: aMethodNode.
	^ aMethodNode
]

{ #category : #visiting }
FATypeAnnotator >> visitSelfNode: aSelfNode [
	super visitSelfNode: aSelfNode.
	self typeThatNode: aSelfNode.
	^ aSelfNode
]

{ #category : #visiting }
FATypeAnnotator >> visitTemporaryNode: aTemporaryNode [
	super visitTemporaryNode: aTemporaryNode.
	self typeThatNode: aTemporaryNode.
	^ aTemporaryNode
]
