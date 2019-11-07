Class {
	#name : #ASTCFFTPluggin,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCFFTPluggin >> testPermuteData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #permuteData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPluggin >> testPrimitiveFFTPermuteData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveFFTPermuteData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPluggin >> testPrimitiveFFTScaleData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveFFTScaleData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPluggin >> testPrimitiveFFTTransformData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveFFTTransformData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFFTPluggin >> testScaleData [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #scaleData fromClass: FFTPlugin.
	self assert: cu isStructuralyValidAST.
	^ cu
]
