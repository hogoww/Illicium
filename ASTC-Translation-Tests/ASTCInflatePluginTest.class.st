Class {
	#name : #ASTCInflatePluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCInflatePluginTest >> setUp [
	super setUp.
	pluginClass := InflatePlugin
]

{ #category : #tests }
ASTCInflatePluginTest >> testPrimitiveInflateDecompressBlock [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveInflateDecompressBlock.
	self assert: cu isStructuralyValidAST.
	^ cu
]
