Class {
	#name : #ASTCMethodTranslator,
	#superclass : #RBProgramNodeVisitor,
	#traits : 'ASTCFormatTrait',
	#classTraits : 'ASTCFormatTrait classTrait',
	#instVars : [
		'translators',
		'classTranslator'
	],
	#category : #'ASTC-Translation-overviewers'
}

{ #category : #initialization }
ASTCMethodTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #initialization }
ASTCMethodTranslator >> classTranslator: aClassTranslator [
	^ classTranslator := aClassTranslator
]

{ #category : #initialization }
ASTCMethodTranslator >> getNodeConcreteType: aNode [
	
	^ aNode
		propertyAt: ASTCTypeAnnotationAST property
		ifPresent: [ :types | types ]
		ifAbsent: [ 
			Error signal:
					'The type inferencer couldn''t figure out the type of a '	, aNode class asString ].
]

{ #category : #initialization }
ASTCMethodTranslator >> getNodeTranslationType: aNode [
	^ self getReplacementType: (self getNodeConcreteType: aNode)
]

{ #category : #initialization }
ASTCMethodTranslator >> getReplacementType: aClass [
	^ classTranslator getReplacementType: aClass
]

{ #category : #initialization }
ASTCMethodTranslator >> initialize [
	translators := (Dictionary new: 20)
		at: #methodNodeTranslator put: (ASTCMethodNodeTranslator new methodTranslator: self ; yourself);
		at: #pragmaNodeTranslator put: (ASTCPragmaNodeTranslator new methodTranslator: self ; yourself);
		at: #returnNodeTranslator put: (ASTCReturnNodeTranslator new methodTranslator: self ; yourself);
		at: #sequenceNodeTranslator put: (ASTCSequenceNodeTranslator new methodTranslator: self ; yourself);
		at: #arrayNodeTranslator put: (ASTCArrayNodeTranslator new methodTranslator: self ; yourself);
		at: #assignmentNodeTranslator put: (ASTCAssignementNodeTranslator new methodTranslator: self ; yourself);
		at: #blockNodeTranslator put: (ASTCBlockNodeTranslator new methodTranslator: self ; yourself);
		at: #cascadeNodeTranslator put: (ASTCCascadeNodeTranslator new methodTranslator: self ; yourself);
		at: #literalNodeTranslator put: (ASTCLiteralNodeTranslator new methodTranslator: self ; yourself);
		at: #literalValueNodeTranslator put: (ASTCLiteralValueNodeTranslator new methodTranslator: self ; yourself);
		at: #literalArrayNodeTranslator put: (ASTCLiteralArrayNodeTranslator new methodTranslator: self ; yourself);
		at: #messageNodeTranslator put: (ASTCMessageNodeTranslator new methodTranslator: self ; yourself);
		at: #argumentNodeTranslator put: (ASTCArgumentNodeTranslator new methodTranslator: self ; yourself);
		at: #globalNodeTranslator put: (ASTCGlobalNodeTranslator new methodTranslator: self ; yourself);
		at: #instanceVariableNodeTranslator put: (ASTCInstanceVariableNodeTranslator new methodTranslator: self ; yourself);
		at: #selfNodeTranslator put: (ASTCSelfNodeTranslator new methodTranslator: self ; yourself);
		at: #superNodeTranslator put: (ASTCSuperNodeTranslator new methodTranslator: self ; yourself);
		at: #temporaryNodeTranslator put: (ASTCTemporaryNodeTranslator new methodTranslator: self ; yourself);
		at: #thisContextNodeTranslator put: (ASTCThisContextNodeTranslator new methodTranslator: self ; yourself);
		at: #variableNodeTranslator put: (ASTCVariableNodeTranslator new methodTranslator: self ; yourself);
		yourself.
]

{ #category : #visiting }
ASTCMethodTranslator >> preTranslationAnalysis: aMethodAST [
	| annotatorVisitors |
	annotatorVisitors := OrderedCollection new.
	annotatorVisitors add: ASTCShouldItBeDeclared new.
	aMethodAST acceptMultipleVisitors: annotatorVisitors.	"pre translation visits"
	^ aMethodAST
]

{ #category : #visiting }
ASTCMethodTranslator >> translateMethodAST: aMethodAST [
	self preTranslationAnalysis: aMethodAST.
	
	^aMethodAST acceptVisitor: self.
	
]

{ #category : #visiting }
ASTCMethodTranslator >> visitArgumentNode: anArgumentNode [
	^ (translators at: #argumentNodeTranslator)
		translateNode: anArgumentNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitArrayNode: anArrayNode [
	^ (translators at: #arrayNodeTranslator)
		translateNode: anArrayNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitAssignmentNode: anAssignmentNode [
	^ (translators at: #assignmentNodeTranslator)
		translateNode: anAssignmentNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitBlockNode: aBlockNode [
	^ (translators at: #blockNodeTranslator)
		translateNode: aBlockNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitCascadeNode: aCascadeNode [
	^ (translators at: #cascadeNodeTranslator)
		translateNode: aCascadeNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitGlobalNode: aGlobalNode [
	^ (translators at: #globalNodeTranslator)
		translateNode: aGlobalNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitInstanceVariableNode: aInstanceVariableNode [
	^ (translators at: #instanceVariableNodeTranslator)
		translateNode: aInstanceVariableNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralArrayNode: aLiteralArrayNode [
	^ (translators at: #literalArrayTranslator)
		translateNode: aLiteralArrayNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralNode: aLiteralNode [
	^ (translators at: #literalNodeTranslator)
		translateNode: aLiteralNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralValueNode: aLiteralValueNode [
	^ (translators at: #literalValueNodeTranslator)
		translateNode: aLiteralValueNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitMessageNode: aMessageNode [
	^ (translators at: #messageNodeTranslator)
		translateNode: aMessageNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitMethodNode: aMethodNode [
	^ (translators at: #methodNodeTranslator)
		translateNode: aMethodNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitPragmaNode: aPragmaNode [
	^ (translators at: #pragmaNodeTranslator)
		translateNode: aPragmaNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitReturnNode: aReturnNode [
	^ (translators at: #returnNodeTranslator)
		translateNode: aReturnNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSelfNode: aSelfNode [
	^ (translators at: #selfNodeTranslator)
		translateNode: aSelfNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSequenceNode: aSequenceNode [
	^ (translators at: #sequenceNodeTranslator)
		translateNode: aSequenceNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSuperNode: aSuperNode [
	^ (translators at: #superNodeTranslator)
]

{ #category : #visiting }
ASTCMethodTranslator >> visitTemporaryNode: aTemporaryNode [
	^ (translators at: #temporaryNodeTranslator)
		translateNode: aTemporaryNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitThisContextNode: aThisContextNode [
	^ (translators at: #thisContextNodeTranslator)
		translateNode: aThisContextNode
]

{ #category : #visiting }
ASTCMethodTranslator >> visitVariableNode: aVariableNode [
	^ (translators at: #variableNodeTranslator)
		translateNode: aVariableNode
]
