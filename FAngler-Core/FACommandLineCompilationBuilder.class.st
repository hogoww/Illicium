Class {
	#name : #FACommandLineCompilationBuilder,
	#superclass : #FACommandLineBuilder,
	#instVars : [
		'compiler',
		'flags',
		'includesDirectories',
		'mainFile',
		'outputName',
		'libraries',
		'inputFiles'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #adding }
FACommandLineCompilationBuilder >> addFlag: aFlagString [
	flags add: aFlagString.
]

{ #category : #adding }
FACommandLineCompilationBuilder >> addIncludesDirectory: aDirectoryName [
	includesDirectories add: aDirectoryName
]

{ #category : #adding }
FACommandLineCompilationBuilder >> addLibrary: aLibraryName [
	libraries add: aLibraryName
]

{ #category : #adding }
FACommandLineCompilationBuilder >> addSupportFile: aFileName [
	inputFiles add: aFileName
]

{ #category : #building }
FACommandLineCompilationBuilder >> buildCommandLine [
	super buildCommandLine.
	
	^ String streamContents: [ :s |
		s << compiler ; space.
		flags do: [ :aFlag | s << '-' << aFlag ] separatedBy: [ s space ].
		s << ' -o '.
		s << outputName.
		inputFiles do: [ :anInputFile | s << anInputFile ] separatedBy: [ s space ].
		s << ' -L' << VMLocation ; space.
		s << ' -I' << VMLocation ; space.
		libraries do: [ :aLibName | s << 'l' << aLibName ] separatedBy: [ s space ].
		includesDirectories do: [ :aDirectory | s << '-I' << VMLocation << aDirectory ] separatedBy: [ s space ].
		
		"PharoVMCore pthread dl m -I../extracted/vm/include/common/ -I../include/pharovm/ -I../include/ -I../generated/include/ -I../extracted/vm/include/unix/ -I../build/include/pharovm/ -DLSB_FIRST -DNDEBUG -DDEBUGVM=0 -DIMMUTABILITY=1 -DCOGMTVM=0 -DPharoVM=1 -DVM_LABEL\(foo\)=0 -I. -g CuTest.c VMPinnedObjectTest.c"
		
		]
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> compiler [
	^ compiler
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> compiler: aString [
	compiler := aString
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> flags [
	^ flags
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> flags: aString [
	flags := aString
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> importFiles [
	^ inputFiles
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> includesDirectories [
	^ includesDirectories
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> includesDirectories: directoriesNames [
	includesDirectories := directoriesNames
]

{ #category : #initialization }
FACommandLineCompilationBuilder >> initialize [
	compiler := #gcc.
	outputName := #main.
	inputFiles := OrderedCollection new.
	flags := OrderedCollection new.
	includesDirectories := OrderedCollection new.
	
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> inputFiles: supportFilesNames [
	inputFiles := supportFilesNames
]

{ #category : #adding }
FACommandLineCompilationBuilder >> libraries [
	^ libraries
]

{ #category : #adding }
FACommandLineCompilationBuilder >> libraries: librariesNames [
	libraries := librariesNames
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> mainFile [
	^ mainFile
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> mainFile: aFileName [
	mainFile := aFileName
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> outputName [
	^ outputName
]

{ #category : #accessing }
FACommandLineCompilationBuilder >> outputName: aString [
	outputName := aString
]

{ #category : #'vm-default' }
FACommandLineCompilationBuilder >> useVMFlags [
	flags := #(g fPIC lPharoVMCore lpthread ldl lm DLSB_FIRST DNDEBUG #'DDEBUGVM=0' #'DIMMUTABILITY=1' #'DCOGMTVM=0' #'DPharoVM=1' #'-DVM_LABEL\(foo\)=0')
]

{ #category : #'vm-default' }
FACommandLineCompilationBuilder >> useVMIncludes [
	includesDirectories := #(#'../extracted/vm/include/common/' #'-I../include/pharovm/' #'-I../include/' #'-I../generated/include/' #'-I../extracted/vm/include/unix/' #'-I../build/include/pharovm/')
]

{ #category : #'vm-default' }
FACommandLineCompilationBuilder >> useVMLibraries [
	libraries := #(PharoVMCore pthread dl m)
]

{ #category : #'vm-default' }
FACommandLineCompilationBuilder >> useVMStuffs [
	self useVMFlags.
	self useVMIncludes.
	self useVMLibraries.
]
