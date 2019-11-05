Extension { #name : #InterpreterProxy }

{ #category : #'*ASTC-VM-extensions' }
InterpreterProxy >> sizeOfSTArrayFromCPrimitive: cPtr [
	"Note: Only called by translated primitive code."
	<var: #cPtr type: 'void *'>
	"For type inference purpose"
	^ 1"self shouldNotImplement"
]

{ #category : #'*ASTC-VM-extensions' }
InterpreterProxy >> stackValue: offset [
	<returnType: #Object>
	<var:#stack type:#OrderedCollection>
	^stack at: stack size - offset.
]
