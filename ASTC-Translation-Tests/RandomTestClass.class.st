"
I am a random test class.

My selectors are used by ASTCFromPharo as toy translations.
"
Class {
	#name : #RandomTestClass,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#category : #'ASTC-Translation-Tests'
}

{ #category : #tests }
RandomTestClass >> aMain [
	| res |
	<primitiveToBe>
	res:= self factorialIter: 7.
	interpreterProxy push:(interpreterProxy integerObjectOf:res).

	^ 0
]

{ #category : #tests }
RandomTestClass >> factorialIter: n [
	| acc |
	acc := 1.
	2 to: n do: [ :i | acc := acc * i ].
	^ acc
]

{ #category : #tests }
RandomTestClass >> factorialPrimitive: aSmallInteger [ 
	<primitive: 'aMain' module:'RandomTestClass' error: error>
	^(error isPrimitiveError)
		ifTrue: [ self halt.]
		ifFalse: [ error crLog. self primitiveFailed ].
]

{ #category : #tests }
RandomTestClass >> factorialR [
	"random function without arguments to test type inference"
	| res |
	res:=0.
	res=0
	ifTrue:[
		res:=1
		]
	ifFalse:[
		res:=1*(self factorialR:(1-1))
		].
	^res
]

{ #category : #tests }
RandomTestClass >> factorialR: n [
	"basic toy function"
	n=0
	ifTrue:[
		^1
		]
	ifFalse:[
		^n*(self factorialR:(n-1))
		]
	
]

{ #category : #tests }
RandomTestClass >> factorialR: n anotherArgument: n2 [
	"basic toy function"
	| res |
	res:=0.
	n=0
	ifTrue:[
		res:=1
		]
	ifFalse:[
		res:=n*(self factorialR:(n-1) anotherArgument:n2)
		].
	^res.
]

{ #category : #tests }
RandomTestClass >> simpleReturnInteger [

	^ 1
]