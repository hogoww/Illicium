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

| analysis runInC res |
ASTCGenerator generate.
MAPluginTestGenerator generateVMMakerPluginsTests.
MAPluginTestGenerator generateVMMakerInterpreterPrimitiveTests.
MAVMTestGenerator generateVMTests.
MAVMTestGenerator cleanUp.
MAPluginTestGenerator cleanUp.
MASlangTestResource resetAll.
MAFullVMCCodeGeneratorRessource reset.
MAFullVMCCodeGeneratorRessource current.
"MASlangTranslator new translateVM."
MASlangTranslator new generateVM.
PharoVMMaker generate: #StackVM outputDirectory: FileSystem workingDirectory / 'vmmaker'. 
MAIlliciumTranslator new generateTestClass: VMPinnedObjectTest .
VMSpurScavengeWeakTest.
MAIlliciumTranslator new generateTestMethod: (VMSpurTreeAllocationWithBigNodesTest >> #test01LargeLeftoverSmallerThanRootShouldBeInsertedInSmaller) ast.
MAIlliciumTranslator generateAllTestsFor: VMPinnedObjectTest.

MAIlliciumTranslator new generateTestClass: VMSpurScavengeEphemeronTest.

LibC resultOfCommand: 'cd ~/ovm && ./movestuff.sh ./testCompilation'.
LibC resultOfCommand: 'cd ~/ovm/testCompilation && make'.

LibC resultOfCommand: 'cd generated/tests && rm *'.

MAIlliciumTranslator resetVMProgram.
(VMSpurTreeAllocationWithBigNodesTest >> #test01LargeLeftoverSmallerThanRootShouldBeInsertedInSmaller) runInC.
MAIlliciumTranslator generateAllTestsFor: VMPinnedObjectTest.
MAIlliciumTranslator tryAllUnitTests.
TimeProfiler onBlock:[ MAIlliciumTranslator tryAllUnitTests. ].
(RPackageOrganizer default packageNamed: #VMMakerTests) classes.  

analysis := MutationTestingAnalysisInC
    testCasesFrom: { VMSpurOldSpaceTest }
    mutating: {VMSpurOldSpaceTest }
	 using: { RemoveAnonymousMessageMutantOperator selector: #freeChunkWithBytes:at: }
    with: SelectingFromCoverageMutantEvaluationStrategy new.
analysis run.


analysis := MutationTestingAnalysisInC
    testCasesFrom: VMSpurInitializedOldSpaceTest subclasses
    mutating: { VMSpurMemoryManagerTest }, VMSpurInitializedOldSpaceTest subclasses
	 using: { ReplaceAssertEqualWithDenyEqual new }
    with: SelectingFromCoverageMutantEvaluationStrategy new.
analysis run.

analysis := MutationTestingAnalysis
    testCasesFrom: {UUIDPrimitivesTest}
    mutating: {UUIDPrimitivesTest}
    using: {ReplaceAssertEqualWithDenyEqual new}
    with: SelectingFromCoverageMutantEvaluationStrategy new.
analysis run.
runInC.
"to find good mutants"
res := Bag new.
{ VMSpurMemoryManagerTest }, VMSpurInitializedOldSpaceTest subclasses do:[ :aClass|
	aClass methodsDo:[:aMethod|
		aMethod ast nodesDo: [ :aNode | 
			aNode isMessage ifTrue: [ res add: aNode selector] ]
		]
	].
res.

]

{ #category : #accessing }
BaselineOfFAngler >> projectClass [
	^ MetacelloCypressBaselineProject
]

{ #category : #accessing }
BaselineOfFAngler >> vmMutationPlayground [

| t1 analysis rep t methods methodsToUse t2 res |
t1 := Time now.
analysis := nil.
rep := (IceRepository registry detect: [ :r | r name = #ovm ]).
rep checkoutBranch: #VMMutation.
"Selection of methods"
t := MASlangTranslator new.
t prepareProgram.
methods := t program methods values.
methods := methods reject: [ :aMethod | ((aMethod pragmas collect: #selector) includesAny: #(doNotGenerate extern expandCases)) ].
methodsToUse := methods select: [ :aMethod | aMethod methodClass = Spur64BitMemoryManager ].

"actual mutation"
analysis := MutationTestingAnalysisInC
    testCasesFrom: { VMSpurObjectAllocationTest.VMPinnedObjectTest. VMSpurOldSpaceTest. VMSpurScavengeEphemeronTest. VMSpurScavengeWeakTest. VMSpurScavengerTest }
    mutating: { SpurMemoryManager }
     using: { 
        AddAnonymousPragmaOperator new 
            selector: #extern ;
            canMutateBlocks: 
                    { [ :aMethod | methods includes: aMethod ]}
            yourself. }
    with: AllTestsMethodsRunningMutantEvaluationStrategy new.
analysis repository: rep.
analysis run.
analysis.
t2 := Time now.
res := Duration seconds: (t2 asSeconds - t1 asSeconds).

MAIlliciumTranslator tryAllUnitTests 
]
