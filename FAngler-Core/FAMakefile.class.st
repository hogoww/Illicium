Class {
	#name : #FAMakefile,
	#superclass : #Object,
	#instVars : [
		'rules',
		'compiler',
		'compilerFlags',
		'vmPaths',
		'vmMacros',
		'mainFiles',
		'supportFiles',
		'testClassFile',
		'libraryFlags'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #'building-rules' }
FAMakefile >> addCompileTestRule [
	| rule  |
	rule := FAMakefileRule new.
	rule name: '$(MAIN_FILES)'.

	rule addBodyLine: '@echo " compiling $@."'.
	rule addBodyLine: '@$(CC) -o $@ $@.c $(LIBRARIES_FLAGS) $(VM_PATHS) $(VM_MACROS) $(COMPILER_FLAGS) $(SUPPORT_FILES) 2>&1'.
	rule addBodyLine: '@export LD_LIBRARY_PATH=. && ./$@ 2>&1'.
	rule addBodyLine: '@rm $@'.
	
	rules add: rule
]

{ #category : #'building-rules' }
FAMakefile >> addConclusionRule [
	| rule |
	rule := FAMakefileRule new.
	rule name: 'compileAllTests'.
	rule dependencies: 'compilationPrelude $(MAIN_FILES)'.

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
	vmPaths := '-L. -I. -I../extracted/vm/include/common/ -I../include/pharovm/ -I../include/ -I../generated/include/ -I../extracted/vm/include/unix/ -I../build/include/pharovm/'.
	vmMacros :='-DLSB_FIRST -DNDEBUG -DDEBUGVM=0 -DIMMUTABILITY=1 -DCOGMTVM=0 -DPharoVM=1 -DVM_LABEL\(foo\)=0'.
	compilerFlags := '-fPIC -g'.
]

{ #category : #accessing }
FAMakefile >> mainFiles [

	^ mainFiles
]

{ #category : #accessing }
FAMakefile >> mainFiles: aCollection [

	mainFiles := aCollection
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
	aStream << 'LIBRARIES_FLAGS='.
	libraryFlags do: [ :aLibraryName | aStream << '-l' << aLibraryName ] separatedBy: [ aStream space ].
	aStream crlf.

	aStream << 'VM_PATHS=' ; << vmPaths ; crlf.
	aStream << 'VM_MACROS=' ; << vmMacros ; crlf.
	aStream << 'COMPILER_FLAGS=' ; << compilerFlags ; crlf.

	aStream << 'SUPPORT_FILES='.
	supportFiles do: [ :aFileName | aStream << aFileName ] separatedBy: [ aStream space ].
	aStream crlf.

	aStream << 'MAIN_FILES='.
	mainFiles do: [ :aMainFileName | aStream << aMainFileName ] separatedBy: [ aStream << '\' ; crlf ].
	
	aStream crlf crlf.
]

{ #category : #accessing }
FAMakefile >> rules [

	^ rules
]

{ #category : #accessing }
FAMakefile >> setSupportFiles: cFiles [
	libraryFlags := Set new.
	supportFiles := Set new.
	self flag: #hardcoded.
	libraryFlags add: 'pthread';
		add: #dl;
		add: #m.
	cFiles do: [ :aCFile |
		aCFile isLibrary ifTrue: [ libraryFlags add: aCFile libraryName ].
		
		(aCFile isStandard or: [ aCFile isLibrary ]) 
			ifFalse: [ supportFiles add: aCFile implementationFileName ]
		 ].
	


]

{ #category : #accessing }
FAMakefile >> supportFiles [
	^ supportFiles
]

{ #category : #accessing }
FAMakefile >> supportFiles: aCollection [
	supportFiles := aCollection
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
