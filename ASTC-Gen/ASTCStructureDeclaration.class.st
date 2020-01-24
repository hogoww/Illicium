Class {
	#name : #ASTCStructureDeclaration,
	#superclass : #ASTCDeclaration,
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCStructureDeclaration >> = aStructureDeclaration [
  super = aStructureDeclaration ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCStructureDeclaration >> acceptVisitor: aVisitor [
  aVisitor visitStructureDeclaration: self
]

{ #category : #testing }
ASTCStructureDeclaration >> isStructureDeclaration [
  ^true
]
