Class {
	#name : #ASTCPluginMover,
	#superclass : #Object,
	#category : #'ASTC-Translation-Installers'
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
	Error signal: 'plugin didn''t compile (or the comand line sucks)'.
	Clipboard clipboardText: moveCommand.
	self halt.
]
