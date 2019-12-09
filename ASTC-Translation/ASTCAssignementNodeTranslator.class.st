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
				pharoNode: anAssignmentNode;
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
		ifFalse: [ 
			(ASTCOperator new
				symbol: '=';
				addOperand: (anAssignmentNode variable acceptVisitor: methodTranslator);
				addOperand: (anAssignmentNode value acceptVisitor: methodTranslator);
				yourself).
			]
]
