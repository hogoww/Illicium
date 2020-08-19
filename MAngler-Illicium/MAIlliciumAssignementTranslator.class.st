Class {
	#name : #MAIlliciumAssignementTranslator,
	#superclass : #FAAssignementNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #translate }
MAIlliciumAssignementTranslator >> translateNode: anAssignmentNode [
	| leftOperand rightOperand |
	leftOperand := (anAssignmentNode variable acceptVisitor: methodTranslator).
	rightOperand := (anAssignmentNode value acceptVisitor: methodTranslator).
	
	rightOperand isEmptyStatement ifTrue: [ ^ rightOperand "Happens when the statement is something that is translated in the declaration, such as an Array Declaration" ].

	^ (anAssignmentNode
		propertyAt: FAVariableDeclarationAnnotator propertyName)
		ifTrue: [
			ASTCDeclarationStatement new
				pharoNode: anAssignmentNode;
				declaration:
					(ASTCVariableDefinition new
						declaration:
							(ASTCVariableDeclaration new
								type: (methodTranslator getNodeConcreteType: anAssignmentNode variable) asCTypeNode;
								id: leftOperand;
								yourself);
						init: rightOperand;
						yourself);
				yourself ]
		ifFalse: [
			ASTCAssignmentOperator new
				pharoNode: anAssignmentNode;
				comment: anAssignmentNode commentOrNil;
				leftOperand: leftOperand;
				rightOperand: rightOperand;
				yourself ]
]
