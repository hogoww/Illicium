Class {
	#name : #FilePluginTranslationTests,
	#superclass : #ILSlangToCGeneratedTests,
	#category : #'Illicium-Plugins-Tests'
}

{ #category : #running }
FilePluginTranslationTests >> setUp [
  super setUp.
  testedClass := FilePlugin.
  translator := ASTCSlangTranslator new
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveConnectToFile [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveConnectToFile.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveConnectToFile.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveConnectToFileDescriptor [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveConnectToFileDescriptor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveConnectToFileDescriptor.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryCreate [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryCreate.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryCreate.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryDelete [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryDelete.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryDelete.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryDelimitor [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryDelimitor.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryDelimitor.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryEntry [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryEntry.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryEntry.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryGetMacTypeAndCreator [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryGetMacTypeAndCreator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryGetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryLookup [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectoryLookup.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectoryLookup.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectorySetMacTypeAndCreator [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDirectorySetMacTypeAndCreator.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDirectorySetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDisableFileAccess [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveDisableFileAccess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveDisableFileAccess.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileAtEnd [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileAtEnd.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileAtEnd.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileClose [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileClose.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileClose.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileDelete [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileDelete.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileDelete.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileDescriptorType [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileDescriptorType.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileDescriptorType.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileFlush [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileFlush.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileFlush.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileGetPosition [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileGetPosition.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileGetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileOpen [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileOpen.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileOpen.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileOpenNew [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileOpenNew.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileOpenNew.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileRead [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileRead.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileRead.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileReadWithPinning [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileReadWithPinning.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileReadWithPinning.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileReadWithoutPinning [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileReadWithoutPinning.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileReadWithoutPinning.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileRename [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileRename.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileRename.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileSetPosition [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSetPosition.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileSize [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSize.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSize.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileStdioHandles [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileStdioHandles.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileStdioHandles.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileSync [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileSync.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileSync.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileTruncate [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileTruncate.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileTruncate.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileWrite [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveFileWrite.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveFileWrite.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveHasFileAccess [
  | illiAST slangString illiString |
  illiAST := self generateIllicium: #primitiveHasFileAccess.
  illiString := self prettyPrintIllicium: illiAST.
  slangString := self generateSlang: #primitiveHasFileAccess.
  self assert: illiString equals: slangString
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveConnectToFile [
  self testMethod: #primitiveConnectToFile
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveConnectToFileDescriptor [
  self testMethod: #primitiveConnectToFileDescriptor
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectoryCreate [
  self testMethod: #primitiveDirectoryCreate
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectoryDelete [
  self testMethod: #primitiveDirectoryDelete
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectoryDelimitor [
  self testMethod: #primitiveDirectoryDelimitor
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectoryEntry [
  self testMethod: #primitiveDirectoryEntry
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectoryGetMacTypeAndCreator [
  self testMethod: #primitiveDirectoryGetMacTypeAndCreator
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectoryLookup [
  self testMethod: #primitiveDirectoryLookup
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDirectorySetMacTypeAndCreator [
  self testMethod: #primitiveDirectorySetMacTypeAndCreator
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveDisableFileAccess [
  self testMethod: #primitiveDisableFileAccess
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileAtEnd [
  self testMethod: #primitiveFileAtEnd
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileClose [
  self testMethod: #primitiveFileClose
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileDelete [
  self testMethod: #primitiveFileDelete
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileDescriptorType [
  self testMethod: #primitiveFileDescriptorType
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileFlush [
  self testMethod: #primitiveFileFlush
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileGetPosition [
  self testMethod: #primitiveFileGetPosition
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileOpen [
  self testMethod: #primitiveFileOpen
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileOpenNew [
  self testMethod: #primitiveFileOpenNew
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileRead [
  self testMethod: #primitiveFileRead
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileReadWithPinning [
  self testMethod: #primitiveFileReadWithPinning
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileReadWithoutPinning [
  self testMethod: #primitiveFileReadWithoutPinning
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileRename [
  self testMethod: #primitiveFileRename
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileSetPosition [
  self testMethod: #primitiveFileSetPosition
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileSize [
  self testMethod: #primitiveFileSize
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileStdioHandles [
  self testMethod: #primitiveFileStdioHandles
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileSync [
  self testMethod: #primitiveFileSync
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileTruncate [
  self testMethod: #primitiveFileTruncate
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveFileWrite [
  self testMethod: #primitiveFileWrite
]

{ #category : #'smoke-test' }
FilePluginTranslationTests >> testSmokePrimitiveHasFileAccess [
  self testMethod: #primitiveHasFileAccess
]
