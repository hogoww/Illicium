Class {
	#name : #ASTCRawDeclaration,
	#superclass : #ASTCDeclarationStatement,
	#instVars : [
		'rawDeclaration',
		'varName'
	],
	#category : #'ASTC-Gen-Nodes'
}

{ #category : #testing }
ASTCRawDeclaration >> = aRawDeclaration [
  super = aRawDeclaration ifFalse: [ ^false ].
  rawDeclaration = aRawDeclaration rawDeclaration ifFalse: [ ^false ].
  varName = aRawDeclaration varName ifFalse: [ ^false ].
  ^true
]

{ #category : #testing }
ASTCRawDeclaration >> acceptVisitor: aVisitor [
  aVisitor visitRawDeclaration: self
]

{ #category : #testing }
ASTCRawDeclaration >> isRawDeclaration [
  ^true
]

{ #category : #accessing }
ASTCRawDeclaration >> rawDeclaration [
  ^rawDeclaration
]

{ #category : #accessing }
ASTCRawDeclaration >> rawDeclaration: aRawDeclaration [
  rawDeclaration := aRawDeclaration
]

{ #category : #accessing }
ASTCRawDeclaration >> varName [
  ^varName
]

{ #category : #accessing }
ASTCRawDeclaration >> varName: aVarName [
  varName := aVarName
]
