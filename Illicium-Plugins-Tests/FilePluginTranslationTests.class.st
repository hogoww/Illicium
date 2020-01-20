Class {
	#name : #FilePluginTranslationTests,
	#superclass : #ILPluginSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
FilePluginTranslationTests >> setUp [
  super setUp.
  testedClass := FilePlugin.
  translator := ASTCSlangPluginTranslator new
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveConnectToFileDescriptorSmoke [
  self testMethod: #primitiveConnectToFileDescriptor
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveConnectToFileDescriptorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveConnectToFileDescriptor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveConnectToFileDescriptor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveConnectToFileSmoke [
  self testMethod: #primitiveConnectToFile
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveConnectToFileStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveConnectToFile.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveConnectToFile.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryCreateSmoke [
  self testMethod: #primitiveDirectoryCreate
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryCreateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryCreate.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryCreate.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryDeleteSmoke [
  self testMethod: #primitiveDirectoryDelete
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryDeleteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryDelete.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryDelete.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryDelimitorSmoke [
  self testMethod: #primitiveDirectoryDelimitor
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryDelimitorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryDelimitor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryDelimitor.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryEntrySmoke [
  self testMethod: #primitiveDirectoryEntry
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryEntryStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryEntry.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryEntry.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryGetMacTypeAndCreatorSmoke [
  self testMethod: #primitiveDirectoryGetMacTypeAndCreator
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryGetMacTypeAndCreatorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryGetMacTypeAndCreator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryGetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryLookupSmoke [
  self testMethod: #primitiveDirectoryLookup
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectoryLookupStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryLookup.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryLookup.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDirectorySetMacTypeAndCreatorSmoke [
  self testMethod: #primitiveDirectorySetMacTypeAndCreator
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDirectorySetMacTypeAndCreatorStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectorySetMacTypeAndCreator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectorySetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveDisableFileAccessSmoke [
  self testMethod: #primitiveDisableFileAccess
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveDisableFileAccessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDisableFileAccess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDisableFileAccess.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileAtEndSmoke [
  self testMethod: #primitiveFileAtEnd
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileAtEndStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileAtEnd.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileAtEnd.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileCloseSmoke [
  self testMethod: #primitiveFileClose
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileCloseStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileClose.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileClose.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileDeleteSmoke [
  self testMethod: #primitiveFileDelete
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileDeleteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileDelete.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileDelete.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileDescriptorTypeSmoke [
  self testMethod: #primitiveFileDescriptorType
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileDescriptorTypeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileDescriptorType.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileDescriptorType.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileFlushSmoke [
  self testMethod: #primitiveFileFlush
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileFlushStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileFlush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileFlush.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileGetPositionSmoke [
  self testMethod: #primitiveFileGetPosition
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileGetPositionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileGetPosition.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileGetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileOpenNewSmoke [
  self testMethod: #primitiveFileOpenNew
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileOpenNewStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileOpenNew.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileOpenNew.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileOpenSmoke [
  self testMethod: #primitiveFileOpen
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileOpenStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileOpen.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileOpen.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileReadSmoke [
  self testMethod: #primitiveFileRead
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileReadStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileRead.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileRead.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileReadWithPinningSmoke [
  self testMethod: #primitiveFileReadWithPinning
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileReadWithPinningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileReadWithPinning.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileReadWithPinning.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileReadWithoutPinningSmoke [
  self testMethod: #primitiveFileReadWithoutPinning
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileReadWithoutPinningStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileReadWithoutPinning.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileReadWithoutPinning.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileRenameSmoke [
  self testMethod: #primitiveFileRename
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileRenameStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileRename.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileRename.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileSetPositionSmoke [
  self testMethod: #primitiveFileSetPosition
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileSetPositionStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSetPosition.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileSizeSmoke [
  self testMethod: #primitiveFileSize
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileSizeStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSize.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileStdioHandlesSmoke [
  self testMethod: #primitiveFileStdioHandles
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileStdioHandlesStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileStdioHandles.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileStdioHandles.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileSyncSmoke [
  self testMethod: #primitiveFileSync
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileSyncStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSync.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSync.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileTruncateSmoke [
  self testMethod: #primitiveFileTruncate
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileTruncateStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileTruncate.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileTruncate.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveFileWriteSmoke [
  self testMethod: #primitiveFileWrite
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveFileWriteStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileWrite.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileWrite.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testPrimitiveHasFileAccessSmoke [
  self testMethod: #primitiveHasFileAccess
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testPrimitiveHasFileAccessStringComparison [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveHasFileAccess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveHasFileAccess.
  self assert: illiString equals: slangString
]
