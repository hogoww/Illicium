Class {
	#name : #ASTCStarSqueakPluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCStarSqueakPluginTest >> setUp [
	super setUp.
	pluginClass := StarSqueakPlugin
]

{ #category : #tests }
ASTCStarSqueakPluginTest >> testPrimitiveDiffuseFromToWidthHeightDelta [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveDiffuseFromToWidthHeightDelta.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCStarSqueakPluginTest >> testPrimitiveEvaporateRate [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveEvaporateRate.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCStarSqueakPluginTest >> testPrimitiveMapFromToWidthHeightPatchSizeRgbFlagsShift [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveMapFromToWidthHeightPatchSizeRgbFlagsShift.
	self assert: cu isStructuralyValidAST.
	^ cu
]
