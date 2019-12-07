Class {
	#name : #IlGenerationTestForBrokenPlugin,
	#superclass : #IlliciumToSlangTestCase,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #tests }
IlGenerationTestForBrokenPlugin >> testprimitiveNoPopButPush [
	| code |
	code := self generate: #primitiveNoPopButPush from: BrokenPlugin.
	self assert: code equals: '

/*	Doesn''t pop anything but pushes return value */

	/* BrokenPlugin>>#primitiveNoPopButPush */
EXPORT(sqInt)
primitiveNoPopButPush(void)
{
	pushBool(1);
	return 0;
}
'
]

{ #category : #tests }
IlGenerationTestForBrokenPlugin >> testprimitivePopAndFail [
	| code |
	code := self generate: #primitivePopAndFail from: BrokenPlugin.
	self assert: code equals: '

/*	Pops in a failing primitive */

	/* BrokenPlugin>>#primitivePopAndFail */
EXPORT(sqInt)
primitivePopAndFail(void)
{
	pop((methodArgumentCount()) + 1);
	primitiveFail();
	return 0;
}
'
]

{ #category : #tests }
IlGenerationTestForBrokenPlugin >> testprimitivePopLessThanExpected [
	| code |
	code := self generate: #primitivePopLessThanExpected from: BrokenPlugin.
	self assert: code equals: '

/*	Pops less than expected; call this with two arguments. */

	/* BrokenPlugin>>#primitivePopLessThanExpected */
EXPORT(sqInt)
primitivePopLessThanExpected(void)
{
	pop((methodArgumentCount()) - 1);
	return 0;
}
'
]

{ #category : #tests }
IlGenerationTestForBrokenPlugin >> testprimitivePopMoreThanExpected [
	| code |
	code := self generate: #primitivePopMoreThanExpected from: BrokenPlugin.
	self assert: code equals: '

/*	Pops more than expected */

	/* BrokenPlugin>>#primitivePopMoreThanExpected */
EXPORT(sqInt)
primitivePopMoreThanExpected(void)
{
	pop((methodArgumentCount()) + 4);
	return 0;
}
'
]
