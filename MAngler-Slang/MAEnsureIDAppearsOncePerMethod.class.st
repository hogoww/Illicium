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
			replacements 
				at: aNode name 
				put: newName.
			allIds add: aNode name -> newName ]
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
	replacements := stack pop
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> pushContext [
	stack push: replacements copy
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> removeTempsOrAgs: tempsOrArgs [
	tempsOrArgs do: [ :aTempOrArg | 
		aTempOrArg name: (replacements removeKey: aTempOrArg name) ].
	
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
MAEnsureIDAppearsOncePerMethod >> visitBlockNode: aBlockNode [
	super visitBlockNode: aBlockNode.
	self removeTempsOrAgs: aBlockNode arguments
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.
	self removeTempsOrAgs: aMethodNode arguments.
	self haltIf: #ambiguousClass:allInstancesInto:limit:resultsInto: =aMethodNode selector.
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitMethodOrBlockNode: aMethodOrBlock [
	aMethodOrBlock temporaries do: [ :aTemp | replacements removeKey: aTemp name ].
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitSequenceNode: aSequenceNode [

	self visitTemporaryNodes: aSequenceNode temporaries.
	self pushContext.

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
