Class {
	#name : #ASTCTypeChecker,
	#superclass : #Object,
	#instVars : [
		'types',
		'node'
	],
	#category : #'ASTC-VisitorsRB-Typing'
}

{ #category : #'as yet unclassified' }
ASTCTypeChecker class >> checkThatType: types for: aNode [
	^ self new types: types ; node: aNode ; yourself
]

{ #category : #'as yet unclassified' }
ASTCTypeChecker >> checkThatType: types for: aNode [
	(types size > 1 and:[ (aNode isMethod and:[types anySatisfy: [:aType| aType name = aNode methodClass name ]])]) 
	ifTrue:[ types remove: aNode methodClass ].	"remove implicit returns from primitives if it's not the only one"
	
	(types size > 1)
	ifTrue:[ [ types remove: UndefinedObject ] on: NotFound do: [ ] ].
	(types size > 1)
	ifTrue:[ [ types remove: Object ] on: NotFound do: [ TypeAmbiguityError new types: types ; signal ] ].
	types size < 1
		ifTrue: [ "use the next statement to look what stopped the execution, and type it by hand
			inferer blockingStuff inspect.
			"
			NoTypeFound signal ].
	types size > 1
		ifTrue: [ TypeAmbiguityError new types: types ; signal ].
]

{ #category : #accessing }
ASTCTypeChecker >> node [ 
	^ node
]

{ #category : #accessing }
ASTCTypeChecker >> node: aNode [ 
	node := aNode
]

{ #category : #accessing }
ASTCTypeChecker >> types [
	^ types
]

{ #category : #accessing }
ASTCTypeChecker >> types: aCollectionOfType [
	types := aCollectionOfType
]
