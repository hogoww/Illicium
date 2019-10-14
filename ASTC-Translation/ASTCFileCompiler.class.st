Class {
	#name : #ASTCFileCompiler,
	#superclass : #Object,
	#category : #'ASTC-Translation-installers'
}

{ #category : #compiling }
ASTCFileCompiler >> compileExternalPluginNamed: aFileName [
	| res compileCommand virtualMachine |
	virtualMachine := VirtualMachine new.
	compileCommand := String
		streamContents: [ :s | 
			s
				<< 'gcc -shared -I./pharo-local/iceberg/hogoww/ASTC/vmHeader -o ./generated/'
				<< aFileName << '.so -fPIC ./generated/' << aFileName << '.c'
				<< (virtualMachine for32bit: [ ' -m32' ] for64bit: [ '' ]) ].
	res := LibC runCommand: compileCommand.
	res = 0
		ifTrue: [ ^ self ].
	Error signal: 'plugin didn''t compile (or the comand line sucks)'.
	"proceed to copy to clipboard"
	Clipboard clipboardText: compileCommand.
	self halt
]
