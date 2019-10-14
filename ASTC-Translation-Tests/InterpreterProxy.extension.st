Extension { #name : #InterpreterProxy }

{ #category : #'*ASTC-Translation-Tests' }
InterpreterProxy >> methodArgumentCount [
	<returnType:#SmallInteger>
	"for 3 out of 4 of BrokenPlugin"
	^argumentCount
]

{ #category : #'*ASTC-Translation-Tests' }
InterpreterProxy >> primitiveFailFor: reasonCode [
	"Set specific primitive failure.
	N.B. primitiveFailFor: PrimNoErr is expected to clear the primFailCode.
	Primitive 255 is called to indicate that we are currently simulating a primitive that should fail and the VM should handle that case appropriately (if supported by the VM)."
	<primitive: 255>
	<returnType:#SmallInteger>
	^ primFailCode := reasonCode
]

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
