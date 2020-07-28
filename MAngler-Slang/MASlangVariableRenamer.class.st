Class {
	#name : #MASlangVariableRenamer,
	#superclass : #Object,
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #renaming }
MASlangVariableRenamer class >> newNameForName: aTempName withExistingNames: names [
	| newName counter |
	counter := 1.
	[ 
		newName := aTempName , counter asString.
		names includes: newName
	] whileTrue: [ counter := counter + 1 ].
	^ newName
]

{ #category : #renaming }
MASlangVariableRenamer class >> renameVariablesOf: aMethodNode byArguments: arguments [
	| replacement |
	aMethodNode isVariable ifTrue:[ ^ ASTCBlock new ].
	aMethodNode body nodesDo: [:aNode |  
		(aNode isArgument and:[ (aNode whoDefines: aNode name) = aMethodNode ]) ifTrue: [
			replacement := arguments at: (aMethodNode arguments indexOf: aNode).
			aNode replaceWith: replacement ] ] 
]

{ #category : #renaming }
MASlangVariableRenamer >> handleTemporariesFrom: methodToInline in: methodInlining [
	| renamer |
	"we first get the names"
	renamer := MAEnsureIDAppearsOncePerMethod new.
	methodInlining acceptVisitor: renamer.

	"copy := methodInlining copy.
	copy copy acceptVisitor: MAEnsureIDAppearsOncePerMethod new."
	
	methodToInline acceptVisitor: (MAEnsureIDAppearsOncePerMethod new startWithNamesInScope: renamer allIds ; yourself).
		
	"finally we merge the name annotations. as well as the declaration annotation"
	self mergeTemporariesOf: methodToInline into: methodInlining
]

{ #category : #renaming }
MASlangVariableRenamer >> mergeTemporariesOf: methodToInline into: methodInlining [
	| declarationProperty |
	declarationProperty := FAVariableDeclarationAnnotator propertyName.
	"in case of testing environment, we don't check"
	methodInlining body
		temporaries: methodInlining temporaries , methodToInline body temporaries.
	"	
	((methodInlining body hasProperty: declarationProperty) 
		and:[ methodToInline body hasProperty: declarationProperty ]) ifFalse:[ ^ self ].
	
	methodInlining body
		propertyAt: declarationProperty
		put: (methodInlining body propertyAt: declarationProperty)
				, (methodToInline body propertyAt: declarationProperty)."
]

{ #category : #renaming }
MASlangVariableRenamer >> newNameForName: aTempName withExistingNames: names [
	^ self class newNameForName: aTempName withExistingNames: names
]

{ #category : #renaming }
MASlangVariableRenamer >> newNamesForIntersectionOf: tempNames1 and: tempNames2 [
	| newTemporariesName intersection |
	"We gather the names of the temporaries that appear in both method, and find a suitable new name for the ones that will be inlined."
	newTemporariesName := Dictionary new.
	intersection := tempNames1 intersection: tempNames2.
	
	"suitable new name being the same name, with a number at the end."
	intersection do: [ :aTempName | 
			newTemporariesName 
				at: aTempName 
				put: (self newNameForName: aTempName withExistingNames: intersection).
		].
	^ newTemporariesName
]

{ #category : #renaming }
MASlangVariableRenamer >> renameVariablesOf: aMethodNode byArguments: arguments [
  self class renameVariablesOf: aMethodNode byArguments: arguments
]
