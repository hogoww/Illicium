Class {
	#name : #ASTCPluginMover,
	#superclass : #Object,
	#category : #'Angler-Core-installers'
}

{ #category : #accessing }
ASTCPluginMover >> movePluginInVmDirectory: aFileName [
	| res virtualMachine moveCommand |
	virtualMachine := VirtualMachine new.
	moveCommand := String
		streamContents: [ :s | 
			s << 'mv ./generated/' << aFileName << '.so '
				<< virtualMachine directory ].
	res := LibC runCommand: moveCommand.
	res = 0
		ifTrue: [ ^ self ].
	Error signal: 'plugin didn''t move for some reason'.
	Clipboard clipboardText: moveCommand.
	self halt.
]
