Class {
	#name : #ILMethodNodeTestTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #translate }
ILMethodNodeTestTranslator >> translateParameters: aMethodNode [
	| 	parameters |
	parameters := super translateParameters: aMethodNode.
	
	self flag: #CuTest.
	"every method in a test class needs to have the test as parameter for the CFrameWork CuTest"
	(aMethodNode methodClass includesBehavior: TestCase) 
		ifTrue: [ 
			^ { 
				ASTCVariableDeclaration new 
					id: (ASTCIdentifier id: #testCase);
					type: #'CuTest*' asCTypeNode;
					yourself
			 } , parameters ].
	
	methodTranslator isStatefulCode ifFalse: [ ^ parameters ].
	
	^ { 
		ASTCVariableDeclaration new 
			id: (ASTCIdentifier id: #self);
			type: aMethodNode methodClass name asCTypeNode;
			yourself
	 } , parameters
]
