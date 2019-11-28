Class {
	#name : #ASTCTypeChecker,
	#superclass : #Object,
	#instVars : [
		'types',
		'node',
		'inferer',
		'variableName'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #'as yet unclassified' }
ASTCTypeChecker class >> checkThatType: types for: aNode using: inferer [
	| vname |
	vname := aNode isVariable ifTrue:[ aNode name ] ifFalse:[ aNode className ].
	^ self new
		types: types;
		node: aNode;
		inferer: inferer;
		variableName: vname;
		check
]

{ #category : #'as yet unclassified' }
ASTCTypeChecker class >> type: types using: anInferer forVar: aString [
	^ self new
		types: types;
		inferer: anInferer;
		variableName: aString;
		check
]

{ #category : #'as yet unclassified' }
ASTCTypeChecker >> check [
	(types size > 1)
		ifTrue:[ [ types remove: Object ] on: NotFound do: [] ].
	self nodeCheck.
	
	(types size > 1)
		ifTrue:[ [ types remove: UndefinedObject ] on: NotFound do: [ ] ].
	(types size > 1)
		ifTrue:[ [ types remove: Object ] on: NotFound do: [ TypeAmbiguity new types: types ; signal ] ].
	
	
	types size < 1
		ifTrue: [ "use the next statement to look what stopped the execution, and type it by hand
			inferer blockingStuff inspect.
			"
			NoTypeFound new something: variableName ; signal ].
	types size > 1
		ifTrue: [ TypeAmbiguity new types: types ; signal ].
	^ types anyOne
]

{ #category : #accessing }
ASTCTypeChecker >> inferer [
	^ inferer
]

{ #category : #accessing }
ASTCTypeChecker >> inferer: anInferer [ 
	inferer := anInferer
]

{ #category : #accessing }
ASTCTypeChecker >> node [ 
	^ node
]

{ #category : #accessing }
ASTCTypeChecker >> node: aNode [ 
	node := aNode
]

{ #category : #'as yet unclassified' }
ASTCTypeChecker >> nodeCheck [
	node ifNil:[ ^ self ].
	
	(types size > 1 and:
	[ (node isMethod and:
	[types anySatisfy: [:aType| aType name = node methodClass name ]])]) 
	ifTrue:[ types remove: node methodClass ].	"remove implicit returns from primitives if it's not the only one"
]

{ #category : #accessing }
ASTCTypeChecker >> types [
	^ types
]

{ #category : #accessing }
ASTCTypeChecker >> types: aCollectionOfType [
	types := aCollectionOfType
]

{ #category : #accessing }
ASTCTypeChecker >> variableName [
	^ variableName
]

{ #category : #accessing }
ASTCTypeChecker >> variableName: aVariableName [
	variableName := aVariableName
]
