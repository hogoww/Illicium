Class {
	#name : #ASTCInflatePluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCInflatePluginTest >> testPrimitiveInflateDecompressBlock [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveInflateDecompressBlock fromClass: InflatePlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]
