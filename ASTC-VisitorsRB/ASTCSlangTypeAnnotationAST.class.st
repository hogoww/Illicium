Class {
	#name : #ASTCSlangTypeAnnotationAST,
	#superclass : #ASTCTypeAnnotator,
	#instVars : [
		'currentTMethod'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #accessing }
ASTCSlangTypeAnnotationAST >> typeThatNode: aNode [
	| type tNode |	
	self halt.
	tNode := aNode propertyAt: #tEquivalent.
	
	type := inferer typeFor: tNode in: currentTMethod.
		
	self atNewPropertyPut: type -> nil for: aNode
]

{ #category : #accessing }
ASTCSlangTypeAnnotationAST >> visitMethodNode: aMethodNode [
	"set the current tMethod, so we can give it to the CCodeGenerator, when asking for a node's type"
	currentTMethod := inferer methodNamed: aMethodNode selector.
	
	self atNewPropertyPut: currentTMethod returnType -> currentTMethod for: aMethodNode.
	"TMethod nodes are not TParseNodes, so we have to ask for the type differntly"
	
	super visitMethodNode: aMethodNode.
	^ aMethodNode
]

{ #category : #accessing }
ASTCSlangTypeAnnotationAST >> wasMethodTyped: aMethodNode [
	^ self getMethodType: aMethodNode
]
