Class {
	#name : #ASTCLiteralNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translating-Methods'
}

{ #category : #translate }
ASTCLiteralNodeTranslator >> translateNode: aNode withMainTranslator: aTranslator [
	"Fix, for Pharo 7. RBVisitor Was pull request in P8 to work as it should"
	^ aTranslator visitLiteralValueNode: aNode 
]
