Trait {
	#name : #ASTCVirtualMachineAPI,
	#instVars : [
		'interpreterProxy'
	],
	#category : #'ASTC-Translation'
}

{ #category : #initialization }
ASTCVirtualMachineAPI >> initialize [
	<doNotGenerate>
	interpreterProxy := ASTCInterpreterProxy new.
	^self
]
