Class {
	#name : #ASTCFileCompiler,
	#superclass : #Object,
	#category : #'ASTC-Translation-Installers'
}

{ #category : #'as yet unclassified' }
ASTCFileCompiler >> compileExternalPluginNamed: aFileName [
	| res commandLine virtualMachine |
	virtualMachine := VirtualMachine new.
	commandLine := String
		streamContents: [ :s | 
			s
				<< 'gcc -shared -I./pharo-local/iceberg/hogoww/ASTC/vmHeader -o ./generated/'
				<< aFileName << '.so -fPIC ./generated/' << aFileName << '.c'
				<< (virtualMachine for32bit: [ ' -m32' ] for64bit: [ '' ]) ].
	res := LibC runCommand: commandLine.
	res = 0
		ifFalse: [ self error: 'plugin didn''t compile (or the comand line sucks)' ]
	"If that fails, you probably need to change the name of the Iceberg repository in the command line"
]
