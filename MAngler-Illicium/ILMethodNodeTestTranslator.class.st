Class {
	#name : #ILMethodNodeTestTranslator,
	#superclass : #FAMethodNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #translate }
ILMethodNodeTestTranslator >> translateBody: aMethodNode [
	| className body |
	body := super translateBody: aMethodNode.
	
	((aMethodNode selector first: 4) = 'test') ifFalse: [ ^ body ]. 

	className := aMethodNode methodClass name.
	body statements addAllFirst: {
		(ASTCDeclarationStatement new declaration:
			(ASTCVariableDeclaration new id: #self asCIdentifierNode ; type: className asCTypeNode ; yourself) ;
			yourself) asStatement.
		(ASTCFunctionCall new id: #setUp asCIdentifierNode ; arguments: { #self asCIdentifierNode } ; yourself) asStatement.
	}.
	body statements addLast: (ASTCFunctionCall new id: #tearDown asCIdentifierNode ; arguments: { #self asCIdentifierNode } ; yourself) asStatement.
	
	^ body
]

{ #category : #translate }
ILMethodNodeTestTranslator >> translateParameters: aMethodNode [
	| 	parameters |
	parameters := super translateParameters: aMethodNode.
	
	self flag: #CuTest.
	"every test method needs to have the test as parameter for the CFrameWork CuTest to be able to assert stuff"
	aMethodNode isTest
		ifTrue: [
			^ { 
				ASTCVariableDeclaration new 
					id: (ASTCIdentifier id: #testCase);
					type: #'CuTest*' asCTypeNode;
					yourself
			 } , parameters ].
	
	methodTranslator isStatefulCode ifFalse: [ ^ parameters ].	
	aMethodNode methodClass = UndefinedObject ifTrue: [ ^ parameters ].

	^ { 
		ASTCVariableDeclaration new 
			id: (ASTCIdentifier id: #self);
			type: aMethodNode methodClass name asCTypeNode;
			yourself
	 } , parameters
]
