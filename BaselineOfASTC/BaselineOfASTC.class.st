Class {
	#name : #BaselineOfASTC,
	#superclass : #BaselineOf,
	#category : #BaselineOfASTC
}

{ #category : #accessing }
BaselineOfASTC >> baseline: spec [
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
				"ASTC packages"
				package: 'Angler-RB-Extensions';
				
				package: 'ASTC-Core';
				package: 'ASTC-Core-Extensions' with:[ spec requires:#('ASTC-Core') ];
				package: 'ASTC-Core-Tests' with:[ spec requires:#('ASTC-Core-Extensions') ];
				
				"FAngler"
				package: 'Angler-Core' with:[ spec requires:#('ASTC-Core' 'ASTC-Core-Extensions') ];
				package: 'Angler-Core-Tests' with:[spec requires:#('Angler-Core') ]"
				package: 'Angler-Slang' with: [ #('Angler-Core' 'Angler-RBVisitors' 'Angler-VisitorASTC' 'ASTC-kernel') ];
				package: 'Angler-Slang-Tests' with: [ #('Angler-Slang') ];
				package: 'Angler-VisitorsASTC' with:[ spec requires:#('ASTC-Core') ];
				package: 'Angler-VisitorsASTC-Tests' with:[ spec requires:#('Angler-VisitorsASTC') ];
				package: 'Angler-RBVisitors' with:[ spec requires:#('ASTC-Core') ];
				package: 'Angler-RBVisitors-Tests' with:[ spec requires:#('Angler-RBVisitors') ];
				package: 'Illicium-Tools'"
		].
]

{ #category : #accessing }
BaselineOfASTC >> lastPlayground [

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
BaselineOfASTC >> projectClass [
	^ MetacelloCypressBaselineProject
]
