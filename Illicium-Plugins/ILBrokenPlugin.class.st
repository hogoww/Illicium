Class {
	#name : #ILBrokenPlugin,
	#superclass : #Object,
	#traits : 'ASTCVirtualMachineAPI',
	#classTraits : 'ASTCVirtualMachineAPI classTrait',
	#category : #'Illicium-Plugins-simple'
}

{ #category : #initialization }
ILBrokenPlugin >> primitiveNoPopButPush [
	"Doesn't pop anything but pushes return value"

	<primitiveToBe>
	interpreterProxy pushBool: true.
	^0
]

{ #category : #initialization }
ILBrokenPlugin >> primitivePopAndFail [
	"Pops in a failing primitive"

	<primitiveToBe>
	interpreterProxy pop: interpreterProxy methodArgumentCount + 1.
	interpreterProxy primitiveFail.
	^0
]

{ #category : #initialization }
ILBrokenPlugin >> primitivePopLessThanExpected [
	"Pops less than expected; call this with two arguments."

	<primitiveToBe>
	interpreterProxy pop: interpreterProxy methodArgumentCount - 1.
	^0
]

{ #category : #initialization }
ILBrokenPlugin >> primitivePopMoreThanExpected [
	"Pops more than expected"

	<primitiveToBe>
	interpreterProxy pop: interpreterProxy methodArgumentCount + 4.
	^0
]
