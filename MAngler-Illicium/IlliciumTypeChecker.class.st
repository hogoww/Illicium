Class {
	#name : #IlliciumTypeChecker,
	#superclass : #Object,
	#instVars : [
		'types',
		'node',
		'inferer',
		'variableName'
	],
	#category : #'MAngler-Illicium-Analysis'
}

{ #category : #'as yet unclassified' }
IlliciumTypeChecker class >> checkThatType: types for: aNode using: inferer [
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
IlliciumTypeChecker class >> type: types using: anInferer forVar: aString [
	^ self new
		types: types;
		inferer: anInferer;
		variableName: aString;
		check
]

{ #category : #'as yet unclassified' }
IlliciumTypeChecker >> check [
	(types isMultipleType)
		ifTrue:[ [ types removeType: UndefinedObject asConstraint ] on: NotFound do: [ ] ].

	(types isMultipleType)
		ifTrue:[ [ types removeType: Object asConstraint ] on: NotFound do: [] ].
    
	self nodeCheck.
	
	(types isMultipleType and: [ types types includesAll: {Float asTypeReification. BoxedFloat64 asTypeReification}]) ifTrue:[ types removeType: BoxedFloat64].
	
	(types isMultipleType)
		ifTrue:[ [ types removeType: Object ] on: NotFound do: [ TypeAmbiguity new types: types ; signal ] ].
	
	
	types isEmptyType
		ifTrue: [ "use the next statement to look what stopped the execution, and type it by hand
			inferer blockingStuff inspect.
			"
			node isBlock ifTrue:[ ^ EmptyType new ].
			NoTypeFound new something: variableName ; signal ].
	types isMultipleType
		ifTrue: [ TypeAmbiguity new types: types ; signal ].
	^ types
]

{ #category : #accessing }
IlliciumTypeChecker >> inferer [
	^ inferer
]

{ #category : #accessing }
IlliciumTypeChecker >> inferer: anInferer [ 
	inferer := anInferer
]

{ #category : #accessing }
IlliciumTypeChecker >> node [ 
	^ node
]

{ #category : #accessing }
IlliciumTypeChecker >> node: aNode [ 
	node := aNode
]

{ #category : #'as yet unclassified' }
IlliciumTypeChecker >> nodeCheck [
	node ifNil:[ ^ self ].
	
	(types isMultipleType and:
	[ (node isMethod and:
	[ types types anySatisfy: [:aType| aType type name = node methodClass name ]])]) 
	ifTrue:[ types removeType: node methodClass ].	"remove implicit returns from primitives if it's not the only one"
]

{ #category : #accessing }
IlliciumTypeChecker >> types [
	^ types
]

{ #category : #accessing }
IlliciumTypeChecker >> types: aCollectionOfType [
	types := aCollectionOfType
]

{ #category : #accessing }
IlliciumTypeChecker >> variableName [
	^ variableName
]

{ #category : #accessing }
IlliciumTypeChecker >> variableName: aVariableName [
	variableName := aVariableName
]
