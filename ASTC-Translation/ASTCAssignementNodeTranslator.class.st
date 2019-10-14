Class {
	#name : #ASTCAssignementNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCAssignementNodeTranslator >> translateNode: anAssignmentNode [
	^ (anAssignmentNode
		propertyAt: ASTCShouldItBeDeclared property)
		ifTrue: [ "type checking"
			"creation of the return node."
			ASTCDeclarationStatement new
				declaration:
					(ASTCVariableDefinition new
						declaration:
							(ASTCVariableDeclaration new
								type:
									(ASTCType new
										type: (methodTranslator getNodeTranslationType: anAssignmentNode variable);
										yourself);
								id: (anAssignmentNode variable acceptVisitor: methodTranslator);
								yourself);
						init: (anAssignmentNode value acceptVisitor: methodTranslator);
						yourself);
				yourself ]
		ifFalse: [ ASTCExpressionStatement new
				expression:
					(ASTCOperator new
						symbol: '=';
						operands:
							(ASTCContainer new
								add: (anAssignmentNode variable acceptVisitor: methodTranslator);
								add: (anAssignmentNode value acceptVisitor: methodTranslator);
								yourself);
						yourself);
				yourself ]
]
