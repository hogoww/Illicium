"
Classes implementing this visit should have for result and annotated RB AST.
The property name can be find on my class side.
Sequences nodes should have a property containing the temporary nodes that they have to declare.
Assignments should have a boolean property saying if they should be declared at this point in the code.

For example:
aMethod
	| t |
	t

The sequence should have as property a set containing the temporary node t. 
<<< self defaultCollection = Set >>>

aMethod
	[ | t | t ]
	
Can either declare t at the start of the method, or at the start of the block

t := 1.

if the property is true, it'll be translated as:
int t = 1;
ifNot:
t = 1; 
"
Class {
	#name : #FAVariableDeclarationAnnotator,
	#superclass : #ASTCAbstractCheckVisitor,
	#category : #'Angler-RBVisitors-declaration'
}

{ #category : #accessing }
FAVariableDeclarationAnnotator class >> defaultCollection [
	^ Set
]

{ #category : #accessing }
FAVariableDeclarationAnnotator class >> property [
	^#toDeclare
]
