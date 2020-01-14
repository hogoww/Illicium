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
  | slangString illiString |
  illiString := self generateIllicium: #primitiveConnectToFile.
  slangString := self generateSlang: #primitiveConnectToFile.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveConnectToFileDescriptor [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveConnectToFileDescriptor.
  slangString := self generateSlang: #primitiveConnectToFileDescriptor.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryCreate [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectoryCreate.
  slangString := self generateSlang: #primitiveDirectoryCreate.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryDelete [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectoryDelete.
  slangString := self generateSlang: #primitiveDirectoryDelete.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryDelimitor [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectoryDelimitor.
  slangString := self generateSlang: #primitiveDirectoryDelimitor.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryEntry [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectoryEntry.
  slangString := self generateSlang: #primitiveDirectoryEntry.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryGetMacTypeAndCreator [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectoryGetMacTypeAndCreator.
  slangString := self generateSlang: #primitiveDirectoryGetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectoryLookup [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectoryLookup.
  slangString := self generateSlang: #primitiveDirectoryLookup.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDirectorySetMacTypeAndCreator [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDirectorySetMacTypeAndCreator.
  slangString := self generateSlang: #primitiveDirectorySetMacTypeAndCreator.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveDisableFileAccess [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveDisableFileAccess.
  slangString := self generateSlang: #primitiveDisableFileAccess.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileAtEnd [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileAtEnd.
  slangString := self generateSlang: #primitiveFileAtEnd.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileClose [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileClose.
  slangString := self generateSlang: #primitiveFileClose.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileDelete [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileDelete.
  slangString := self generateSlang: #primitiveFileDelete.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileDescriptorType [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileDescriptorType.
  slangString := self generateSlang: #primitiveFileDescriptorType.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileFlush [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileFlush.
  slangString := self generateSlang: #primitiveFileFlush.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileGetPosition [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileGetPosition.
  slangString := self generateSlang: #primitiveFileGetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileOpen [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileOpen.
  slangString := self generateSlang: #primitiveFileOpen.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileOpenNew [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileOpenNew.
  slangString := self generateSlang: #primitiveFileOpenNew.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileRead [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileRead.
  slangString := self generateSlang: #primitiveFileRead.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileReadWithPinning [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileReadWithPinning.
  slangString := self generateSlang: #primitiveFileReadWithPinning.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileReadWithoutPinning [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileReadWithoutPinning.
  slangString := self generateSlang: #primitiveFileReadWithoutPinning.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileRename [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileRename.
  slangString := self generateSlang: #primitiveFileRename.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileSetPosition [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileSetPosition.
  slangString := self generateSlang: #primitiveFileSetPosition.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileSize [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileSize.
  slangString := self generateSlang: #primitiveFileSize.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileStdioHandles [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileStdioHandles.
  slangString := self generateSlang: #primitiveFileStdioHandles.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileSync [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileSync.
  slangString := self generateSlang: #primitiveFileSync.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileTruncate [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileTruncate.
  slangString := self generateSlang: #primitiveFileTruncate.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveFileWrite [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveFileWrite.
  slangString := self generateSlang: #primitiveFileWrite.
  self assert: illiString equals: slangString
]

{ #category : #'equaliy-test' }
FilePluginTranslationTests >> testEqualsSlangOutputForPrimitiveHasFileAccess [
  | slangString illiString |
  illiString := self generateIllicium: #primitiveHasFileAccess.
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
