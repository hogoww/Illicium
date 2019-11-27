Class {
	#name : #ASTCFloatArrayPlugginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAddFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAddFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAddScalar [
	| cu |
	self flag: #working.
	"Not too bad. Missing the logic of the do, nil, and cCoerce. also the type annotation for value is not taken into account correctly."
	
	cu := translator translateMethod: #primitiveAddScalar fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAt [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAt fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAtPut [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAtPut fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveDivFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveDivFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveDivScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAtPut fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveDotProduct [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveAtPut fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveEqual [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveEqual fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveHashArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveHashArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveMulFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveMulFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveMulScalar [
	| cu |
	self flag: #working.
	"Not too bad. Missing the logic of the do, nil, and cCoerce. also the type annotation for value is not taken into account correctly."
	cu := translator translateMethod: #primitiveMulScalar fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveNormalize [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveNormalize fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveSubFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSubFloatArray fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveSubScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSubScalar fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveSum [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := translator translateMethod: #primitiveSum fromClass: FloatArrayPlugin .
	self assert: cu isStructuralyValidAST.
	^ cu
]
