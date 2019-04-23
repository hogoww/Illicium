Class {
	#name : #ASTCTypeAnnotationASTOld,
	#superclass : #PIVisitor,
	#category : #'ASTC-Visitors-RBAnnotations'
}

{ #category : #accessing }
ASTCTypeAnnotationASTOld class >> property [ 
	^#type
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitArgumentNode: aRBArgumentNode [ 
	^self atNewPropertyPut: (super visitArgumentNode: aRBArgumentNode)
		for: aRBArgumentNode
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitArrayNode: aArrayNode [
	^self atNewPropertyPut: (super visitArrayNode: aArrayNode)
		for: aArrayNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitAssignmentNode: anAssignmentNode [ 
	^self atNewPropertyPut: (super visitAssignmentNode: anAssignmentNode )
		for: anAssignmentNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitBlockNode: aBlockNode [ 
	^self atNewPropertyPut: (super visitBlockNode: aBlockNode)
		for: aBlockNode
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitCascadeNode: aCascadeNode [ 	
	
	^self atNewPropertyPut: (super visitCascadeNode: aCascadeNode)
		for: aCascadeNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitGlobalNode: aNode [ 
	^self atNewPropertyPut: (super visitGlobalNode: aNode)
		for: aNode
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitInstanceVariableNode: anInstanceVariableNode [ 
	^self atNewPropertyPut: (super visitInstanceVariableNode: anInstanceVariableNode )
		for: anInstanceVariableNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitLiteralArrayNode: node [
	^self atNewPropertyPut: (super visitLiteralArrayNode: node)
		for: node
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitLiteralNode: node [ 
	^self atNewPropertyPut: (super visitLiteralNode: node)
		for: node
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitMessageNode: aMessageNode [ 
	^self atNewPropertyPut: (super visitMessageNode: aMessageNode )
		for: aMessageNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitMethodNode:aMethodNode [
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
ASTCTypeAnnotationASTOld >> visitReturnNode: aReturnNode [
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
ASTCTypeAnnotationASTOld >> visitSelfNode: aSelfNode [ 
	^self atNewPropertyPut: (super visitSelfNode: aSelfNode)
		for: aSelfNode
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitSequenceNode: aSequenceNode [
	^self atNewPropertyPut: (super visitSequenceNode: aSequenceNode )
		for: aSequenceNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitSuperNode: aRBSuperNode [ 
	^self atNewPropertyPut: (super visitSuperNode: aRBSuperNode )
		for: aRBSuperNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitTemporaryNode: aTemporaryNode [ 
	^self atNewPropertyPut: (super visitTemporaryNode: aTemporaryNode )
		for: aTemporaryNode 
]

{ #category : #visiting }
ASTCTypeAnnotationASTOld >> visitVariableNode: aRBVariableNode [ 
	^self atNewPropertyPut: (super visitVariableNode: aRBVariableNode)
		for: aRBVariableNode 
]
