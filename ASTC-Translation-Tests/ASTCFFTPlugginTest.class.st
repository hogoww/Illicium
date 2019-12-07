Class {
	#name : #ASTCFFTPlugginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCFFTPlugginTest >> setUp [
	super setUp.
	pluginClass := FFTPlugin
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPermuteData [
	| cu |
	self flag: #Failure." hasReturn is not good enough"
	
	cu := self translateMethod: #permuteData.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPrimitiveFFTPermuteData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveFFTPermuteData.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPrimitiveFFTScaleData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveFFTScaleData.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPrimitiveFFTTransformData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveFFTTransformData.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testScaleData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #scaleData.
	self assert: cu isStructuralyValidAST.
	^ cu
]
