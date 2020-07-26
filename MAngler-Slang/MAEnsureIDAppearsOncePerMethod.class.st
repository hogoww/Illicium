Class {
	#name : #MAEnsureIDAppearsOncePerMethod,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'replacements',
		'allIds'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> addNodeName: aNode [
	"we either replace the name with the same name (when there is no conflict)
	or with crafted one.
	This is easier for scope management"
	allIds at: aNode name 
		ifPresent: [ 
			replacements 
				at: aNode name 
				put: (MASlangVariableRenamer newNameForName: aNode name withExistingNames: allIds) ]
		ifAbsent: [ 
			replacements at: aNode name put: aNode name. "we replace it with the same name."
			allIds add: aNode name -> nil ].
	
]

{ #category : #initialization }
MAEnsureIDAppearsOncePerMethod >> initialize [ 
	allIds := Dictionary new.
	replacements := Dictionary new
]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> removeTempsOrAgs: tempsOrArgs [
	| newName |
	tempsOrArgs do: [ :aTempOrArg | 
		newName := replacements removeKey: aTempOrArg name.
		aTempOrArg name: newName ].
	
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
	super visitSequenceNode: aSequenceNode.
	self removeTempsOrAgs: aSequenceNode temporaries
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
