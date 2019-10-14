Class {
	#name : #ASTCLiteralNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCLiteralNodeTranslator >> translateNode: aNode [
	"Fix, for Pharo 7. RBVisitor Was pull request in P8 to work as it should"
	^ methodTranslator visitLiteralValueNode: aNode 
]
