Class {
	#name : #MAIlliciumAssignementTranslator,
	#superclass : #FAAssignementNodeTranslator,
	#category : #'MAngler-Illicium-NodesTranslator'
}

{ #category : #testing }
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

{ #category : #translating }
MAIlliciumAssignementTranslator >> translateAssigningLiteralArrayToInstanceVariable: anAssignmentNode [ 
	| leftOperand rightOperand  copy definition memcpyDestination memcpySource memcpySize memcpy size |

	 " example  of outputs :
		int c [3] = { 2048, 1024, 6144 };
	 	memcpy(self -> sizesInBreadthFirstOrder,&c,3*sizeof(int));"

	leftOperand := anAssignmentNode variable acceptVisitor: methodTranslator.
	rightOperand := anAssignmentNode value acceptVisitor: methodTranslator.

	"This is probably easier as it shouldn't suffer the same problem, but I would rather code it with a real case."
	methodTranslator isStatefulCode ifFalse: [ self error: 'todo array assignement with unstateful code.'].

	"We reuse the same name because in C it's scoped.
	In stateful code, the slot is in a struct, therefore this does not clash"	
	copy := anAssignmentNode copy.
	copy variable variable: (TemporaryVariable named: copy variable name).

	definition := self translateAndDeclare: copy.
	size := (anAssignmentNode variable propertyAt: #type) size.
	memcpyDestination := anAssignmentNode variable acceptVisitor: methodTranslator.
	memcpySource := definition declaration declaration id copy.
	memcpySize := methodTranslator asFunctionCall: #sizeof withTranslatedArguments: { SmallInteger asConstraint asCTypeNode}.
	memcpy := methodTranslator asFunctionCall: #memcpy withTranslatedArguments: { memcpyDestination . memcpySource asAddressOf. memcpySize * size }.
		
	^ ASTCBlock new 
		addStatement: definition;
		addStatement: memcpy asStatement;
		yourself 
]

{ #category : #translate }
MAIlliciumAssignementTranslator >> translateNode: anAssignmentNode [
	(anAssignmentNode value isLiteralArray and: [ anAssignmentNode variable isInstanceVariableNode ])
		ifTrue: [ ^ self translateAssigningLiteralArrayToInstanceVariable: anAssignmentNode ].

	(self isNodeDeclared: anAssignmentNode)
		ifFalse: [ ^ self translateWithoutDeclaring: anAssignmentNode ].

	^ self translateAndDeclare: anAssignmentNode
	
	
	"This is an old thing, I don't think it matters anymore."
	"rightOperand isEmptyStatement ifTrue: [ ^ rightOperand ""Happens when the statement is something that is translated in the declaration, such as an Array Declaration"" ]."
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
