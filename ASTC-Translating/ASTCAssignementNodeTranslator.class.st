Class {
	#name : #ASTCAssignementNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCAssignementNodeTranslator >> translateNode: anAssignmentNode withMainTranslator: aTranslator [
	^ (anAssignmentNode
		propertyAt: ASTCShouldItBeDeclared property)
		ifTrue: [ "type checking"
			"creation of the return thingy."
			ASTCDeclarationStatement new
				declaration:
					(ASTCVariableDefinition new
						declaration:
							(ASTCVariableDeclaration new
								type:
									(ASTCType new
										type: (aTranslator getNodeTranslationType: anAssignmentNode variable);
										yourself);
								id: (anAssignmentNode variable acceptVisitor: aTranslator);
								yourself);
						init: (anAssignmentNode value acceptVisitor: aTranslator);
						yourself);
				yourself ]
		ifFalse: [ ASTCExpressionStatement new
				expression:
					(ASTCOperator new
						symbol: '=';
						operands:
							(ASTCContainer new
								add: (anAssignmentNode variable acceptVisitor: aTranslator);
								add: (anAssignmentNode value acceptVisitor: aTranslator);
								yourself);
						yourself);
				yourself ]
]
