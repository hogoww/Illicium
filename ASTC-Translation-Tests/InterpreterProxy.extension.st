Extension { #name : #InterpreterProxy }

{ #category : #'*ASTC-Translation-Tests' }
InterpreterProxy >> sizeOfSTArrayFromCPrimitive: cPtr [
	"Note: Only called by translated primitive code."
	<var: #cPtr type: 'void *'>
	<returnType:#SmallInteger>
	^self shouldNotImplement
]

{ #category : #'*ASTC-Translation-Tests' }
InterpreterProxy >> stackValue: offset [
	<returnType:#'void *'>
	^stack at: stack size - offset.
]
