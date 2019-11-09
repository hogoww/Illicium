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
				baseline: 'Phineas'
				with: [ spec repository: 'gitlab://pharo-project/hineas:master' ].
			spec
				baseline: 'TypedSlot'
				with: [ spec repository: 'github://hogoww/TypedSlot:master' ].
			spec
				baseline: 'ParametrizedTests'
				with: [ spec repository: 'github://tesonep/ParametrizedTests:master' ].
			spec baseline: 'PlainPharoCode'
				with:[ spec repository: 'github://hogoww/PlainPharoCode:master' ].
			spec
				baseline: 'TypedSlot'
				with: [ spec repository: 'github://hogoww/TypedSlot' ].
			spec
				"package: 'ASTC-Builder';" "Only dependance to Famix, un needed in most imports"
				package: 'ASTC-Gen';
				package: 'ASTC-Gen-Extensions' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-Translation' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-Kernel' with:[ spec requires:#('ASTC-Gen' 'ASTC-Translation') ];
				package: 'ASTC-VM-extensions';
				package: 'ASTC-Translation-Tests' with:[spec requires:#('ASTC-Translation' 'ASTC-VM-extensions') ];
				package: 'ASTC-VisitorsASTC' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsASTC-Tests' with:[ spec requires:#('ASTC-VisitorsASTC') ];
				package: 'ASTC-VisitorsRB' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsRB-Tests' with:[ spec requires:#('ASTC-VisitorsRB') ];
				package: 'IlliciumPlugins' with: [ spec requires: #('ASTC-Kernel') ];
				package: 'IlliciumPlugins-Tests' with: [ spec requires: #('ASTC-Kernel') ].
		].

]

{ #category : #accessing }
BaselineOfASTC >> lastPlayground [

ASTCGenerator generate.

ASTCTranslator new translateClass: RandomTestClass.
ASTCSlangTranslator translateClass: MiscPrimitivePlugin.

ASTCSlangTranslator new translateMethod: #primitiveCompareString fromClass: MiscPrimitivePlugin.

RandomTestClass new factorialPrimitive:3.
VirtualMachine new unloadModule:'aFile'.

Transcript clear.
]

{ #category : #accessing }
BaselineOfASTC >> projectClass [
	^ MetacelloCypressBaselineProject
]
