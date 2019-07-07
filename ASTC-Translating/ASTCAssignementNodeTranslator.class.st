Class {
	#name : #ASTCAssignementNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#instVars : [
		'translators'
	],
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCAssignementNodeTranslator >> translateNode: anAssignmentNode withMainTranslator: aTranslator [
	^ (anAssignmentNode
		propertyAt: IsItTheFirstAssignmentChecker property)
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
								id: (anAssignmentNode variable acceptVisitor: self);
								yourself);
						init: (anAssignmentNode value acceptVisitor: self);
						yourself);
				yourself ]
		ifFalse: [ ASTCExpressionStatement new
				expression:
					(ASTCOperator new
						symbol: '=';
						operands:
							(ASTCContainer new
								add: (anAssignmentNode variable acceptVisitor: self);
								add: (anAssignmentNode value acceptVisitor: self);
								yourself);
						yourself);
				yourself ]
]
