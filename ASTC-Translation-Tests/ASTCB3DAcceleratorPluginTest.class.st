Class {
	#name : #ASTCB3DAcceleratorPluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> setUp [
	super setUp.
	pluginClass := B3DAcceleratorPlugin
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testCheckBoundsRangeFacesCount [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #checkBoundsRange:faces:count:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testFetchLightSourceOfObject [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #fetchLightSource:ofObject:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testLoadClientStateVertiesColorsNormalsTexCoords [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #loadClientState:vertices:colors:normals:texCoords:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveAllocateTexture [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveCompositeTexture.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveCompositeTexture [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveCompositeTexture.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDestroyRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveDestroyRenderer.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDestroyTexture [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveDestroyTexture.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDrawArrays [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveDrawArrays.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveDrawElements [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveDrawElements.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveEnableDrawRangeChecks [
	| cu |
	self flag: #working. 
	"pretty good actually"
	"returns nil, should me transformed to 1 or null."
	
	cu := self translateMethod: #primitiveEnableDrawRangeChecks.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveFinishRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveFinishRenderer.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveFlushRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveFlushRenderer.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererColorMasks [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveGetRendererColorMasks.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceDepth [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveGetRendererSurfaceDepth.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceHandle [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveGetRendererSurfaceHandle.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceHeight [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveGetRendererSurfaceHeight.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveGetRendererSurfaceWidth [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveGetRendererSurfaceWidth.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveIsOverlayRenderer [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveIsOverlayRenderer.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveRenderVertexBuffer [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveRenderVertexBuffer.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveRendererVersion [
	| cu |
	self flag: #instanceVariable."type annotation are on the class side, need to get them somehow"
	
	cu := self translateMethod: #primitiveRendererVersion.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetBufferRect [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveSetBufferRect.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetFog [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveSetFog.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetLights [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveSetLights.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSetMaterial [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveSetMaterial.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveSwapRendererBuffers [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveSwapRendererBuffers.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureByteSex [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveTextureByteSex.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureDepth [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveTextureDepth.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureGetColorMasks [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveTextureGetColorMasks.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureSurfaceHandle [
	| cu |
	self flag: #ambiguousType."type ambiguity, to investigate"
	
	cu := self translateMethod: #primitiveTextureSurfaceHandle.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testPrimitiveTextureUpload [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveTextureUpload.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackLightArrayValue [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #stackLightArrayValue:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackMaterialValue [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #stackMaterialValue:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackMatrix [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #stackMatrix:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackPrimitiveIndexArrayOfSizeValidateForVertexSize [ 
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #stackPrimitiveIndexArray:ofSize:validate:forVertexSize.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCB3DAcceleratorPluginTest >> testStackPrimitiveVertexArrayofSize [
	| cu |
	self flag: #incompleteType."missing parameters need to type it using a primitive, then test it on isolation"
	
	cu := self translateMethod: #stackPrimitiveVertexArray:ofSize:.
	self assert: cu isStructuralyValidAST.
	^ cu
]
