Class {
	#name : #ASTCInflatePlugin,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCInflatePlugin >> testPrimitiveInflateDecompressBlock [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveInflateDecompressBlock fromClass: InflatePlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]
