Class {
	#name : #ASTCB3DAcceleratorPluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testCheckBoundsRangeFacesCount [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #checkBoundsRange:faces:count: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testFetchLightSourceOfObject [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #fetchLightSource:ofObject: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testLoadClientStateVertiesColorsNormalsTexCoords [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #loadClientState:vertices:colors:normals:texCoords: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveAllocateTexture [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveCompositeTexture fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveCompositeTexture [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveCompositeTexture fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDestroyRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveDestroyRenderer fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDestroyTexture [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveDestroyTexture fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDrawArrays [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveDrawArrays fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDrawElements [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveDrawElements fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveEnableDrawRangeChecks [
	| cu |
	self flag: #working. 
	"pretty good actually"
	
	cu := translator translateMethod: #primitiveEnableDrawRangeChecks fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveFinishRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveFinishRenderer fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveFlushRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveFlushRenderer fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererColorMasks [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveGetRendererColorMasks fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceDepth [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveGetRendererSurfaceDepth fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceHandle [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveGetRendererSurfaceHandle fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceHeight [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveGetRendererSurfaceHeight fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceWidth [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveGetRendererSurfaceWidth fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveIsOverlayRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveIsOverlayRenderer fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveRenderVertexBuffer [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveRenderVertexBuffer fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveRendererVersion [
	| cu |
	self flag: #instanceVariable."type annotation are on the class side, need to get them somehow"
	
	cu := translator translateMethod: #primitiveRendererVersion fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetBufferRect [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveSetBufferRect fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetFog [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSetFog fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetLights [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveSetLights fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetMaterial [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSetMaterial fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSwapRendererBuffers [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveSwapRendererBuffers fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureByteSex [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveTextureByteSex fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureDepth [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveTextureDepth fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureGetColorMasks [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveTextureGetColorMasks fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureSurfaceHandle [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := translator translateMethod: #primitiveTextureSurfaceHandle fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureUpload [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveTextureUpload fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackLightArrayValue [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #stackLightArrayValue: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackMaterialValue [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #stackMaterialValue: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackMatrix [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #stackMatrix: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackPrimitiveIndexArrayOfSizeValidateForVertexSize [ 
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #stackPrimitiveIndexArray:ofSize:validate:forVertexSize: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackPrimitiveVertexArrayofSize [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := translator translateMethod: #stackPrimitiveVertexArray:ofSize: fromClass: B3DAcceleratorPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]
