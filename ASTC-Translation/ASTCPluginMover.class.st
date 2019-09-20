Class {
	#name : #ASTCPluginMover,
	#superclass : #Object,
	#category : #'ASTC-Translation-Installers'
}

{ #category : #'as yet unclassified' }
ASTCPluginMover >> movePluginInVmDirectory: aFileName [ 
	| res virtualMachine |
	virtualMachine := VirtualMachine new.
	res:=LibC runCommand: (String streamContents: [:s| s << 'mv ./generated/' << aFileName << '.so ' << virtualMachine directory ]). 
	res = 0
	ifFalse:[self error:'plugin didn''t move for some reason'].
]
