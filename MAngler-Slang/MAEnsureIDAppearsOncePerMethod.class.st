Class {
	#name : #MAEnsureIDAppearsOncePerMethod,
	#superclass : #RBProgramNodeVisitorCompatibility,
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

	(allIds includes: aNode name) 
		ifTrue: [ | newName |
			newName := (MASlangVariableRenamer newNameForName: aNode name withExistingNames: allIds).
			replacements at: aNode name put: newName.
			aNode name: newName.
			allIds add: newName ]
		ifFalse: [ 
			replacements at: aNode name put: aNode name. "we replace it with the same name."
			allIds add: aNode name ].
	
]

{ #category : #accessing }
MAEnsureIDAppearsOncePerMethod >> allIds [
	^ allIds
]

{ #category : #accessing }
MAEnsureIDAppearsOncePerMethod >> allIds: anObject [
	allIds := anObject
]

{ #category : #initialization }
MAEnsureIDAppearsOncePerMethod >> initialize [ 
	allIds := Set new.
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

{ #category : #accessing }
MAEnsureIDAppearsOncePerMethod >> replacements [
	^ replacements
]

{ #category : #accessing }
MAEnsureIDAppearsOncePerMethod >> replacements: anObject [
	replacements := anObject
]

{ #category : #accessing }
MAEnsureIDAppearsOncePerMethod >> stack [
	^ stack
]

{ #category : #accessing }
MAEnsureIDAppearsOncePerMethod >> stack: anObject [
	stack := anObject
]

{ #category : #initialization }
MAEnsureIDAppearsOncePerMethod >> startWithNamesInScope: names [
	allIds ifNotEmpty: [ self error: ' This should only be used before starting '].
	allIds addAll: names
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
MAEnsureIDAppearsOncePerMethod >> visitBlockNode: 	aMethodNode [
	self pushContext.	
	super visitBlockNode: aMethodNode.

]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitMethodNode: 	aMethodNode [
	self pushContext.	
	super visitMethodNode: aMethodNode.

]

{ #category : #visiting }
MAEnsureIDAppearsOncePerMethod >> visitSequenceNode: aSequenceNode [
	
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

	aVarNode isDefinition ifTrue: [ ^ self ].
	aVarNode isSuperVariable | aVarNode isSelfVariable ifTrue: [ ^ self ].
	aVarNode isGlobalVariable ifTrue: [ ^ self ].
	aVarNode isClassVariable ifTrue: [ ^ self ].
	aVarNode isInstanceVariableNode ifTrue: [ ^ self ].

	aVarNode name: (replacements at: aVarNode name)
]
