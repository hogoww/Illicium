Class {
	#name : #ASTCFFTPlugginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCFFTPlugginTest >> testPermuteData [
	| cu |
	self flag: #Failure." hasReturn is not good enough"
	
	cu := translator translateMethod: #permuteData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPrimitiveFFTPermuteData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveFFTPermuteData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPrimitiveFFTScaleData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveFFTScaleData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testPrimitiveFFTTransformData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveFFTTransformData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPlugginTest >> testScaleData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #scaleData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]
