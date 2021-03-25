Class {
	#name : #MAIlliciumAssignementTranslator,
	#superclass : #FAAssignementNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #translate }
MAIlliciumAssignementTranslator >> isNodeDeclared: anAssignmentNode [
	"an assignement variable can be declared either at start or on the spot.
	returns true if it's declared at the start of the block
	return false if it has to be declared"
	^ (anAssignmentNode propertyAt: FAVariableDeclarationAnnotator propertyName)
]

{ #category : #translate }
MAIlliciumAssignementTranslator >> translateAndDeclare: anAssignmentNode [
	| leftOperand rightOperand |
	leftOperand := (anAssignmentNode variable acceptVisitor: methodTranslator).
	rightOperand := (anAssignmentNode value acceptVisitor: methodTranslator).
	^ ASTCDeclarationStatement new
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
		yourself
]

{ #category : #translate }
MAIlliciumAssignementTranslator >> translateNode: anAssignmentNode [
	| leftOperand rightOperand |
	leftOperand := (anAssignmentNode variable acceptVisitor: methodTranslator).
	rightOperand := (anAssignmentNode value acceptVisitor: methodTranslator).
	
	"This is an old thing, I don't think it matters anymore."
	"rightOperand isEmptyStatement ifTrue: [ ^ rightOperand ""Happens when the statement is something that is translated in the declaration, such as an Array Declaration"" ]."

"	self haltIf: anAssignmentNode value isLiteralArray."

	(self isNodeDeclared: anAssignmentNode)
		ifFalse: [ ^ self translateWithoutDeclaring: anAssignmentNode ].

	^ self translateAndDeclare: anAssignmentNode
]

{ #category : #translate }
MAIlliciumAssignementTranslator >> translateWithoutDeclaring: anAssignmentNode [
	| leftOperand rightOperand |
	leftOperand := (anAssignmentNode variable acceptVisitor: methodTranslator).
	rightOperand := (anAssignmentNode value acceptVisitor: methodTranslator).
	^ ASTCAssignmentOperator new
		pharoNode: anAssignmentNode;
		comment: anAssignmentNode commentOrNil;
		leftOperand: leftOperand;
		rightOperand: rightOperand;
		yourself 
]
