Class {
	#name : #BaselineOfFAngler,
	#superclass : #BaselineOf,
	#category : #BaselineOfFAngler
}

{ #category : #accessing }
BaselineOfFAngler >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'OSSubprocess'
				with: [ spec repository: 'github://pharo-contributions/OSSubprocess:master' ].
			spec
				baseline: 'TypedSlot'
				with: [ spec repository: 'github://hogoww/TypedSlot:master' ].
			spec 
				baseline: 'ASTC'
				with: [ spec repository: 'github://hogoww/C-AST:master' ].
			spec
				baseline: 'Phineas'
				with: [ spec repository: 'gitlab://pharo-project/Phineas:vmtests' ].
			spec baseline: 'PlainPharoCode'
				with:[ spec repository: 'github://hogoww/PlainPharoCode:master' ].
			
			spec				
				package: 'FAngler-RB-Extensions';
				
				"FAngler"
				package: 'FAngler-Core';
				package: 'FAngler-Core-Tests' with:[spec requires:#('FAngler-Core') ];	
				package: 'FAngler-ASTC-Visitors';
				package: 'FAngler-ASTC-Visitors-Tests' with:[ spec requires:#('FAngler-ASTC-Visitors') ];
				package: 'FAngler-RB-Visitors';
				package: 'FAngler-RB-Visitors-Tests' with:[ spec requires:#('FAngler-RB-Visitors') ];	
					
				package: 'MAngler-Illicium' with: [ #('FAngler-Core' 'FAngler-RB-Visitors' 'FAngler-ASTC-Visitors') ];
				package: 'MAngler-Illicium-Tests' with: [ #('MAngler-Core-Tests' 'MAngler-Illicium') ];
				package: 'MAngler-Slang' with: [ #('FAngler-Core' 'FAngler-RB-Visitors' 'FAngler-ASTC-Visitors') ];
				package: 'MAngler-Slang-Tests' with: [ #('MAngler-Core-Tests' 'MAngler-Slang') ]
			]
]

{ #category : #accessing }
BaselineOfFAngler >> lastPlayground [

	^ '(VMPinnedObjectTest >> #testAllocatingObjectAfterManyPinnedObjectShouldSlideAtStartOfOldSpace) runInC.


repository := IceRepository repositories detect:[:r | r name = ''ovm'' ].
mutator := MutationTestingAnalysisInC
	testCasesFrom: {VMSpurOldSpaceStructureTest}
	mutating: { SpurMemoryManager . Spur64BitMemoryManager }
	using: MutantOperator contents
	with: SelectingFromCoverageMutantEvaluationStrategy new
	with: SelectingFromCoverageMutationsGenerationStrategy new.
mutator maxMutationNumber: 1.
mutator repository: repository.
mutator run.

repository := IceRepository repositories detect:[:r | r name = ''Phineas'' ].

repository := IceRepository repositories detect:[:r | r name = ''ovm'' ].	
repository ifNil: [ self halt ].
mutator := MutationTestingAnalysisInC
	testCasesFrom: VMSpurInitializedOldSpaceTest withAllSubclasses , { VMSpurNewSpaceStructureTest	. VMSpurOldSpaceBootstrapTest . VMSpurOldSpaceStructureTest }
	mutating: { SpurMemoryManager . Spur64BitMemoryManager }
	using: MutantOperator contents
	with: SelectingFromCoverageMutantEvaluationStrategy new
	with: SelectingFromCoverageMutationsGenerationStrategy new.
mutator repository: repository.
mutator takeOnlyPassingTestCases.
mutator generatePrecalculation.


mutator := FLMaterializer materializeFromFileNamed: ''mutator''.
repository := IceRepository repositories detect:[:r | r name = ''ovm'' ].
mutator repository: repository.
mutator continueRunningMutants.

FLSerializer serialize: mutator toFileNamed: ''mutator''.
mutator := FLMaterializer materializeFromFileNamed: ''mutator''.

"To reorder the mutant, find out which ones are missing"
newParticularResults := Array new: mutator particularResults last mutant mutantNumber.
(mutator particularResults asOrderedCollection select: #notNil)
 do: [ :m| newParticularResults at: m mutant mutantNumber put: m ].
mutator particularResults: newParticularResults asOrderedCollection.
mutator particularResults select:#isNotNil thenCollect: [ :m | m mutant mutantNumber].


"to help out with memory leaks"
res := nil.
res := Smalltalk allClasses
	collect: [ :aClass | aClass -> aClass allInst ances ]
	thenSelect: [ :assoc | assoc value size > 100 ].
res sort: [ :i1 :i2 | i1 value size > i2 value size ].
res collect: [ :a| a key -> a value size ].


Smalltalk garbageCollect. SystemNavigation default allObjects select: [ :o | o isPinned ] thenCollect:[:o | o unpin. o]. Smalltalk garbageCollect. 
MCSnapshot allInstances do:[ :i | i removeState  ]. Smalltalk garbageCollect.
refs:=0.
refs := ReferenceFinder findAllPathsTo: (MCMethodDefinition allInstances detect:[:o| o className = #SpurMemoryManager ]).
refs := ReferenceFinder findAllPathsToInstanceOf: MCMethodDefinition.
res asDictionary at: MCMethodDefinition .
FakeDictionary.
'
]

{ #category : #accessing }
BaselineOfFAngler >> projectClass [
	^ MetacelloCypressBaselineProject
]
