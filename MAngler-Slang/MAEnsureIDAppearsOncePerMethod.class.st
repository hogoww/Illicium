Class {
	#name : #MAEnsureIDAppearsOncePerMethod,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'replacements',
		'allIds',
		'stack'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> addNodeName: aNode [
	"we either replace the name with the same name (when there is no conflict)
	or with crafted one.
	This is easier for scope management"

	allIds at: aNode name 
		ifPresent: [ | newName |
			newName := (MASlangVariableRenamer newNameForName: aNode name withExistingNames: allIds).
			replacements at: aNode name put: newName.
			aNode name: newName.
			allIds add: newName -> nil ]
		ifAbsent: [ 
			replacements at: aNode name put: aNode name. "we replace it with the same name."
			allIds add: aNode name -> nil ].
	
]

{ #category : #initialization }
MAEnsureIDAppearsOncePerMethod >> initialize [ 
	allIds := Dictionary new.
	replacements := Dictionary new.
	stack := Stack new
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> popContext [
	replacements := stack top.
	stack pop
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> pushContext [
	stack push: replacements copy.
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitArgumentNode: anArgNode [
	anArgNode isDefinition ifTrue: [ ^  self ].
	
	anArgNode name: (replacements at: anArgNode name).
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitArgumentNodes: arguments [
	arguments do: [ :anArg |
			self addNodeName: anArg
		 ].
	
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitSequenceNode: aSequenceNode [

	self pushContext.
	
	self visitTemporaryNodes: aSequenceNode temporaries.

	aSequenceNode statements do: [ :each | self visitNode: each ].

	self popContext.
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitTemporaryDeclarationNode: aTempDecl [
	self addNodeName: aTempDecl
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitTemporaryNode: aTempNode [
	aTempNode isDefinition ifTrue: [ ^  self ].
	
	aTempNode name: (replacements at: aTempNode name).
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitVariableNode: aVarNode [
	aVarNode isDefinition ifTrue: [ ^  self ].
	aVarNode isSuper | aVarNode isSelf ifTrue: [ ^ self ].
	aVarNode isGlobalNode ifTrue:[ ^ self ].
	aVarNode isInstanceVariableNode ifTrue: [ ^ self ].
	
	aVarNode name: (replacements at: aVarNode name).
]
