Class {
	#name : #ASTCAssignementNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'Angler-Core-ast-nodes'
}

{ #category : #translate }
ASTCAssignementNodeTranslator >> translateNode: anAssignmentNode [
	^ (anAssignmentNode
		propertyAt: ASTCVariableDeclarationAnnotator property)
		ifTrue: [
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
			ASTCAssignmentOperator new
				pharoNode: anAssignmentNode;
				comment: anAssignmentNode commentOrNil;
				addOperand: (anAssignmentNode variable acceptVisitor: methodTranslator);
				addOperand: (anAssignmentNode value acceptVisitor: methodTranslator);
				yourself ]
]
