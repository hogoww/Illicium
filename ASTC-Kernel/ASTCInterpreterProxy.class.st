Class {
	#name : #ASTCInterpreterProxy,
	#superclass : #Object,
	#category : #'ASTC-Kernel'
}

{ #category : #adding }
ASTCInterpreterProxy >> cCoerce: anOop to: aType [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
ASTCInterpreterProxy >> integerObjectOf: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
ASTCInterpreterProxy >> methodArgumentCount [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^1
]

{ #category : #adding }
ASTCInterpreterProxy >> methodArgumentCount: anOffset [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^1
]

{ #category : #adding }
ASTCInterpreterProxy >> pop: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
ASTCInterpreterProxy >> primitiveFail [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
ASTCInterpreterProxy >> push: anArg [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
ASTCInterpreterProxy >> pushBool: aBool [
	"dummy method for type inference and system checks"
	^ self
]

{ #category : #adding }
ASTCInterpreterProxy >> pushInteger: anInteger [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]

{ #category : #adding }
ASTCInterpreterProxy >> stackValue: anOffset [
	<doNotGenerate>
	"dummy method for type inference and system checks"
	^self
]
