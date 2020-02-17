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
				baseline: 'Phineas'
				with: [ spec repository: 'gitlab://pharo-project/Phineas:master' ].
			spec baseline: 'PlainPharoCode'
				with:[ spec repository: 'github://hogoww/PlainPharoCode:master' ].
			spec
				"ASTC"
				package: 'ASTC-Core';
				package: 'ASTC-Core-Extensions' with:[ spec requires:#('ASTC-Core') ];
				package: 'ASTC-Core-Tests' with:[ spec requires:#('ASTC-Core-Extensions') ];
				
				"ASTC packages"
				package: 'FAngler-RB-Extensions';
				
				"FAngler"
				package: 'FAngler-Core' with:[ spec requires:#('ASTC-Core' 'ASTC-Core-Extensions') ];
				package: 'FAngler-Core-Tests' with:[spec requires:#('FAngler-Core') ];	
				package: 'FAngler-ASTC-Visitors' with:[ spec requires:#('ASTC-Core') ];
				package: 'FAngler-ASTC-Visitors-Tests' with:[ spec requires:#('FAngler-ASTC-Visitors') ];
				package: 'FAngler-RB-Visitors' with:[ spec requires:#('ASTC-Core') ];
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
MATestGenerator generateVMTests.
MAPluginTestGenerator cleanUp.
MATestGenerator cleanUp.
MASlangTestResource resetAll.

MASpur64BitMemoryManagerTranslationTest methods select:[:m| m hasPragmaNamed: #skip]
]

{ #category : #accessing }
BaselineOfFAngler >> projectClass [
	^ MetacelloCypressBaselineProject
]
