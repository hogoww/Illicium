Class {
	#name : #IlliciumTestCase,
	#superclass : #IlliciumUserClass,
	#category : #'MAngler-Illicium-MessagesTranslators'
}

{ #category : #include }
IlliciumTestCase class >> cHeader [
	^ ASTCCompilationUnit new
		preamble: (ASTCRawCCode new 
			cCode: '
#include <stdio.h>
#include <stdlib.h>

void testPassed();
void testFailed(int line);
void cAssert(int line, int condition);';
			yourself);
		yourself 
]

{ #category : #include }
IlliciumTestCase class >> cImplementation [
	^ ASTCCompilationUnit new
		preamble: (ASTCRawCCode new 
			cCode: '
#include <stdio.h>
#include <stdlib.h>

void testPassed(){
  printf("Test passed\n");
  exit(EXIT_SUCCESS);
}

void testFailed(int line){
  printf("Assertion line: %d Test failed\n", line);
  exit(EXIT_FAILURE);
}


void cAssert(int line, int condition)
{
  if (condition) return;
  testFailed(line);
}';
			yourself);
		yourself 
]

{ #category : #include }
IlliciumTestCase class >> includeCFile [
	^ CFile ifNil: [
		CFile := ASTCCFile new 
			fileName: #cTestCase;
			implementation: self cImplementation;
			header: self cHeader;
			yourself ]
]

{ #category : #asserting }
IlliciumTestCase >> assert: aBooleanCondition [
	self includeMyFile.
	^ self asFunctionCall: #cAssert withTranslatedArguments: 
		{
			#__LINE__ asCIdentifierNode.
			aBooleanCondition acceptVisitor: methodTranslator 
		}.
]

{ #category : #asserting }
IlliciumTestCase >> assert: actual equals: expected [ 
	"this is transformed to self assert: actual = expected.
	Easier from a typing point of view."
	| fakeMessageNode |
	"should probably check that the types of both arguments are the same."
	self flag: #missingCheck.
	fakeMessageNode := RBMessageNode receiver: actual selector: #= arguments: { expected }.
	^ self assert: fakeMessageNode
]

{ #category : #asserting }
IlliciumTestCase >> deny: aBooleanCondition [
	| assert |
	self includeMyFile.

	assert := self assert: aBooleanCondition.
	assert arguments at: 2 put: assert arguments second not.
	^ assert
]

{ #category : #asserting }
IlliciumTestCase >> deny: actual equals: expected [ 
	"this is transformed to self deny: actual = expected."
	| fakeMessageNode |
	"should probably check that the types of both arguments are the same."
	self flag: #missingCheck.
	fakeMessageNode := RBMessageNode receiver: actual selector: #= arguments: { expected }. 
	^ self deny: fakeMessageNode
]

{ #category : #virtualmachin }
IlliciumTestCase >> loadPharoImage: aValueNode [
	methodTranslator addInclude: (ASTCCFile new fileName: 'loadImage' ; yourself).
	
	^ self asFunctionCall: #loadPharoImage withArguments: { aValueNode }
]
