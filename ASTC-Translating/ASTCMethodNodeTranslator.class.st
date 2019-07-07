Class {
	#name : #ASTCMethodNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCMethodNodeTranslator >> translateNode: aMethodNode withMainTranslator: aTranslator [
	^ ASTCFunctionDefinition new
		declaration:
			(ASTCFunctionDeclaration new
				id:
					(ASTCIdentifier new
						id: (self formatSelector: aMethodNode selector);
						yourself);
				type:
					(ASTCType new
						type: (self visitType: aMethodNode);
						yourself);
				parameters:
					(ASTCContainer new
						visitArgs: aMethodNode arguments with: self;
						yourself);
				yourself);
		body: (self visitNode: aMethodNode body);
		yourself
]
