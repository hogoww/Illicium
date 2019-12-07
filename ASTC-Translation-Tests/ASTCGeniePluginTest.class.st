Class {
	#name : #ASTCGeniePluginTest,
	#superclass : #ASTCSlangTranslationTest,
	#category : #'ASTC-Translation-Tests-plugin'
}

{ #category : #tests }
ASTCGeniePluginTest >> setUp [
	super setUp.
	pluginClass := GeniePlugin
]

{ #category : #tests }
ASTCGeniePluginTest >> testCSquaredDistanceFromTo [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #cSquaredDistanceFrom:to:.
	self assert: cu isStructuralyValidAST.
	^ cu
]

{ #category : #tests }
ASTCGeniePluginTest >> testPrimSameClassAbsoluteStrokeDistanceMyPointsOtherPointsMyVectorsOtherVectorsMySquaredLengthsOtherSquaredLengthsMyAnglesOtherAnglesMaxSizeAndReferenceFlagRowBaseRowInsertRemoveRowInsertRemoveCount [
	| cu |
	self flag: #Unsupported."type annotation to fix"
	
	cu := self translateMethod: #primSameClassAbsoluteStrokeDistanceMyPoints:otherPoints:myVectors:otherVectors:mySquaredLengths:otherSquaredLengths:myAngles:otherAngles:maxSizeAndReferenceFlag:rowBase:rowInsertRemove:rowInsertRemoveCount:.
	self assert: cu isStructuralyValidAST.
	^ cu
]
