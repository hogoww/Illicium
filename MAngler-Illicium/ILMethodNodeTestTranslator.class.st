Class {
	#name : #ILMethodNodeTestTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #translate }
ILMethodNodeTestTranslator >> translateParameters: aMethodNode [
	| 	parameters cType |
	parameters := super translateParameters: aMethodNode.
	
	methodTranslator isStatefulCode ifFalse: [ ^ parameters ].	
	aMethodNode methodClass = UndefinedObject ifTrue: [ ^ parameters ].
	self flag: #hack.
	cType := aMethodNode methodClass name asCTypeNode.
	cType type type becomePointer.
	^ {
		ASTCVariableDeclaration new 
			id: (ASTCIdentifier id: #'self');
			type: cType;
			yourself
	 } , parameters
]
