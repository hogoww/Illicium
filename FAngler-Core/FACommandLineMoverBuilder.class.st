Class {
	#name : #FACommandLineMoverBuilder,
	#superclass : #FACommandLineBuilder,
	#instVars : [
		'testFunctionToMove'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #building }
FACommandLineMoverBuilder >> buildCommandLine [ 
	| functionClasses |
	super buildCommandLine.
"cTestCase.c
cTestCase.h
VMPinnedObjectTest.c
VMPinnedObjectTest.h
VMPinnedObjectTest__testAllocatingObjectAfterAPinObjectShouldSlideAtStartOfOldSpace.c
"
	functionClasses := testFunctionToMove collect: [ :aMethod | aMethod methodClass ] into: Set new.

	^ String streamContents: [ :s |
		s << 'mv' ; space.
		s << 'cTestCase.c cTestCase.h' ; space.
		functionClasses do:[ :aClass | 
			s << aClass name << '.c'.
			s space.
			s << aClass name << '.h' ] separatedBy:[ s space ].
		s space.
		testFunctionToMove do: [ :aMethod | s << aMethod methodClass name << '__' << aMethod selector ] separatedBy:[ s space ].
		s space.
		s << VMLocation ].
]
