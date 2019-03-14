"
I represent a container which is the chosen translation for the metamodel's aggregation.

I am responsible to implement the interface needed for the ASTC nodes. 
I contain other ASTC nodes, for nodes that need it (for example, an ASTCBlock contains some ASTCStatement(s))
I know who owns me, and a collection of nodes i own.

##################### To change:
I use the doNotUnderstand indirection for now, not knowing exactly what limits i'll have to have.

I collabore with every ASTCNodes that may need me post generation of the metamodel (ASTCBlock, ASTCDeclaration... )



- doesNotUnderstand override, redirects the messages to the collection directly.
- add: aNode / at:index put: aNode / [ ... ] set the parent of the adopted node to self.
- ASTCContainer new. ""Nothing special""

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	collection:		<Object> Collection which i'll use, available for customization in #initialize
	parent:		<Object> instance variable to who owns me.

"
Class {
	#name : #ASTCContainer,
	#superclass : #Object,
	#instVars : [
		'collection',
		'parent'
	],
	#category : #ASTCBuilder
}

{ #category : #comparing }
ASTCContainer >> = anotherContainer [
	^ (anotherContainer isKindOf: self class)
		and:[ self collection = anotherContainer collection]
]

{ #category : #initialization }
ASTCContainer >> add:anObject [
	"add an object to the end of the collection, and set it's parent to self."
	collection add:anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #initialization }
ASTCContainer >> at: anIndex [
	^ collection at: anIndex 
]

{ #category : #initialization }
ASTCContainer >> at: index put: anObject [
	"put anobject to the index given in the collection, and set it's parent to self."
	self collection at:index put:anObject.	
	anObject parent: self.
	^anObject
]

{ #category : #initialization }
ASTCContainer >> atLastPut:anObject [
	"add an object to the end of the collection, and set it's parent to self."
	collection atLast:0 put:anObject.
	anObject parent:self.
	^anObject.
]

{ #category : #initialization }
ASTCContainer >> collection [
	"accessor. If you modify the collection without going throught this interface, i can't garantee anything."
	^collection
]

{ #category : #initialization }
ASTCContainer >> collection:aCollection [
	"accessor, and put the parents of the new collection to self"
	collection:=aCollection.
	collection do:[:each | each parent:self.].
	^aCollection.
]

{ #category : #initialization }
ASTCContainer >> doesNotUnderstand: aMessage [
	"indirection of the message to my collection. Should be removed when the interface will be good enough"
	self flag:#toRemove.
	^aMessage sendTo:collection
]

{ #category : #comparing }
ASTCContainer >> hash [
	^ collection hash
]

{ #category : #initialization }
ASTCContainer >> initialize [
	self flag:#modularity."Shouldn't hardcode the collection's class."
	"Initialize for ASTCContainer."

	collection:=LinkedList new."A linked list so far, could be changed."
	parent:=nil."parent will be set by my future parent"
]

{ #category : #initialization }
ASTCContainer >> parent [
	"accessor"
	^parent
]

{ #category : #initialization }
ASTCContainer >> parent:aNode [
	"accessor"
	parent:=aNode.
	^parent.
]

{ #category : #initialization }
ASTCContainer >> size [
	^ self collection size
]
