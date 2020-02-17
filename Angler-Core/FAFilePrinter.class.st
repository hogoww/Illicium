Class {
	#name : #FAFilePrinter,
	#superclass : #Object,
	#instVars : [
		'fileName',
		'compilationUnit',
		'isPrimitive',
		'virtualMachine',
		'prettyPrinter',
		'fileCompiler',
		'pluginMover'
	],
	#category : #'Angler-Core-installers'
}

{ #category : #accessing }
FAFilePrinter >> compilationUnit [
	^compilationUnit
]

{ #category : #accessing }
FAFilePrinter >> compilationUnit: aCompilationUnit [
	^compilationUnit:= aCompilationUnit
]

{ #category : #printing }
FAFilePrinter >> compileExternalPlugin [
	fileCompiler compileExternalPluginNamed: fileName
]

{ #category : #accessing }
FAFilePrinter >> fileCompiler [
	^ fileCompiler
]

{ #category : #accessing }
FAFilePrinter >> fileCompiler: aFileCompiler [
	fileCompiler := aFileCompiler
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
FAFilePrinter >> initialize [ 
	virtualMachine := VirtualMachine new.
	prettyPrinter := FAPrettyPrint new.
	fileCompiler := FAFileCompiler new.
	pluginMover := FAPluginMover new.
	
]

{ #category : #accessing }
FAFilePrinter >> isPrimitive [
	^ isPrimitive
]

{ #category : #accessing }
FAFilePrinter >> isPrimitive: aBoolean [
	^isPrimitive := aBoolean
]

{ #category : #moving }
FAFilePrinter >> moveInVmDirectory [
	pluginMover movePluginInVmDirectory: fileName
]

{ #category : #accessing }
FAFilePrinter >> pluginMover [
	^ pluginMover
]

{ #category : #accessing }
FAFilePrinter >> pluginMover: aPluginMover [
	pluginMover := aPluginMover
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
FAFilePrinter >> printInFile [
	| file |
	file:=(FileSystem workingDirectory / 'generated') ensureCreateDirectory.
	file:= file / (fileName,'.c').
	file exists ifTrue:[file delete].
	file writeStreamDo:[:stream |
		self printOnStream: stream.
	].
]

{ #category : #printing }
FAFilePrinter >> printOnStream: aStream [	
	isPrimitive ifTrue:[self printPrePluginStuff: aStream ].
	aStream << (compilationUnit prettyPrintUsing: prettyPrinter)
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

{ #category : #printing }
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

{ #category : #printing }
FAFilePrinter >> printString [
	
	^ String streamContents: [ :stream |
		self printOnStream: stream ]
]
