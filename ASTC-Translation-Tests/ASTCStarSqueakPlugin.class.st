Class {
	#name : #ASTCStarSqueakPlugin,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCStarSqueakPlugin >> testPrimitiveDiffuseFromToWidthHeightDelta [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveDiffuseFromToWidthHeightDelta fromClass: StarSqueakPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCStarSqueakPlugin >> testPrimitiveEvaporateRate [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveEvaporateRate fromClass: StarSqueakPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCStarSqueakPlugin >> testPrimitiveMapFromToWidthHeightPatchSizeRgbFlagsShift [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveMapFromToWidthHeightPatchSizeRgbFlagsShift fromClass: StarSqueakPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]
