Class {
	#name : #ASTCFloatArrayPluggin,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveAddFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAddFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveAddScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAddScalar fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveAt [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAt fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveAtPut [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAtPut fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveDivFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveDivFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveDivScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAtPut fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveDotProduct [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAtPut fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveEqual [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveEqual fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveHashArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveHashArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveMulFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveMulFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveMulScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveMulScalar fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveNormalize [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveNormalize fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveSubFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSubFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveSubScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSubScalar fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPluggin >> testPrimitiveSum [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSum fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]
