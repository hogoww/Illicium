Class {
	#name : #ASTCFromPharo,
	#superclass : #RBProgramNodeVisitor,
	#category : #ASTCBuilder
}

{ #category : #'as yet unclassified' }
ASTCFromPharo class >> factorialRTest [
	self flag:#transcript.
	Transcript clear.
	^self new visitMethodSelector: #factorialR: fromClass: RandomTestClass .
]

{ #category : #visiting }
ASTCFromPharo >> visitLiteralNode: aLiteralNode [
	aLiteralNode crLog.
]

{ #category : #visiting }
ASTCFromPharo >> visitMessageNode: aMessageNode [
	aMessageNode selector perform.

	super visitMessageNode: aMessageNode.
]

{ #category : #visiting }
ASTCFromPharo >> visitMethodSelector: aSelector fromClass: aClass [
	| methodAST|
	methodAST:=(aClass compiledMethodAt:aSelector) ast.
	^methodAST acceptVisitor: self.
	
]
