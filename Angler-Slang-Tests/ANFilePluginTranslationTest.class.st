Class {
	#name : #ANFilePluginTranslationTest,
	#superclass : #ANPluginSlangToCGeneratedTests,
	#category : #'Angler-Slang-Tests'
}

{ #category : #running }
ANFilePluginTranslationTest >> setUp [
	super setUp.
	testedClass := FilePlugin
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveConnectToFileDescriptorStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveConnectToFileDescriptor.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveConnectToFileDescriptor.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveConnectToFileStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveConnectToFile.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveConnectToFile.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectoryCreateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveDirectoryCreate.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveDirectoryCreate.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectoryDeleteStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveDirectoryDelete.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveDirectoryDelete.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectoryDelimitorStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveDirectoryDelimitor.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveDirectoryDelimitor.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectoryEntryStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveDirectoryEntry.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveDirectoryEntry.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectoryGetMacTypeAndCreatorStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #primitiveDirectoryGetMacTypeAndCreator.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #primitiveDirectoryGetMacTypeAndCreator.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectoryLookupStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveDirectoryLookup.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveDirectoryLookup.
	self assert: illiString equals: slangString
]

{ #category : #'directory primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDirectorySetMacTypeAndCreatorStringComparison [
	| illiAST slangString illiString |
	illiAST := self
		generateIllicium: #primitiveDirectorySetMacTypeAndCreator.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self
		generateSlang: #primitiveDirectorySetMacTypeAndCreator.
	self assert: illiString equals: slangString
]

{ #category : #'security primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveDisableFileAccessStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveDisableFileAccess.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveDisableFileAccess.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileAtEndStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileAtEnd.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileAtEnd.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileCloseStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileClose.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileClose.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileDeleteStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileDelete.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileDelete.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileDescriptorTypeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileDescriptorType.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileDescriptorType.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileFlushStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileFlush.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileFlush.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileGetPositionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileGetPosition.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileGetPosition.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileOpenNewStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileOpenNew.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileOpenNew.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileOpenStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileOpen.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileOpen.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileReadStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileRead.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileRead.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileReadWithPinningStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileReadWithPinning.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileReadWithPinning.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileReadWithoutPinningStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileReadWithoutPinning.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileReadWithoutPinning.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileRenameStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileRename.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileRename.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileSetPositionStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileSetPosition.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileSetPosition.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileSizeStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileSize.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileSize.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileStdioHandlesStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileStdioHandles.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileStdioHandles.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileSyncStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileSync.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileSync.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileTruncateStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileTruncate.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileTruncate.
	self assert: illiString equals: slangString
]

{ #category : #'file primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveFileWriteStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveFileWrite.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveFileWrite.
	self assert: illiString equals: slangString
]

{ #category : #'security primitives-equaliy-test' }
ANFilePluginTranslationTest >> testPrimitiveHasFileAccessStringComparison [
	| illiAST slangString illiString |
	illiAST := self generateIllicium: #primitiveHasFileAccess.
	illiString := self prettyPrintIllicium: illiAST.
	slangString := self generateSlang: #primitiveHasFileAccess.
	self assert: illiString equals: slangString
]

{ #category : #accessing }
ANFilePluginTranslationTest >> translator [
	^ ANFilePluginTranslationTest current translator
]
