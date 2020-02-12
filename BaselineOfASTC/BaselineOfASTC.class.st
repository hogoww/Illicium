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
				package: 'Angler-RB-Extensions';
				"package: 'ASTC-Builder';" "Only dependance to Famix, un needed in most imports"
				package: 'ASTC-Core';
				package: 'ASTC-Core-Extensions' with:[ spec requires:#('ASTC-Core') ];
				package: 'ASTC-Core-Tests' with:[ spec requires:#('ASTC-Core-Extensions') ];
				package: 'Angler-Core' with:[ spec requires:#('ASTC-Core' 'ASTC-Core-Extensions') ];
				package: 'ASTC-Kernel' with:[ spec requires:#('ASTC-Core' 'Angler-Core') ];
				package: 'Angler-Core-Tests' with:[spec requires:#('Angler-Core') ];
				package: 'Angler-Slang' with: [ #('Angler-Core' 'Angler-RBVisitors' 'Angler-VisitorASTC' 'ASTC-kernel') ];
				package: 'Angler-Slang-Tests' with: [ #('Angler-Slang') ];
				package: 'Angler-VisitorsASTC' with:[ spec requires:#('ASTC-Core') ];
				package: 'Angler-VisitorsASTC-Tests' with:[ spec requires:#('Angler-VisitorsASTC') ];
				package: 'Angler-RBVisitors' with:[ spec requires:#('ASTC-Core') ];
				package: 'Angler-RBVisitors-Tests' with:[ spec requires:#('Angler-RBVisitors') ];
				package: 'Illicium-Plugins' with: [ spec requires: #('ASTC-Kernel') ];
				package: 'Illicium-Tools'.
		].

]

{ #category : #accessing }
BaselineOfASTC >> lastPlayground [
ASTCGenerator generate.

RandomTestClass new factorialPrimitive:3.
VirtualMachine new unloadModule:'aFile'.

ASTCFilePrinter new compilationUnit: (ASTCTranslator translateClass: ILBrokenPlugin); fileName:'gen' ; isPrimitive: true; printInFile.

Transcript clear
]

{ #category : #accessing }
BaselineOfASTC >> projectClass [
	^ MetacelloCypressBaselineProject
]
