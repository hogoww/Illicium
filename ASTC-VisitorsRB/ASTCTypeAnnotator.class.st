"
I am an abstract class to implement types annotator for RB ASTs.
Subclasses only need to implement how to type a node.
"
Class {
	#name : #ASTCTypeAnnotator,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'inferer'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #accessing }
ASTCTypeAnnotator class >> property [
	"should return a symbol with the name of the property"
	^#type
]

{ #category : #accessing }
ASTCTypeAnnotator >> inferer [
	^ inferer
	
]

{ #category : #accessing }
ASTCTypeAnnotator >> inferer: aTypeInferer [
	inferer := aTypeInferer.
	
]

{ #category : #visiting }
ASTCTypeAnnotator >> typeThatNode: aNode [
	^ self subclassResponsibility
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitArgumentNode: anArgumentNode [
	super visitArgumentNode: anArgumentNode.
	self typeThatNode: anArgumentNode.
	^ anArgumentNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitAssignmentNode: anAssignementNode [
	super visitAssignmentNode: anAssignementNode.
	self typeThatNode: anAssignementNode.
	^ anAssignementNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitBlockNode: aBlockNode [
	super visitBlockNode: aBlockNode.
	self typeThatNode: aBlockNode.
	^ aBlockNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitGlobalNode: aGlobalNode [
	super visitGlobalNode: aGlobalNode.
	self typeThatNode: aGlobalNode.
	^ aGlobalNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitInstanceVariableNode: anInstanceVariableNode [
	super visitInstanceVariableNode: anInstanceVariableNode.
	self typeThatNode: anInstanceVariableNode.
	^ anInstanceVariableNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitLiteralNode: aLiteralNode [
	super visitLiteralNode: aLiteralNode.
	self typeThatNode: aLiteralNode.
	^ aLiteralNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitMessageNode: aMessageNode [
	" inlined the code of ProgramNodeVisitor>>#visitMessageNode:
	because we want to treat receivers individually. 
	They should therefore always be typed."
	self visitNode: aMessageNode receiver.
	aMessageNode arguments do: [ :each | self visitNode: each ].

	self typeThatNode: aMessageNode.
	^ aMessageNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	self typeThatNode: aMethodNode.
	^ aMethodNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitSelfNode: aSelfNode [
	super visitSelfNode: aSelfNode.
	self typeThatNode: aSelfNode.
	^ aSelfNode
]

{ #category : #visiting }
ASTCTypeAnnotator >> visitTemporaryNode: aTemporaryNode [
	super visitTemporaryNode: aTemporaryNode.
	self typeThatNode: aTemporaryNode.
	^ aTemporaryNode
]
