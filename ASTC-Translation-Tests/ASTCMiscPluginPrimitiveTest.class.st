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
