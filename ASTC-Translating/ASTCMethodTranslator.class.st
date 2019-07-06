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
