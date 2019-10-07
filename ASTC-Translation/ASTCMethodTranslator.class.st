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
	
	aNode
		propertyAt: ASTCTypeAnnotationAST property
		ifPresent: [ :types | types anyOne ]
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
		at: #methodNodeTranslator put: ASTCMethodNodeTranslator new;
		at: #pragmaNodeTranslator put: ASTCPragmaNodeTranslator new;
		at: #returnNodeTranslator put: ASTCReturnNodeTranslator new;
		at: #sequenceNodeTranslator put: ASTCSequenceNodeTranslator new;
		at: #arrayNodeTranslator put: ASTCArrayNodeTranslator new;
		at: #assignmentNodeTranslator put: ASTCAssignementNodeTranslator new;
		at: #blockNodeTranslator put: ASTCBlockNodeTranslator new;
		at: #cascadeNodeTranslator put: ASTCCascadeNodeTranslator new;
		at: #literalNodeTranslator put: ASTCLiteralNodeTranslator new;
		at: #literalValueNodeTranslator put: ASTCLiteralValueNodeTranslator new;
		at: #literalArrayNodeTranslator put: ASTCLiteralArrayNodeTranslator new;
		at: #messageNodeTranslator put: ASTCMessageNodeTranslator new;
		at: #argumentNodeTranslator put: ASTCArgumentNodeTranslator new;
		at: #globalNodeTranslator put: ASTCGlobalNodeTranslator new;
		at: #instanceVariableNodeTranslator put: ASTCInstanceVariableNodeTranslator new;
		at: #selfNodeTranslator put: ASTCSelfNodeTranslator new;
		at: #superNodeTranslator put: ASTCSuperNodeTranslator new;
		at: #temporaryNodeTranslator put: ASTCTemporaryNodeTranslator new;
		at: #thisContextNodeTranslator put: ASTCThisContextNodeTranslator new;
		at: #variableNodeTranslator put: ASTCVariableNodeTranslator new;
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
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitArrayNode: anArrayNode [
	^ (translators at: #arrayNodeTranslator)
		translateNode: anArrayNode 
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitAssignmentNode: anAssignmentNode [
	^ (translators at: #assignmentNodeTranslator)
		translateNode: anAssignmentNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitBlockNode: aBlockNode [
	^ (translators at: #blockNodeTranslator)
		translateNode: aBlockNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitCascadeNode: aCascadeNode [
	^ (translators at: #cascadeNodeTranslator)
		translateNode: aCascadeNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitGlobalNode: aGlobalNode [
	^ (translators at: #globalNodeTranslator)
		translateNode: aGlobalNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitInstanceVariableNode: aInstanceVariableNode [
	^ (translators at: #instanceVariableNodeTranslator)
		translateNode: aInstanceVariableNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralArrayNode: aLiteralArrayNode [
	^ (translators at: #literalArrayTranslator)
		translateNode: aLiteralArrayNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralNode: aLiteralNode [
	^ (translators at: #literalNodeTranslator)
		translateNode: aLiteralNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralValueNode: aLiteralValueNode [
	^ (translators at: #literalValueNodeTranslator)
		translateNode: aLiteralValueNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitMessageNode: aMessageNode [
	^ (translators at: #messageNodeTranslator)
		translateNode: aMessageNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitMethodNode: aMethodNode [
	^ (translators at: #methodNodeTranslator)
		translateNode: aMethodNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitPragmaNode: aPragmaNode [
	^ (translators at: #pragmaNodeTranslator)
		translateNode: aPragmaNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitReturnNode: aReturnNode [
	^ (translators at: #returnNodeTranslator)
		translateNode: aReturnNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSelfNode: aSelfNode [
	^ (translators at: #selfNodeTranslator)
		translateNode: aSelfNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSequenceNode: aSequenceNode [
	^ (translators at: #sequenceNodeTranslator)
		translateNode: aSequenceNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSuperNode: aSuperNode [
	^ (translators at: #superNodeTranslator)
		translateNode: aSuperNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitTemporaryNode: aTemporaryNode [
	^ (translators at: #temporaryNodeTranslator)
		translateNode: aTemporaryNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitThisContextNode: aThisContextNode [
	^ (translators at: #thisContextNodeTranslator)
		translateNode: aThisContextNode
		withMethodTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitVariableNode: aVariableNode [
	^ (translators at: #variableNodeTranslator)
		translateNode: aVariableNode
		withMethodTranslator: self
]
