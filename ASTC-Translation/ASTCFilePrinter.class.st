Class {
	#name : #ASTCFilePrinter,
	#superclass : #Object,
	#instVars : [
		'fileName',
		'classDictionary'
	],
	#category : #'ASTC-Translation'
}

{ #category : #accessing }
ASTCFilePrinter >> classDictionary [
	^ classDictionary
]

{ #category : #accessing }
ASTCFilePrinter >> classDictionary: aCollection [
	classDictionary := aCollection
]

{ #category : #accessing }
ASTCFilePrinter >> fileName [
	^ fileName
]

{ #category : #accessing }
ASTCFilePrinter >> fileName: aString [
	fileName := aString
]

{ #category : #printing }
ASTCFilePrinter >> printInFile [
	| file |
	file:=(FileSystem workingDirectory / 'generated') ensureCreateDirectory.
	file:= file / 'gen.c'.
	file exists ifTrue:[file delete].
	file writeStreamDo:[:stream |
		self printPluginStuff:stream withMethods: classDictionary .

		classDictionary do:[:each| stream << (ASTCDeclarationStatement new declaration: each declaration ; yourself) prettyPrint. stream cr.].
		stream cr cr.
		classDictionary do:[:each | stream << each prettyPrint. stream cr cr].
		
	].
]

{ #category : #printing }
ASTCFilePrinter >> printPluginStuff: aStream withMethods: collectionOfMethods [
	aStream << 
'
#include "config.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define true 1
#define false 0
#define null 0  /* using ''null'' because nil is predefined in Think C */

#include "sqMemoryAccess.h"
extern struct VirtualMachine* interpreterProxy;
static const char *moduleName = "MyBadPlugin * VMMaker.oscog-eem.2520 (e);"

static const char* getModuleName(void)
{
	return moduleName;
}


/*	Note: This is coded so that it can be run in Squeak. */

	/* InterpreterPlugin>>#setInterpreter: */
static setInterpreter(struct VirtualMachine *anInterpreter)
{
    sqInt ok;

	interpreterProxy = anInterpreter;
	ok = ((interpreterProxy->majorVersion()) == (VM_PROXY_MAJOR))
	 && ((interpreterProxy->minorVersion()) >= (VM_PROXY_MINOR));
	if (ok) {
			}
	return ok;
}

static char _m[] = "' << fileName<<'";
void* MyBadPlugin_exports[][3] = {
'.
	collectionOfMethods do:[:each|
		aStream tab << '{(void*)_m, ' << '"' << each declaration id prettyPrint << '", (void*)' << each declaration id prettyPrint<< '},'. 
		aStream cr.
	 ].
'
	{(void*)_m, "getModuleName", (void*)getModuleName},
	{(void*)_m, "setInterpreter", (void*)setInterpreter},
	{NULL, NULL, NULL}
};

'

]
