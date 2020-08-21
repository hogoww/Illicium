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
	classTranslator addInclude: aString
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> argumentNodeTranslator [
	^ translators at: #argumentNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> argumentNodeTranslator: anArgumentNodeTranslator [
	translators at: #argumentNodeTranslator put: 
		(anArgumentNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> arrayNodeTranslator [
	^ translators at: #arrayNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> arrayNodeTranslator: anArrayNodeTranslator [
	translators at: #arrayNodeTranslator put: 
		(anArrayNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #utility }
FAMethodTranslator >> ask: aTranslatorKind to: aSelector with: arguments [
	" utility, may not be as usefull as I foresee "
	^ (translators at: aTranslatorKind) perform: aSelector with: arguments
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> assignmentNodeTranslator [
	translators at: #assignmentNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> assignmentNodeTranslator: anAssignmentNodeTranslator [
	translators at: #assignmentNodeTranslator put:
		(anAssignmentNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> blockNodeTranslator [
	^ translators at: #blockNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> blockNodeTranslator: aBlockNodeTranslator [
	translators at: #blockNodeTranslator put: 
		(aBlockNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> cascadeNodeTranslator [
	^ translators at: #cascadeNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> cascadeNodeTranslator: aCascadeNodeTranslator [
	translators at: #cascadeNodeTranslator put: 
		(aCascadeNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #initialization }
FAMethodTranslator >> classTranslator [
	^ classTranslator
]

{ #category : #initialization }
FAMethodTranslator >> classTranslator: aClassTranslator [
	^ classTranslator := aClassTranslator
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultArgumentNodeTranslator [
	^ FAArgumentNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultArrayNodeTranslator [
	^ FAArrayNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultAssignmentTranslator [
	^ FAAssignementNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultBlockNodeTranslator [
	^ FABlockNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultCascadeNodeTranslator [
	^ FACascadeNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultGlobalNodeTranslator [
	^ FAGlobalNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultInstanceVariableNodeTranslator [
	^ FAInstanceVariableNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultLiteralArrayNodeTranslator [
	^ FALiteralArrayNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultLiteralValueNodeTranslator [
	^ FALiteralValueNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultMessageNodeTranslator [
	^ FAMessageNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultMethodNodeTranslator [
	^ FAMethodNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultPragmaNodeTranslator [
	^ FAPragmaNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultReturnNodeTranslator [
	^ FAReturnNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultSelfNodeTranslator [
	^ FASelfNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultSequenceNodeTranslator [
	^ FASequenceNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultSuperNodeTranslator [
	^ FASuperNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultTemporaryDeclarationNodeTranslator [
	^ FATemporaryDeclarationNodesTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultTemporaryNodeTranslator [
	^ FATemporaryNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultThisContextNodeTranslator [
	^ FAThisContextNodeTranslator new
]

{ #category : #'configuration-default' }
FAMethodTranslator >> defaultVariableNodeTranslator [
	^ FAVariableNodeTranslator new
]

{ #category : #utility }
FAMethodTranslator >> forward: aMessage to: aType [
	^ (translators at: #messageNodeTranslator) forward: aMessage to: aType asTypeReification
]

{ #category : #typing }
FAMethodTranslator >> getNodeConcreteType: aNode [
	^ aNode
		propertyAt: FATypeAnnotator propertyName
		ifPresent: [ :types | types ]
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

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> globalNodeTranslator [
	^ translators at: #globalNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> globalNodeTranslator: aGlobalNodeTranslator [
	translators at: #globalNodeTranslator put: 
		(aGlobalNodeTranslator methodTranslator: self ; yourself).
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
	translators := Dictionary new: 20.
	self methodNodeTranslator: self defaultMethodNodeTranslator.
	self assignmentNodeTranslator: self defaultAssignmentTranslator.
	self pragmaNodeTranslator: self defaultPragmaNodeTranslator.
	self returnNodeTranslator: self defaultReturnNodeTranslator.
	self sequenceNodeTranslator: self defaultSequenceNodeTranslator.
	self arrayNodeTranslator: self defaultArrayNodeTranslator.
	self blockNodeTranslator: self defaultBlockNodeTranslator.
	self cascadeNodeTranslator: self defaultCascadeNodeTranslator.
	self literalValueNodeTranslator: self defaultLiteralValueNodeTranslator.
	self literalArrayNodeTranslator: self defaultLiteralArrayNodeTranslator.
	self messageNodeTranslator: self defaultMessageNodeTranslator.
	self argumentNodeTranslator: self defaultArgumentNodeTranslator.
	self globalNodeTranslator: self defaultGlobalNodeTranslator.
	self instanceVariableNodeTranslator: self defaultInstanceVariableNodeTranslator.
	self selfNodeTranslator: self defaultSelfNodeTranslator.
	self superNodeTranslator: self defaultSuperNodeTranslator.
	self temporaryNodeTranslator: self defaultTemporaryNodeTranslator.
	self temporaryDeclarationNodeTranslator: self defaultTemporaryDeclarationNodeTranslator.
	self thisContextNodeTranslator: self defaultThisContextNodeTranslator.
	self variableNodeTranslator: self defaultVariableNodeTranslator.
	self methodNodeTranslator: self defaultMethodNodeTranslator.
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> instanceVariableNodeTranslator [
	^ translators at: #instanceVariableNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> instanceVariableNodeTranslator: anInstanceVariableNodeTranslator [
	translators at: #instanceVariableNodeTranslator put: 
		(anInstanceVariableNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #testing }
FAMethodTranslator >> isStatefulCode [ 
	^ classTranslator isStatefulCode
]

{ #category : #configuration }
FAMethodTranslator >> isStrict [
	^ classTranslator isStrict
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> literalArrayNodeTranslator [
	^ translators at: #literalArrayNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> literalArrayNodeTranslator: aLiteralArrayNodeTranslator [
	translators at: #literalArrayNodeTranslator put: 
		(aLiteralArrayNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> literalValueNodeTranslator [
	^ translators at: #literalValueNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> literalValueNodeTranslator: aLiteralValueNodeTranslator [
	translators at: #literalValueNodeTranslator put: 
		(aLiteralValueNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> messageNodeTranslator [
	^ translators at: #messageNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> messageNodeTranslator: aMessageNodeTranslator [ 
	translators at: #messageNodeTranslator put: 
		(aMessageNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #accessing }
FAMethodTranslator >> methodFor: aSelector [
	^ classTranslator methodFor: aSelector
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> methodNodeTranslator: aMethodNodeTranslator [ 
	translators at: #methodNodeTranslator put: 
		(aMethodNodeTranslator methodTranslator: self ; yourself).
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

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> pragmaNodeTranslator [
	^ translators at: #pragmaNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> pragmaNodeTranslator: aPragmaNodeTranslator [
	translators at: #pragmaNodeTranslator put: 
		(aPragmaNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #accessing }
FAMethodTranslator >> program [
	
	^ classTranslator program
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> returnNodeTranslator [
	^ translators at: #returnNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> returnNodeTranslator: anArrayNodeTranslator [
	translators at: #returnNodeTranslator put: 
		(anArrayNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> selfNodeTranslator [
	^ translators at: #selfNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> selfNodeTranslator: aSelfNodeTranslator [
	translators at: #selfNodeTranslator put: 
		(aSelfNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> sequenceNodeTranslator [
	^ translators at: #sequenceNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> sequenceNodeTranslator: aSequenceNodeTranslator [
	translators at: #sequenceNodeTranslator put: 
		(aSequenceNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #visiting }
FAMethodTranslator >> stateName [
	^ classTranslator stateName
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> superNodeTranslator [
	^ translators at: #superNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> superNodeTranslator: aSuperNodeTranslator [
	translators at: #superNodeTranslator put: 
		(aSuperNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> temporaryDeclarationNodeTranslator [
	^ translators at: #temporaryDeclarationNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> temporaryDeclarationNodeTranslator: aTemporaryDeclarationNodeTranslator [
	translators at: #temporaryDeclarationNodeTranslator put:
		(aTemporaryDeclarationNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> temporaryNodeTranslator [
	^ translators at: #temporaryNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> temporaryNodeTranslator: aTemporaryNodeTranslator [
	translators at: #temporaryNodeTranslator put: 
		(aTemporaryNodeTranslator methodTranslator: self ; yourself).
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> thisContextNodeTranslator [
	^ translators at: #thisContextNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> thisContextNodeTranslator: aThisContextNodeTranslator [
	translators at: #thisContextNodeTranslator put: 
		(aThisContextNodeTranslator methodTranslator: self ; yourself).
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

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> variableNodeTranslator [
	^ translators at: #variableNodeTranslator
]

{ #category : #'accessors-nodes-translator' }
FAMethodTranslator >> variableNodeTranslator: aVariableNodeTranslator [
	translators at: #variableNodeTranslator put: 
		(aVariableNodeTranslator methodTranslator: self ; yourself).
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
