Class {
	#name : #FAFilePrinter,
	#superclass : #Object,
	#instVars : [
		'fileName',
		'directory',
		'compilationUnit',
		'prettyPrinter'
	],
	#category : #'FAngler-Core-Installers'
}

{ #category : #accessing }
FAFilePrinter >> compilationUnit [
	^compilationUnit
]

{ #category : #accessing }
FAFilePrinter >> compilationUnit: aCompilationUnit [
	^compilationUnit:= aCompilationUnit
]

{ #category : #accessing }
FAFilePrinter >> directory [
	^ directory
]

{ #category : #accessing }
FAFilePrinter >> directory: aString [
	directory := (FileSystem workingDirectory / aString) ensureCreateDirectory.
]

{ #category : #accessing }
FAFilePrinter >> fileName [
	^ fileName
]

{ #category : #accessing }
FAFilePrinter >> fileName: aString [
	fileName := aString
]

{ #category : #printing }
FAFilePrinter >> generateFiles [
	| file |
	directory ensureCreateDirectory.
	prettyPrinter 
		ifNil: [ self error: 'I require a pretty printer to print a C file of a compilation unit.' ].
	
	file := directory / fileName.
	file exists ifTrue: [ file delete ].
	file writeStreamDo:[:stream |
		self printOnStream: stream using: prettyPrinter.
	].
]

{ #category : #printing }
FAFilePrinter >> generateImplementationFile [
	| file |

]

{ #category : #accessing }
FAFilePrinter >> prettyPrinter [
	^ prettyPrinter
]

{ #category : #accessing }
FAFilePrinter >> prettyPrinter: aPrettyPrinter [
	prettyPrinter := aPrettyPrinter
]

{ #category : #printing }
FAFilePrinter >> printOnStream: aStream using: aPrettyPrinter [
	aPrettyPrinter stream: aStream.
	compilationUnit acceptVisitor: aPrettyPrinter
]

{ #category : #printing }
FAFilePrinter >> printPostPluginStuff: aStream withMethods: collectionOfMethods [
	self flag:'internalPlugin'. "not needed for external plugin, so ignored for now"
	true ifTrue:[^self].
	
	"###############################################"
	"###############################################"
	aStream << 
'static char _m[] = "' << fileName<<'";
void* MyBadPlugin_exports[][3] = {
'.
	collectionOfMethods do:[:each|
		aStream tab << '{(void*)_m, ' << '"' << each declaration id prettyPrint << '", (void*)' << each declaration id prettyPrint<< '},'. 
		aStream cr.
	 ].

aStream <<'	{(void*)_m, "getModuleName", (void*)getModuleName},
	{(void*)_m, "setInterpreter", (void*)setInterpreter},
	{NULL, NULL, NULL}
};

'

]

{ #category : #old }
FAFilePrinter >> printPrePluginStuff: aStream [
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
#include "sqVirtualMachine.h"	/*  The virtual machine proxy definition */
#include "sqPlatformSpecific.h"	/* Platform specific definitions */

static const char *moduleName = "'<< fileName <<' * VMMaker.oscog-eem.2520 (e)";

const char* getModuleName(void)
{
	printf("\n\n #moduleName# \n\n");
	return moduleName;
}


'

]

{ #category : #accessing }
FAFilePrinter >> printStringInFile: aString [
	| file |
	
	directory ensureCreateDirectory.
	file := directory / fileName.
	file exists ifTrue: [ file delete ].
	file writeStreamDo: [ :stream | stream << aString ].
]
