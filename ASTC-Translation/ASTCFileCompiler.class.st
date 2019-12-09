Class {
	#name : #ASTCFileCompiler,
	#superclass : #Object,
	#category : #'ASTC-Translation-installers'
}

{ #category : #compiling }
ASTCFileCompiler >> compileExternalPluginNamed: aFileName [
	| res compileCommand virtualMachine vmIncludePath |
	virtualMachine := VirtualMachine new.
	vmIncludePath := ((Iceberg repositoryForPackage: self class package) codeDirectory / 'vmHeader') fullName.
	compileCommand := String
		streamContents: [ :s | 
			s
				<< 'gcc -shared -I' << vmIncludePath << ' -o ./generated/'
				<< aFileName << '.so -fPIC ./generated/' << aFileName << '.c'
				<< (virtualMachine for32bit: [ ' -m32' ] for64bit: [ '' ]) 
			<< ' 2> ./generated/' << aFileName << '.errorLog'].
	res := LibC runCommand: compileCommand.
	res = 0
		ifTrue: [ ^ self ].
	Error signal: 'plugin didn''t compile (or the comand line sucks)'.
	(FileLocator workingDirectory / 'generated' / (aFileName , '.errorLog')) readStream contents inspect.
	(FileLocator workingDirectory / 'generated' / (aFileName , '.c')) readStream contents inspect.
	self halt.
	"proceed to copy to clipboard"
	Clipboard clipboardText: compileCommand.
	self halt.
]
