Class {
	#name : #FAAssignementNodeTranslator,
	#superclass : #FANodeTranslator,
	#category : #'FAngler-Core-Nodes-translators'
}

{ #category : #translate }
FAAssignementNodeTranslator >> translateNode: anAssignmentNode [
	^ (anAssignmentNode
		propertyAt: FAVariableDeclarationAnnotator propertyName)
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
				leftOperand: (anAssignmentNode variable acceptVisitor: methodTranslator);
				rightOperand: (anAssignmentNode value acceptVisitor: methodTranslator);
				yourself ]
]
