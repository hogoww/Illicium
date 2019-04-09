Class {
	#name : #ASTCTypeAnnotationAST,
	#superclass : #PIVisitor,
	#category : #'ASTC-Extensions-RBAnnotations'
}

{ #category : #accessing }
ASTCTypeAnnotationAST class >> property [ 
	^#type
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitArgumentNode: aRBArgumentNode [ 
	^self atNewPropertyPut: (super visitArgumentNode: aRBArgumentNode)
		for: aRBArgumentNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitArrayNode: aArrayNode [
	^self atNewPropertyPut: (super visitArrayNode: aArrayNode)
		for: aArrayNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitAssignmentNode: anAssignmentNode [ 
	^self atNewPropertyPut: (super visitAssignmentNode: anAssignmentNode )
		for: anAssignmentNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitBlockNode: aBlockNode [ 
	^self atNewPropertyPut: (super visitBlockNode: aBlockNode)
		for: aBlockNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitCascadeNode: aCascadeNode [ 	
	
	^self atNewPropertyPut: (super visitCascadeNode: aCascadeNode)
		for: aCascadeNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitGlobalNode: aNode [ 
	^self atNewPropertyPut: (super visitGlobalNode: aNode)
		for: aNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitInstanceVariableNode: anInstanceVariableNode [ 
	^self atNewPropertyPut: (super visitInstanceVariableNode: anInstanceVariableNode )
		for: anInstanceVariableNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitLiteralArrayNode: node [
	^self atNewPropertyPut: (super visitLiteralArrayNode: node)
		for: node
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitLiteralNode: node [ 
	^self atNewPropertyPut: (super visitLiteralNode: node)
		for: node
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMessageNode: aMessageNode [ 
	^self atNewPropertyPut: (super visitMessageNode: aMessageNode )
		for: aMessageNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitMethodNode:aMethodNode [
	"If no type is found (hence, if there's no return) we assume that it doesn't return anything, so a void. We express that by UndefinedObject."
	super visitMethodNode:aMethodNode.
	
	aMethodNode propertyAt: self class property
		ifPresent:[:value|
			value crLog.
			]
		ifAbsent:[
			self atNewPropertyPut: ASTCVoid
				for: aMethodNode.
				(aMethodNode propertyAt: self class property) crLog.
		].
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitReturnNode: aReturnNode [
	| type context |
	context := super visitReturnNode: aReturnNode.
		
	type := inferer stack top returnType.
	
	self atNewPropertyPut: type
		for: aReturnNode.

	self atNewPropertyPut: type
		for: aReturnNode methodNode.
		
	^ context
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSelfNode: aSelfNode [ 
	^self atNewPropertyPut: (super visitSelfNode: aSelfNode)
		for: aSelfNode
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSequenceNode: aSequenceNode [
	^self atNewPropertyPut: (super visitSequenceNode: aSequenceNode )
		for: aSequenceNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitSuperNode: aRBSuperNode [ 
	^self atNewPropertyPut: (super visitSuperNode: aRBSuperNode )
		for: aRBSuperNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitTemporaryNode: aTemporaryNode [ 
	^self atNewPropertyPut: (super visitTemporaryNode: aTemporaryNode )
		for: aTemporaryNode 
]

{ #category : #visiting }
ASTCTypeAnnotationAST >> visitVariableNode: aRBVariableNode [ 
	^self atNewPropertyPut: (super visitVariableNode: aRBVariableNode)
		for: aRBVariableNode 
]
