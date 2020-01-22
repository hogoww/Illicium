Class {
	#name : #ASTCCascadeNodeTranslator,
	#superclass : #ASTCNodeTranslator,
	#category : #'ASTC-Translation-ast-nodes'
}

{ #category : #translate }
ASTCCascadeNodeTranslator >> translateNode: aCascadeNode [
	aCascadeNode messages do: [:aMessage| aMessage acceptVisitor: methodTranslator ].


]
