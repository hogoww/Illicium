Class {
	#name : #ASTCMiscPluginPrimitiveTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompareString [
	| cu |
	cu := translator translateMethod: #primitiveCompareString fromClass: MiscPrimitivePlugin.
	^ cu
]

{ #category : #tests }
ASTCMiscPluginPrimitiveTest >> testPrimitiveCompareStringFirstHalf [
	| cu |
	cu := translator translateMethod: #primitiveCompareStringFirstHalf fromClass: MiscPrimitivePlugin.
	^ cu
]
