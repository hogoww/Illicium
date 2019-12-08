Class {
	#name : #ASTCFloatArrayPlugginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCFloatArrayPlugginTest >> setUp [
	super setUp.
	pluginClass := FloatArrayPlugin
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAddFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveAddFloatArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAddScalar [
	| cu |
	self flag: #working.
	"Not too bad. Missing the logic of the do, nil, and cCoerce. also the type annotation for value is not taken into account correctly."
	
	cu := self translateMethod: #primitiveAddScalar.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAt [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveAt.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveAtPut [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveAtPut.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveDivFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveDivFloatArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveDivScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveDivScalar.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveDotProduct [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveDotProduct.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveEqual [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveEqual.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveHashArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveHashArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveMulFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveMulFloatArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveMulScalar [
	| cu |
	self flag: #working.
	"Not too bad. Missing the logic of the do, nil, and cCoerce. also the type annotation for value is not taken into account correctly."
	cu := self translateMethod: #primitiveMulScalar.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveNormalize [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveNormalize.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveSubFloatArray [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveSubFloatArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveSubScalar [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveSubScalar.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testPrimitiveSum [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primitiveSum.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCFloatArrayPlugginTest >> testTranslateFullPlugin [
	"Bad test, too big, no checking. But test nonetheless"
	"Check only for errors"
	| cu printer |
	cu := translator translateClass: pluginClass.
	printer := ASTCFilePrinter new compilationUnit: cu ; yourself.
	printer fileName: FloatArrayPlugin name ; isPrimitive: true; printInFile.
	printer compileExternalPlugin.
	printer moveInVmDirectory.
	^ cu
]
