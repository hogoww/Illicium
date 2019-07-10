Trait {
	#name : #ASTCVirtualMachineAPI,
	#instVars : [
		'interpreterProxy'
	],
	#category : #'ASTC-Kernel'
}

{ #category : #'as yet unclassified' }
ASTCVirtualMachineAPI classSide >> doNotGeneratePragma [
	^ #doNotGenerate
]

{ #category : #'as yet unclassified' }
ASTCVirtualMachineAPI classSide >> primitiveName [
	^#primitiveToBe
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> initializePlugin [
	<doNotGenerate>
	"Won't work until we can describe state, since the interpreterProxy has to be global"
	"moduleName"
	self setInterpreter: ASTCInterpreterProxy new.
	"initplugin or something"
	^self
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> setInterpreter: anInterpreterProxy [
	interpreterProxy := anInterpreterProxy.
	^1 "The VM considers that setInterpreter failed, if you return 0."
]
