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
 	"moduleName"
	self setInterpreter: ASTCInterpreterProxy new.
	"initplugin or something"
	^self
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> majorVersion [
	
	^ 0
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> methodArgumentCount [

	^ 0
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> pop: number [

	
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> primitiveFail [

]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> pushBool: aBoolean [
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> setInterpreter: anInterpreterProxy [
	interpreterProxy := anInterpreterProxy.
	^1 "The VM considers that setInterpreter failed, if you return 0."
]
