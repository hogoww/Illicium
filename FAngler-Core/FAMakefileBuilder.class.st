Class {
	#name : #FAMakefileBuilder,
	#superclass : #FACommandLineBuilder,
	#instVars : [
		'compiler',
		'librariesFlags',
		'vmLibraryFlag',
		'vmPaths',
		'vmMacros',
		'compilerFlags',
		'supportFiles',
		'testClassFile',
		'tests',
		'stream'
	],
	#classVars : [
		'DefaultRule'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #building }
FAMakefileBuilder >> buildMakefile [
	stream := String new writeStream.
	self buildVariables.
	self buildRules.
	^ stream
]

{ #category : #building }
FAMakefileBuilder >> buildRules [
	self ruleDefaultTarget.
	self rulePreludeCompilation.
	self ruleCompileTest.
	self ruleConclusionRule.
]

{ #category : #building }
FAMakefileBuilder >> buildVariables [
	stream << 'CC=' ; << compiler ; crlf.
	stream << 'LIBRARIES_FLAGS=' ; << librariesFlags ; crlf.
	stream << 'VM_LIBRARY_FLAG=' ; << vmLibraryFlag ; crlf.
	stream << 'VM_PATHS=' ; << vmPaths ; crlf.
	stream << 'VM_MACROS=' ; << vmMacros ; crlf.
	stream << 'COMPILER_FLAGS=' ; << compilerFlags ; crlf.
	stream << 'SUPPORT_FILES=' ; << supportFiles ; crlf.
	stream << 'TEST_CLASS_FILE=' ; << testClassFile ; << '.c' ; crlf.
	stream << 'TESTS='.
	tests do: [ :aTest | stream << testClassFile << '__' << aTest declaration id id ] separatedBy: [ stream << '\' ; crlf ].
	
	stream crlf crlf.
]

{ #category : #accessing }
FAMakefileBuilder >> compiler [
	^ compiler
]

{ #category : #accessing }
FAMakefileBuilder >> compiler: anObject [
	compiler := anObject
]

{ #category : #accessing }
FAMakefileBuilder >> compilerFlags [
	^ compilerFlags
]

{ #category : #accessing }
FAMakefileBuilder >> compilerFlags: anObject [
	compilerFlags := anObject
]

{ #category : #initialization }
FAMakefileBuilder >> initialize [
	compiler := 'gcc'.
	librariesFlags := '-lpthread -ldl -lm'.
	vmLibraryFlag := '-lPharoVMCore'.
	vmPaths := '-L. -I. -I../extracted/vm/include/common/ -I../include/pharovm/ -I../include/ -I../generated/include/ -I../extracted/vm/include/unix/ -I../build/include/pharovm/'.
	vmMacros :='-DLSB_FIRST -DNDEBUG -DDEBUGVM=0 -DIMMUTABILITY=1 -DCOGMTVM=0 -DPharoVM=1 -DVM_LABEL\(foo\)=0'.
	compilerFlags := '-fPIC -g'.
	supportFiles := 'cTestCase.c loadImage.c'.
	
]

{ #category : #accessing }
FAMakefileBuilder >> librariesFlags [
	^ librariesFlags
]

{ #category : #accessing }
FAMakefileBuilder >> librariesFlags: anObject [
	librariesFlags := anObject
]

{ #category : #'building-rules' }
FAMakefileBuilder >> ruleCompileTest [
	stream << '$(TESTS):' ; crlf.
	stream tab ; << '@echo " compiling $@."' ; crlf.
	stream tab ; << '@$(CC) -o $@ $@.c $(LIBRARIES_FLAGS) $(VM_LIBRARY_FLAG) $(VM_PATHS) $(VM_MACROS) $(COMPILER_FLAGS) $(SUPPORT_FILES) $(TEST_CLASS_FILE)' ; crlf.
	stream tab ; << '@echo "$@" >> log.txt' ; crlf.
	stream tab ; << '@export LD_LIBRARY_PATH=. && ./$@ >> log.txt' ; crlf.
	stream tab ; << '@rm $@' ; crlf.
	
	stream crlf crlf.
]

{ #category : #'building-rules' }
FAMakefileBuilder >> ruleConclusionRule [
	stream << 'compileAllTests: compilationPrelude $(TESTS)' ; crlf.
	stream tab ; << '@echo "done"'.

	stream crlf crlf.

]

{ #category : #'building-rules' }
FAMakefileBuilder >> ruleDefaultTarget [
	stream << '.DELETE_ON_ERROR:' ; crlf.
	stream << 'default_target: compileAllTests' ; crlf.
	stream << '.PHONY: default_target'.
	
	stream crlf crlf.
]

{ #category : #'building-rules' }
FAMakefileBuilder >> rulePreludeCompilation [
	stream << 'compilationPrelude:' ; crlf.
	stream tab ; << '@rm log.txt' ; crlf.
	stream tab ; << '@echo "compiling all $(TEST_CLASS_FILE) tests."'; crlf.
	stream crlf crlf.
]

{ #category : #accessing }
FAMakefileBuilder >> supportFiles [
	^ supportFiles
]

{ #category : #accessing }
FAMakefileBuilder >> supportFiles: anObject [
	supportFiles := anObject
]

{ #category : #accessing }
FAMakefileBuilder >> testClassFile [
	^ testClassFile
]

{ #category : #accessing }
FAMakefileBuilder >> testClassFile: anObject [
	testClassFile := anObject
]

{ #category : #accessing }
FAMakefileBuilder >> tests [
	^ tests
]

{ #category : #accessing }
FAMakefileBuilder >> tests: anObject [
	tests := anObject
]

{ #category : #accessing }
FAMakefileBuilder >> vmLibraryFlag [
	^ vmLibraryFlag
]

{ #category : #accessing }
FAMakefileBuilder >> vmLibraryFlag: anObject [
	vmLibraryFlag := anObject
]

{ #category : #accessing }
FAMakefileBuilder >> vmMacros [
	^ vmMacros
]

{ #category : #accessing }
FAMakefileBuilder >> vmMacros: anObject [
	vmMacros := anObject
]

{ #category : #accessing }
FAMakefileBuilder >> vmPaths [
	^ vmPaths
]

{ #category : #accessing }
FAMakefileBuilder >> vmPaths: anObject [
	vmPaths := anObject
]
