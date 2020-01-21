Class {
	#name : #FilePluginTranslationTest,
	#superclass : #ILPluginSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
FilePluginTranslationTest >> setUp [
  super setUp.
  testedClass := FilePlugin.
  translator := ASTCSlangPluginTranslator new
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveConnectToFileDescriptorSmoke [
  self testMethod: #primitiveConnectToFileDescriptor
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveConnectToFileDescriptorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveConnectToFileDescriptor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveConnectToFileDescriptor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveConnectToFileSmoke [
  self testMethod: #primitiveConnectToFile
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveConnectToFileStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveConnectToFile.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveConnectToFile.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryCreateSmoke [
  self testMethod: #primitiveDirectoryCreate
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryCreateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryCreate.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryCreate.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryDeleteSmoke [
  self testMethod: #primitiveDirectoryDelete
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryDeleteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryDelete.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryDelete.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryDelimitorSmoke [
  self testMethod: #primitiveDirectoryDelimitor
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryDelimitorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryDelimitor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryDelimitor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryEntrySmoke [
  self testMethod: #primitiveDirectoryEntry
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryEntryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryEntry.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryEntry.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryGetMacTypeAndCreatorSmoke [
  self testMethod: #primitiveDirectoryGetMacTypeAndCreator
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryGetMacTypeAndCreatorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryGetMacTypeAndCreator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryGetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryLookupSmoke [
  self testMethod: #primitiveDirectoryLookup
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectoryLookupStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryLookup.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryLookup.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDirectorySetMacTypeAndCreatorSmoke [
  self testMethod: #primitiveDirectorySetMacTypeAndCreator
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDirectorySetMacTypeAndCreatorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectorySetMacTypeAndCreator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectorySetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveDisableFileAccessSmoke [
  self testMethod: #primitiveDisableFileAccess
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveDisableFileAccessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDisableFileAccess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDisableFileAccess.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileAtEndSmoke [
  self testMethod: #primitiveFileAtEnd
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileAtEndStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileAtEnd.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileAtEnd.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileCloseSmoke [
  self testMethod: #primitiveFileClose
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileCloseStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileClose.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileClose.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileDeleteSmoke [
  self testMethod: #primitiveFileDelete
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileDeleteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileDelete.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileDelete.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileDescriptorTypeSmoke [
  self testMethod: #primitiveFileDescriptorType
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileDescriptorTypeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileDescriptorType.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileDescriptorType.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileFlushSmoke [
  self testMethod: #primitiveFileFlush
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileFlushStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileFlush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileFlush.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileGetPositionSmoke [
  self testMethod: #primitiveFileGetPosition
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileGetPositionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileGetPosition.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileGetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileOpenNewSmoke [
  self testMethod: #primitiveFileOpenNew
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileOpenNewStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileOpenNew.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileOpenNew.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileOpenSmoke [
  self testMethod: #primitiveFileOpen
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileOpenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileOpen.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileOpen.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileReadSmoke [
  self testMethod: #primitiveFileRead
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileReadStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileRead.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileRead.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileReadWithPinningSmoke [
  self testMethod: #primitiveFileReadWithPinning
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileReadWithPinningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileReadWithPinning.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileReadWithPinning.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileReadWithoutPinningSmoke [
  self testMethod: #primitiveFileReadWithoutPinning
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileReadWithoutPinningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileReadWithoutPinning.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileReadWithoutPinning.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileRenameSmoke [
  self testMethod: #primitiveFileRename
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileRenameStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileRename.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileRename.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileSetPositionSmoke [
  self testMethod: #primitiveFileSetPosition
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileSetPositionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSetPosition.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileSizeSmoke [
  self testMethod: #primitiveFileSize
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileStdioHandlesSmoke [
  self testMethod: #primitiveFileStdioHandles
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileStdioHandlesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileStdioHandles.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileStdioHandles.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileSyncSmoke [
  self testMethod: #primitiveFileSync
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileSyncStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSync.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSync.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileTruncateSmoke [
  self testMethod: #primitiveFileTruncate
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileTruncateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileTruncate.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileTruncate.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveFileWriteSmoke [
  self testMethod: #primitiveFileWrite
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveFileWriteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileWrite.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileWrite.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTest >> testPrimitiveHasFileAccessSmoke [
  self testMethod: #primitiveHasFileAccess
]

{ #category : #'equaliy-test' }
FilePluginTranslationTest >> testPrimitiveHasFileAccessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveHasFileAccess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveHasFileAccess.
  self assert: illiString equals: slangString
]
