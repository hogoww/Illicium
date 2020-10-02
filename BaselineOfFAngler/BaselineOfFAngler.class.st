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
MASlangTranslator new translateTestClass: VMByteCodesTest.

MAIlliciumTranslator new vmDependentCode; translateClass: VMFrameBuilder.
]

{ #category : #accessing }
BaselineOfFAngler >> projectClass [
	^ MetacelloCypressBaselineProject
]
