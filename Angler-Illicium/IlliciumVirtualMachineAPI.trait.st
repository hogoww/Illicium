Trait {
	#name : #IlliciumVirtualMachineAPI,
	#instVars : [
		'interpreterProxy'
	],
	#category : #'Angler-Illicium-messages-translators'
}

{ #category : #'as yet unclassified' }
IlliciumVirtualMachineAPI classSide >> doNotGeneratePragma [
	^ #doNotGenerate
]

{ #category : #'as yet unclassified' }
IlliciumVirtualMachineAPI classSide >> primitiveName [
	^#primitiveToBe
]

{ #category : #initialization }
IlliciumVirtualMachineAPI >> initializePlugin [
	<doNotGenerate>
 	"moduleName"
	self setInterpreter: IlliciumInterpreterProxy new.
	"initplugin or something"
	^self
]

{ #category : #'simulation only' }
IlliciumVirtualMachineAPI >> majorVersion [
	<doNotGenerate>
	^ 0
]

{ #category : #'simulation only' }
IlliciumVirtualMachineAPI >> methodArgumentCount [
	<doNotGenerate>
	^ 0
]

{ #category : #'simulation only' }
IlliciumVirtualMachineAPI >> pop: number [
	<doNotGenerate>
	
]

{ #category : #initialization }
IlliciumVirtualMachineAPI >> popAndGet [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	"returns the reasonCode"
	^ Object new
]

{ #category : #'simulation only' }
IlliciumVirtualMachineAPI >> primitiveFail [
	<doNotGenerate>
]

{ #category : #initialization }
IlliciumVirtualMachineAPI >> primitiveFailed [ 
	<doNotGenerate>
]

{ #category : #'simulation only' }
IlliciumVirtualMachineAPI >> pushBool: aBoolean [
	<doNotGenerate>
]

{ #category : #initialization }
IlliciumVirtualMachineAPI >> setInterpreter: anInterpreterProxy [
	interpreterProxy := anInterpreterProxy.
	^1 "The VM considers that setInterpreter failed, if you return 0."
]
