Class {
	#name : #ASTCStarSqueakPluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCStarSqueakPluginTest >> testPrimitiveDiffuseFromToWidthHeightDelta [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveDiffuseFromToWidthHeightDelta fromClass: StarSqueakPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCStarSqueakPluginTest >> testPrimitiveEvaporateRate [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveEvaporateRate fromClass: StarSqueakPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCStarSqueakPluginTest >> testPrimitiveMapFromToWidthHeightPatchSizeRgbFlagsShift [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveMapFromToWidthHeightPatchSizeRgbFlagsShift fromClass: StarSqueakPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]
