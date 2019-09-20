Class {
	#name : #ASTCLiteralNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-Methods'
}

{ #category : #translate }
ASTCLiteralNodeTranslator >> translateNode: aNode withMethodTranslator: aTranslator [
	"Fix, for Pharo 7. RBVisitor Was pull request in P8 to work as it should"
	^ aTranslator visitLiteralValueNode: aNode 
]
