Class {
	#name : #ASTCAssignmentAdditionOperator,
	#superclass : #ASTCBinaryOperator,
	#category : #'ASTC-Core-Nodes-Operators'
}

{ #category : #testing }
ASTCAssignmentAdditionOperator >> = anAssignmentAdditionOperator [
	super = anAssignmentAdditionOperator
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCAssignmentAdditionOperator >> acceptVisitor: aVisitor [
	^ aVisitor visitAssignmentAdditionOperator: self
]

{ #category : #testing }
ASTCAssignmentAdditionOperator >> isAssignmentAdditionOperator [
	^ true
]
