Extension { #name : #InterpreterProxy }

{ #category : #'*ASTC-VM-extensions' }
InterpreterProxy >> methodArgumentCount [
	<var:#argumentCount type:#SmallInteger>
	^argumentCount
]

{ #category : #'*ASTC-VM-extensions' }
InterpreterProxy >> sizeOfSTArrayFromCPrimitive: cPtr [
	"Note: Only called by translated primitive code."
	<var: #cPtr type: 'void *'>
	"For type inference purpose"
	^ 1"self shouldNotImplement"
]

{ #category : #'*ASTC-VM-extensions' }
InterpreterProxy >> stackIntegerValue: offset [
	| oop |
	<returnType:#int>
	oop := self stackValue: offset.
	(self isIntegerObject: oop) ifFalse: [self primitiveFail. ^0].
	^oop
]

{ #category : #'*ASTC-VM-extensions' }
InterpreterProxy >> stackValue: offset [
	<returnType: #Object>
	<var:#stack type:#OrderedCollection>
	^stack at: stack size - offset.
]
