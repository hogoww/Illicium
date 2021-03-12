Class {
	#name : #FAMakefile,
	#superclass : #Object,
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
		'rules'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #'building-rules' }
FAMakefile >> addCompileTestRule [
	| rule  |
	rule := FAMakefileRule new.
	rule name: '$(TESTS)'.

	rule addBodyLine: '@echo " compiling $@."'.
	rule addBodyLine: '@$(CC) -o $@ $@.c $(LIBRARIES_FLAGS) $(VM_LIBRARY_FLAG) $(VM_PATHS) $(VM_MACROS) $(COMPILER_FLAGS) $(SUPPORT_FILES) $(TEST_CLASS_FILE) 2>&1'.
	rule addBodyLine: '@export LD_LIBRARY_PATH=. && ./$@ 2>&1'.
	rule addBodyLine: '@rm $@'.
	
	rules add: rule
]

{ #category : #'building-rules' }
FAMakefile >> addConclusionRule [
	| rule |
	rule := FAMakefileRule new.
	rule name: 'compileAllTests'.
	rule dependencies: 'compilationPrelude $(TESTS)'.

	rule addBodyLine: '@echo "done"'.

	rules add: rule
]

{ #category : #'building-rules' }
FAMakefile >> addDefaultTargetRule [
	| rule |
	rule := FAMakefileRule new.
	rule options: '.DELETE_ON_ERROR:'.
	rule name: 'default_target'.
	rule dependencies: 'compileAllTests'.
	rule phony:'default_target'.
	
	rules add: rule
]

{ #category : #'building-rules' }
FAMakefile >> addPreludeCompilationRule [
	| rule |
	rule := FAMakefileRule new.
	rule name: 'compilationPrelude'.
	rule addBodyLine: '@rm -f log.txt'.
	rule addBodyLine: '@echo "compiling all $(TEST_CLASS_FILE) tests."'.

	rules add: rule
]

{ #category : #'building-rules' }
FAMakefile >> addTestRules [
	self addDefaultTargetRule.
	self addPreludeCompilationRule.
	self addCompileTestRule.
	self addConclusionRule.
]

{ #category : #accessing }
FAMakefile >> compiler [
	^ compiler
]

{ #category : #accessing }
FAMakefile >> compiler: anObject [
	compiler := anObject
]

{ #category : #accessing }
FAMakefile >> compilerFlags [
	^ compilerFlags
]

{ #category : #accessing }
FAMakefile >> compilerFlags: anObject [
	compilerFlags := anObject
]

{ #category : #initialization }
FAMakefile >> initialize [
	rules := OrderedCollection new.
	self initializeToDefaultValues
]

{ #category : #initialization }
FAMakefile >> initializeToDefaultValues [
	compiler := 'gcc'.
	librariesFlags := '-lpthread -ldl -lm'.
	vmLibraryFlag := '-lPharoVMCore'.
	vmPaths := '-L. -I. -I../extracted/vm/include/common/ -I../include/pharovm/ -I../include/ -I../generated/include/ -I../extracted/vm/include/unix/ -I../build/include/pharovm/'.
	vmMacros :='-DLSB_FIRST -DNDEBUG -DDEBUGVM=0 -DIMMUTABILITY=1 -DCOGMTVM=0 -DPharoVM=1 -DVM_LABEL\(foo\)=0'.
	compilerFlags := '-fPIC -g'.
	supportFiles := 'cTestCase.c loadImage.c'.

]

{ #category : #accessing }
FAMakefile >> librariesFlags [
	^ librariesFlags
]

{ #category : #accessing }
FAMakefile >> librariesFlags: anObject [
	librariesFlags := anObject
]

{ #category : #printing }
FAMakefile >> printOn: aStream [
	self printVariablesOn: aStream.
	self printRulesOn: aStream.
	^ aStream
]

{ #category : #printing }
FAMakefile >> printRulesOn: aStream [
	rules do: [ :rule | rule printOn: aStream ]
		separatedBy: [ aStream crlf ].
	^ aStream
]

{ #category : #printing }
FAMakefile >> printVariablesOn: aStream [
	aStream << 'CC=' ; << compiler ; crlf.
	aStream << 'LIBRARIES_FLAGS=' ; << librariesFlags ; crlf.
	aStream << 'VM_LIBRARY_FLAG=' ; << vmLibraryFlag ; crlf.
	aStream << 'VM_PATHS=' ; << vmPaths ; crlf.
	aStream << 'VM_MACROS=' ; << vmMacros ; crlf.
	aStream << 'COMPILER_FLAGS=' ; << compilerFlags ; crlf.
	aStream << 'SUPPORT_FILES=' ; << supportFiles ; crlf.
	aStream << 'TEST_CLASS_FILE=' ; << testClassFile ; << '.c' ; crlf.
	aStream << 'TESTS='.
	tests do: [ :aTest | aStream << testClassFile << '__' << aTest declaration id id ] separatedBy: [ aStream << '\' ; crlf ].
	
	aStream crlf crlf.
]

{ #category : #accessing }
FAMakefile >> supportFiles [
	^ supportFiles
]

{ #category : #accessing }
FAMakefile >> supportFiles: anObject [
	supportFiles := anObject
]

{ #category : #accessing }
FAMakefile >> testClassFile [
	^ testClassFile
]

{ #category : #accessing }
FAMakefile >> testClassFile: anObject [
	testClassFile := anObject
]

{ #category : #accessing }
FAMakefile >> tests [
	^ tests
]

{ #category : #accessing }
FAMakefile >> tests: anObject [
	tests := anObject
]

{ #category : #accessing }
FAMakefile >> vmLibraryFlag [
	^ vmLibraryFlag
]

{ #category : #accessing }
FAMakefile >> vmLibraryFlag: anObject [
	vmLibraryFlag := anObject
]

{ #category : #accessing }
FAMakefile >> vmMacros [
	^ vmMacros
]

{ #category : #accessing }
FAMakefile >> vmMacros: anObject [
	vmMacros := anObject
]

{ #category : #accessing }
FAMakefile >> vmPaths [
	^ vmPaths
]

{ #category : #accessing }
FAMakefile >> vmPaths: anObject [
	vmPaths := anObject
]
