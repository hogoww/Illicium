Class {
	#name : #ILMethodNodeTestTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
ILMethodNodeTestTranslator >> translateParameters: aMethodNode [
	| 	parameters |
	parameters := super translateParameters: aMethodNode.
	
	self flag: #CuTest.
	"every method in a test class needs to have the test as parameter for the CFrameWork CuTest"
	(aMethodNode methodClass includesBehavior: TestCase) ifFalse: [ ^ parameters  ].

	^ { 
	ASTCVariableDeclaration new 
		id: (ASTCIdentifier id: #testCase);
		type: #'CuTest*' asCTypeNode;
		yourself
	 } , parameters 
]
