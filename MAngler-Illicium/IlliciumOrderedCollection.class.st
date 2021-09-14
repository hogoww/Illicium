Class {
	#name : #IlliciumOrderedCollection,
	#superclass : #IlliciumAbstractCollection,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #adding }
IlliciumOrderedCollection >> add: anElement [

	"receiverNode isNode ifFalse: [ self error: 'Currently only defined for translated arguments' ]."
	
	^ self asFunctionCall: #addElement_To
			withTranslatedArguments: { anElement acceptVisitor: methodTranslator . self translatedReceiver. }.
]

{ #category : #accessing }
IlliciumOrderedCollection >> at: anInteger [
	self flag: #todo.
	^ self asFunctionCall: #todo
]

{ #category : #iteration }
IlliciumOrderedCollection >> do: aRBBlockNode [ 
	self flag: #todo.
	^ self asFunctionCall: 'doO'
]

{ #category : #iteration }
IlliciumOrderedCollection >> doWithIndex: aRBBlockNode [ 
	self flag: #todo.
	^ self asFunctionCall: #todo.
]

{ #category : #accessing }
IlliciumOrderedCollection >> first [
self halt.
	^ self at: 1 asLiteralNode
]

{ #category : #accessing }
IlliciumOrderedCollection >> ifEmpty: something [
	self flag: #todo.
	^ self asFunctionCall: #todo
]

{ #category : #accessing }
IlliciumOrderedCollection >> last [

	self flag: #todo.
	^ self asFunctionCall: #todo
]

{ #category : #accessing }
IlliciumOrderedCollection >> nextToLast [
	^ self translatedReceiver indexAt: 
		((ASTCIdentifier id: #self) -> (ASTCIdentifier id: #arg)) - (ASTCLiteral value: 1)
]

{ #category : #accessing }
IlliciumOrderedCollection >> size [
	self flag: #todo.
	^ self asFunctionCall: #todo.
]
