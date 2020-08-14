Class {
	#name : #MAIlliciumMethodCleaner,
	#superclass : #MAMethodCleaner,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #cleaning }
MAIlliciumMethodCleaner >> cCode: something [
	<doNotGenerate>
	"inline the code"
	something isBlock ifFalse: [ ^ self ].
	messageNode parent replaceNode: messageNode withNodes: something statements
]

{ #category : #cleaning }
MAIlliciumMethodCleaner >> cCode: something inSmalltalk: somethingElse [
	<doNotGenerate>
	messageNode selector: #cCode:.
	messageNode arguments removeLast.
	self cCode: something
]
