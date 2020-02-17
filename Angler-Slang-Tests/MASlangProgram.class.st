Class {
	#name : #MASlangProgram,
	#superclass : #ANProgram,
	#category : #'Angler-Slang-Tests-generators'
}

{ #category : #accessing }
MASlangProgram >> classes [

	^ { VMClass. SpurMemoryManager . Spur64BitMemoryManager . StackInterpreter }
]

{ #category : #accessing }
MASlangProgram >> vmClass [
	
	^ StackInterpreter
]

{ #category : #accessing }
MASlangProgram >> wordSize [
	
	^ 8 "64bits for now"
]
