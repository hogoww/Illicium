Class {
	#name : #ASTCMethodTranslator,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-overviewers'
}

{ #category : #initialization }
ASTCMethodTranslator >> initialize [
	translators := Dictionary new.
	translators at: #methodNodeTranslator put: ASTCMethodNodeTranslator new.
	translators at: #pragmaNodeTranslator put: ASTCPragmaNodeTranslator new.
	translators at: #returnNodeTranslator put: ASTCReturnNodeTranslator new.
	translators at: #sequenceNodeTranslator put: ASTCSequenceNodeTranslator new.
	translators at: #arrayNodeTranslator put: ASTCArrayNodeTranslator new.
	translators at: #assignementNodeTranslator put: ASTCAssignementNodeTranslator new.
	translators at: #blockNodeTranslator put: ASTCBlockNodeTranslator new.
	translators at: #cascadeNodeTranslator put: ASTCCascadeNodeTranslator new.
	translators at: #literalValueNodeTranslator put: ASTCLiteralValueNodeTranslator new.
	translators at: #literalArrayNodeTranslator put: ASTCLiteralArrayNodeTranslator new.
	translators at: #messageNodeTranslator put: ASTCMessageNodeTranslator new.
	translators at: #argumentNodeTranslator put: ASTCArgumentNodeTranslator new.
	translators at: #globalNodeTranslator put: ASTCGlobalNodeTranslator new.
	translators at: #instanceVariableNodeTranslator put: ASTCInstanceVariableNodeTranslator new.
	translators at: #selfNodeTranslator put: ASTCSelfNodeTranslator new.
	translators at: #superNodeTranslator put: ASTCSuperNodeTranslator new.
	translators at: #temporaryNodeTranslator put: ASTCTemporaryNodeTranslator new.
	translators at: #thisContextNodeTranslator put: ASTCThisContextNodeTranslator new.
]

{ #category : #visiting }
ASTCMethodTranslator >> visitArgumentNode: anArgumentNode [
	^(translators at: #argumentNodeTranslator)
		translateNode: anArgumentNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitArrayNode: anArrayNode [
	(translators at: #arrayNodeTranslator)
		translateNode: anArrayNode 
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitAssignementNode: anAssignementNode [
	(translators at: #assignementNodeTranslator)
		translateNode: anAssignementNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitBlockNode: aBlockNode [
	(translators at: #blockNodeTranslator)
		translateNode: aBlockNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitCascadeNode: aCascadeNode [
	(translators at: #cascadeNodeTranslator)
		translateNode: aCascadeNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitGlobalNode: aGlobalNode [
	(translators at: #globalNodeTranslator)
		translateNode: aGlobalNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitInstanceVariableNode: aInstanceVariableNode [
	(translators at: #instanceVariableNodeTranslator)
		translateNode: aInstanceVariableNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralArrayNode: aLiteralArrayNode [
	(translators at: #literalArrayTranslator)
		translateNode: aLiteralArrayNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitLiteralValueNode: aLiteralValueNode [
	(translators at: #literalValueTranslator)
		translateNode: aLiteralValueNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitMessageNode: aMessageNode [
	(translators at: #messageNodeTranslator)
		translateNode: aMessageNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitMethodNode: aMethodNode [
	(translators at: #methodNodeTranslator)
		translateNode: aMethodNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitPragmaNode: aPragmaNode [
	(translators at: #pragmaNodeTranslator)
		translateNode: aPragmaNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitReturnNode: aReturnNode [
	(translators at: #returnNodeTranslator)
		translateNode: aReturnNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSelfNode: aSelfNode [
	(translators at: #selfNodeTranslator)
		translateNode: aSelfNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSequenceNode: aSequenceNode [
	(translators at: #sequenceNodeTranslator)
		translateNode: aSequenceNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitSuperNode: aSuperNode [
	(translators at: #superNodeTranslator)
		translateNode: aSuperNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitTemporaryNode: aTemporaryNode [
	(translators at: #temporaryNodeTranslator)
		translateNode: aTemporaryNode
		withMainTranslator: self
]

{ #category : #visiting }
ASTCMethodTranslator >> visitThisContextNode: aThisContextNode [
	(translators at: #thisContextNodeTranslator)
		translateNode: aThisContextNode
		withMainTranslator: self
]
