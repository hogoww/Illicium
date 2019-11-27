Class {
	#name : #ASTCTypeChecker,
	#superclass : #Object,
	#instVars : [
		'types',
		'node',
		'inferer'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #'as yet unclassified' }
ASTCTypeChecker class >> checkThatType: types for: aNode using: inferer [
	^ self new types: types ; node: aNode ; inferer: inferer ; check
]

{ #category : #'as yet unclassified' }
ASTCTypeChecker class >> type: types using: anInferer [
	^ self new types: types ; inferer: anInferer ; check
]

{ #category : #'as yet unclassified' }
ASTCTypeChecker >> check [
	(types size > 1)
		ifTrue:[ [ types remove: Object ] on: NotFound do: [] ].
	self nodeCheck.
	
	(types size > 1)
		ifTrue:[ [ types remove: UndefinedObject ] on: NotFound do: [ ] ].
	(types size > 1)
		ifTrue:[ [ types remove: Object ] on: NotFound do: [ TypeAmbiguityError new types: types ; signal ] ].
	
	
	types size < 1
		ifTrue: [ "use the next statement to look what stopped the execution, and type it by hand
			inferer blockingStuff inspect.
			"
			NoTypeFound new something: node ; signal ].
	types size > 1
		ifTrue: [ TypeAmbiguityError new types: types ; signal ].
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
