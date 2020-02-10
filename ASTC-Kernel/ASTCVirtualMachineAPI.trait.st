Trait {
	#name : #ASTCVirtualMachineAPI,
	#instVars : [
		'#interpreterProxy'
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
	<doNotGenerate>
	^ 0
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> methodArgumentCount [
	<doNotGenerate>
	^ 0
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> pop: number [
	<doNotGenerate>
	
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> popAndGet [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	"returns the reasonCode"
	^ Object new
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> primitiveFail [
	<doNotGenerate>
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> primitiveFailed [ 
	<doNotGenerate>
]

{ #category : #'simulation only' }
ASTCVirtualMachineAPI >> pushBool: aBoolean [
	<doNotGenerate>
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> setInterpreter: anInterpreterProxy [
	interpreterProxy := anInterpreterProxy.
	^1 "The VM considers that setInterpreter failed, if you return 0."
]
