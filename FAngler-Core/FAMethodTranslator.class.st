Class {
	#name : #FAMethodTranslator,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'translators',
		'classTranslator',
		'includes'
	],
	#category : #'FAngler-Core-Translation'
}

{ #category : #accessing }
FAMethodTranslator >> addInclude: aString [
	includes add: aString
]

{ #category : #utility }
FAMethodTranslator >> ask: aTranslatorKind to: aSelector with: arguments [
	" utility, may not be as usefull as I foresee "
	^ (translators at: aTranslatorKind) perform: aSelector with: arguments
]

{ #category : #configuration }
FAMethodTranslator >> assignmentNodeTranslator: anAssignmentNodeTranslator [
	
	translators at: #assignmentNodeTranslator put: (anAssignmentNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #initialization }
FAMethodTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #initialization }
FAMethodTranslator >> classTranslator: aClassTranslator [
	^ classTranslator := aClassTranslator
]

{ #category : #utility }
FAMethodTranslator >> forward: aMessage to: aType [
	^ (translators at: #messageNodeTranslator) forward: aMessage to: aType asTypeReification
]

{ #category : #typing }
FAMethodTranslator >> getNodeConcreteType: aNode [
	
	^ aNode
		propertyAt: classTranslator typeAnnotatorClass propertyName
		ifPresent: [ :types | types key ]
		ifAbsent: [ UnannotatedNode new node: aNode ; signal ].
]

{ #category : #typing }
FAMethodTranslator >> getNodeTranslationType: aNode [
	^ self getReplacementType: (self getNodeConcreteType: aNode)
]

{ #category : #typing }
FAMethodTranslator >> getReplacementType: aType [
	^ classTranslator getReplacementType: aType
]

{ #category : #accessing }
FAMethodTranslator >> includes [
	^ includes
]

{ #category : #accessing }
FAMethodTranslator >> includes: aCollectionOfString [
	includes := aCollectionOfString
]

{ #category : #initialization }
FAMethodTranslator >> initialize [
	includes := Set new.
	translators := (Dictionary new: 22)
		at: #methodNodeTranslator put: (FAMethodNodeTranslator new methodTranslator: self ; yourself);
		at: #pragmaNodeTranslator put: (FAPragmaNodeTranslator new methodTranslator: self ; yourself);
		at: #returnNodeTranslator put: (FAReturnNodeTranslator new methodTranslator: self ; yourself);
		at: #sequenceNodeTranslator put: (FASequenceNodeTranslator new methodTranslator: self ; yourself);
		at: #arrayNodeTranslator put: (FAArrayNodeTranslator new methodTranslator: self ; yourself);
		at: #assignmentNodeTranslator put: (FAAssignementNodeTranslator new methodTranslator: self ; yourself);
		at: #blockNodeTranslator put: (FABlockNodeTranslator new methodTranslator: self ; yourself);
		at: #cascadeNodeTranslator put: (FACascadeNodeTranslator new methodTranslator: self ; yourself);
		at: #literalValueNodeTranslator put: (FALiteralValueNodeTranslator new methodTranslator: self ; yourself);
		at: #literalArrayNodeTranslator put: (FALiteralArrayNodeTranslator new methodTranslator: self ; yourself);
		at: #messageNodeTranslator put: (FAMessageNodeTranslator new methodTranslator: self ; yourself);
		at: #argumentNodeTranslator put: (FAArgumentNodeTranslator new methodTranslator: self ; yourself);
		at: #globalNodeTranslator put: (FAGlobalNodeTranslator new methodTranslator: self ; yourself);
		at: #instanceVariableNodeTranslator put: (FAInstanceVariableNodeTranslator new methodTranslator: self ; yourself);
		at: #selfNodeTranslator put: (FASelfNodeTranslator new methodTranslator: self ; yourself);
		at: #superNodeTranslator put: (FASuperNodeTranslator new methodTranslator: self ; yourself);
		at: #temporaryNodeTranslator put: (FATemporaryNodeTranslator new methodTranslator: self ; yourself);
		at: #temporaryDeclarationNodeTranslator put: (FATemporaryDeclarationNodesTranslator new methodTranslator: self ; yourself);
		at: #thisContextNodeTranslator put: (FAThisContextNodeTranslator new methodTranslator: self ; yourself);
		at: #variableNodeTranslator put: (FAVariableNodeTranslator new methodTranslator: self ; yourself);
		yourself.
]

{ #category : #testing }
FAMethodTranslator >> isStatefulCode [ 
	^ classTranslator isStatefulCode
]

{ #category : #configuration }
FAMethodTranslator >> isStrict [
	^ classTranslator isStrict
]

{ #category : #configuration }
FAMethodTranslator >> literalValueNodeTranslator: anILLiteralValueNodeTranslator [ 
	
	translators at: #literalValueNodeTranslator put: (anILLiteralValueNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #configuration }
FAMethodTranslator >> messageNodeTranslator: aMASlangMessageNodeTranslator [ 
	translators at: #messageNodeTranslator put: (aMASlangMessageNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #configuration }
FAMethodTranslator >> methodNodeTranslator: aMethodNodeTranslator [ 
	 translators at: #methodNodeTranslator put: (aMethodNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #visiting }
FAMethodTranslator >> postTranslationVisitors [
	^ classTranslator postTranslationVisitors
]

{ #category : #visiting }
FAMethodTranslator >> postTranslationVisitsFor: anASTCNode [ 
	self postTranslationVisitors do: [ :aVisitor | anASTCNode acceptVisitor: aVisitor ].
	^ anASTCNode
]

{ #category : #accessing }
FAMethodTranslator >> program [
	
	^ classTranslator program
]

{ #category : #configuration }
FAMethodTranslator >> returnNodeTranslator: anILReturnNodeTranslator [ 
	translators at: #returnNodeTranslator put: (anILReturnNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #visiting }
FAMethodTranslator >> stateName [
	^ classTranslator stateName
]

{ #category : #configuration }
FAMethodTranslator >> temporaryDeclarationNodeTranslator: aTemporaryDeclarationNodeTranslator [
	
	translators at: #temporaryDeclarationNodeTranslator put: (aTemporaryDeclarationNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #visiting }
FAMethodTranslator >> translateMethod: aMethodNode [
	"Method there for readability only."
	| functionDefinitionNode |
	functionDefinitionNode := self translateMethodNode: aMethodNode.
	self postTranslationVisitsFor: functionDefinitionNode.
	^ functionDefinitionNode
]

{ #category : #visiting }
FAMethodTranslator >> translateMethodNode: aMethodAST [
	"Method there for readability only."
	^ aMethodAST acceptVisitor: self
	
]

{ #category : #visiting }
FAMethodTranslator >> visitArgumentNode: anArgumentNode [
	^ (translators at: #argumentNodeTranslator)
		translateNode: anArgumentNode
]

{ #category : #visiting }
FAMethodTranslator >> visitArrayNode: anArrayNode [
	^ (translators at: #arrayNodeTranslator)
		translateNode: anArrayNode
]

{ #category : #visiting }
FAMethodTranslator >> visitAssignmentNode: anAssignmentNode [
	^ (translators at: #assignmentNodeTranslator)
		translateNode: anAssignmentNode
]

{ #category : #visiting }
FAMethodTranslator >> visitBlockNode: aBlockNode [
	^ (translators at: #blockNodeTranslator)
		translateNode: aBlockNode
]

{ #category : #visiting }
FAMethodTranslator >> visitCascadeNode: aCascadeNode [
	^ (translators at: #cascadeNodeTranslator)
		translateNode: aCascadeNode
]

{ #category : #visiting }
FAMethodTranslator >> visitGlobalNode: aGlobalNode [
	^ (translators at: #globalNodeTranslator)
		translateNode: aGlobalNode
]

{ #category : #visiting }
FAMethodTranslator >> visitInstanceVariableNode: aInstanceVariableNode [
	^ (translators at: #instanceVariableNodeTranslator)
		translateNode: aInstanceVariableNode
]

{ #category : #visiting }
FAMethodTranslator >> visitLiteralArrayNode: aLiteralArrayNode [
	^ (translators at: #literalArrayTranslator)
		translateNode: aLiteralArrayNode
]

{ #category : #visiting }
FAMethodTranslator >> visitLiteralNode: aLiteralNode [
	^ (translators at: #literalNodeTranslator)
		translateNode: aLiteralNode
]

{ #category : #visiting }
FAMethodTranslator >> visitLiteralValueNode: aLiteralValueNode [
	^ (translators at: #literalValueNodeTranslator)
		translateNode: aLiteralValueNode
]

{ #category : #visiting }
FAMethodTranslator >> visitMessageNode: aMessageNode [
	^ (translators at: #messageNodeTranslator)
		translateNode: aMessageNode
]

{ #category : #visiting }
FAMethodTranslator >> visitMethodNode: aMethodNode [
	^ (translators at: #methodNodeTranslator)
		translateNode: aMethodNode
]

{ #category : #visiting }
FAMethodTranslator >> visitPragmaNode: aPragmaNode [
	^ (translators at: #pragmaNodeTranslator)
		translateNode: aPragmaNode
]

{ #category : #visiting }
FAMethodTranslator >> visitReturnNode: aReturnNode [
	^ (translators at: #returnNodeTranslator)
		translateNode: aReturnNode
]

{ #category : #visiting }
FAMethodTranslator >> visitSelfNode: aSelfNode [
	^ (translators at: #selfNodeTranslator)
		translateNode: aSelfNode
]

{ #category : #visiting }
FAMethodTranslator >> visitSequenceNode: aSequenceNode [
	^ (translators at: #sequenceNodeTranslator)
		translateNode: aSequenceNode
]

{ #category : #visiting }
FAMethodTranslator >> visitSuperNode: aSuperNode [
	^ (translators at: #superNodeTranslator)
		translateNode: aSuperNode
]

{ #category : #visiting }
FAMethodTranslator >> visitTemporaryDeclarationNode: aTemporaryDeclarationNode [
	^ (translators at: #temporaryDeclarationNodeTranslator)
		translateNode: aTemporaryDeclarationNode
]

{ #category : #visiting }
FAMethodTranslator >> visitTemporaryNode: aTemporaryNode [
	^ (translators at: #temporaryNodeTranslator)
		translateNode: aTemporaryNode
]

{ #category : #visiting }
FAMethodTranslator >> visitThisContextNode: aThisContextNode [
	^ (translators at: #thisContextNodeTranslator)
		translateNode: aThisContextNode
]

{ #category : #visiting }
FAMethodTranslator >> visitVariableNode: aVariableNode [
	^ (translators at: #variableNodeTranslator)
		translateNode: aVariableNode
]
