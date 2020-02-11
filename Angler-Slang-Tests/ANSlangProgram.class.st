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

{ #category : #accessing }
ANSlangProgram >> wordSize [
	
	^ 8 "64bits for now"
]
