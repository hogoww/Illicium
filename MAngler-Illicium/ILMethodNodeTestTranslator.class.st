Class {
	#name : #ILMethodNodeTestTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #translate }
ILMethodNodeTestTranslator >> translateParameters: aMethodNode [
	| 	parameters |
	parameters := super translateParameters: aMethodNode.
	
	methodTranslator isStatefulCode ifFalse: [ ^ parameters ].	
	aMethodNode methodClass = UndefinedObject ifTrue: [ ^ parameters ].

	^ {
		ASTCVariableDeclaration new 
			id: (ASTCIdentifier id: #'self*');
			type: aMethodNode methodClass name asCTypeNode;
			yourself
	 } , parameters
]
