Trait {
	#name : #ASTCVirtualMachineAPI,
	#instVars : [
		'interpreterProxy'
	],
	#category : #'ASTC-Translation'
}

{ #category : #'as yet unclassified' }
ASTCVirtualMachineAPI classSide >> primitiveName [
	^#primitiveToBe
]

{ #category : #initialization }
ASTCVirtualMachineAPI >> initialize [
	<doNotGenerate>
	"Won't work until we can describe state, since the interpreterProxy has to be global"
	self setInterpreter: ASTCInterpreterProxy new.
	^self
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
	
]
