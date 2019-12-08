Class {
	#name : #ASTCMiscPluginPrimitiveTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> setUp [
	super setUp.
	pluginClass := MiscPrimitivePlugin
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompareString [
	| cu |
	cu := self translateMethod: #primitiveCompareString.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompareStringFirstHalf [
	| cu |
	cu := self translateMethod: #primitiveCompareStringFirstHalf.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompressToByteArray [
	| cu |
	cu := self translateMethod: #primitiveCompressToByteArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveConvert8BitSigned [
	| cu |
	cu := self translateMethod: #primitiveConvert8BitSigned.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveDecompressFromByteArray [
	| cu |
	cu := self translateMethod: #primitiveDecompressFromByteArray.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveFindFirstInString [
	| cu |
	cu := self translateMethod: #primitiveFindFirstInString.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveFindSubstring [
	| cu |
	cu := self translateMethod: #primitiveFindSubstring.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveIndexOfAsciiInString [
	| cu |
	cu := self translateMethod: #primitiveIndexOfAsciiInString.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveStringHash [
	| cu |
	cu := self translateMethod: #primitiveStringHash.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveTranslateStringWithTable [
	| cu |
	cu := self translateMethod: #primitiveTranslateStringWithTable.
	self assert: cu isStructuralyValidAST.
	^ cu
]
