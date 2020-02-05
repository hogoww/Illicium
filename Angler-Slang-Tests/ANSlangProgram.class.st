Class {
	#name : #ANSlangProgram,
	#superclass : #ANProgram,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #accessing }
ANSlangProgram >> classes [

	^ { VMClass. SpurMemoryManager . Spur64BitMemoryManager . StackInterpreter }
]

{ #category : #accessing }
ANSlangProgram >> vmClass [
	
	^ StackInterpreter
]
