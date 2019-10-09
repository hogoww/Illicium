Class {
	#name : #ASTCMiscPluginPrimitiveTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompareString [
	translator translateMethod: #primitiveCompareString fromClass: MiscPrimitivePlugin.
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompareStringFirstHalf [
	translator translateMethod: #primitiveCompareStringFirstHalf fromClass: MiscPrimitivePlugin.
]
