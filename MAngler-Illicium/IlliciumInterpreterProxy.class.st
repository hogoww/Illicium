Class {
	#name : #IlliciumInterpreterProxy,
	#superclass : #Object,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #adding }
IlliciumInterpreterProxy >> cCoerce: anOop to: aType [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
IlliciumInterpreterProxy >> firstIndexableField: orderOop [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^Object new
]

{ #category : #adding }
IlliciumInterpreterProxy >> integerObjectOf: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^ self
]

{ #category : #adding }
IlliciumInterpreterProxy >> isBytes: anOop [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^true
]

{ #category : #adding }
IlliciumInterpreterProxy >> methodArgumentCount [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^1
]

{ #category : #adding }
IlliciumInterpreterProxy >> methodArgumentCount: anOffset [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^1
]

{ #category : #adding }
IlliciumInterpreterProxy >> methodReturnInteger: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^0
]

{ #category : #adding }
IlliciumInterpreterProxy >> pop: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
IlliciumInterpreterProxy >> popAndGet [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	"returns the reasonCode"
	^ Object new
]

{ #category : #adding }
IlliciumInterpreterProxy >> primitiveFail [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
IlliciumInterpreterProxy >> primitiveFailFor: reasonCode [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	"returns the reasonCode"
	^1
]

{ #category : #adding }
IlliciumInterpreterProxy >> push: anArg [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
IlliciumInterpreterProxy >> pushBool: aBool [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^ self
]

{ #category : #adding }
IlliciumInterpreterProxy >> pushInteger: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
IlliciumInterpreterProxy >> sizeOfSTArrayFromCPrimitive: order [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^1
]

{ #category : #adding }
IlliciumInterpreterProxy >> stackValue: anOffset [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^Object new
]
