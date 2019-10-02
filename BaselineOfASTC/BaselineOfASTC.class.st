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
				"package: 'ASTC-Builder';" "Only dependance to Famix, un needed in most imports"
				package: 'ASTC-Gen';
				package: 'ASTC-Gen-Extensions' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-Translation' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-Kernel' with:[ spec requires:#('ASTC-Gen' 'ASTC-Translation') ];
				package: 'ASTC-Translation-Tests' with:[spec requires:#('ASTC-Translation') ];
				package: 'ASTC-VisitorsASTC' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsASTC-Tests' with:[ spec requires:#('ASTC-VisitorsASTC') ];
				package: 'ASTC-VisitorsRB' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsRB-Tests' with:[ spec requires:#('ASTC-VisitorsRB') ];
				package: 'IlliciumPlugins' with: [ spec requires: #('ASTC-Kernel') ];
				package: 'IlliciumPlugins-Tests' with: [ spec requires: #('ASTC-Kernel') ].	
			spec
				baseline: 'Phineas'
				with: [ spec repository: 'gitlab://pharo-project/phineas:fixedTypes' ].
			spec
				baseline: 'ParametrizedTests'
				with: [ spec repository: 'github://tesonep/ParametrizedTests:master' ].
			spec
				baseline: 'PlainPharoCode'
				with: [ spec repository: 'github://tesonep/PlainPharoCode:master' ].
		].

]

{ #category : #accessing }
BaselineOfASTC >> lastPlayground [

ASTCGenerator generate.
ASTCGeneratorNew generate.

ASTCTranslator new translateClass: RandomTestClass.

ASTCTranslator translateClass: RandomTestClass.

ASTCSlangClassTranslator translateClass: MiscPrimitivePlugin.

ASTCSlangClassTranslator translateMethod: #primitiveCompareString fromClass: MiscPrimitivePlugin.

RandomTestClass new factorialPrimitive:3.
VirtualMachine new unloadModule:'aFile'.

PlainCodeVisitorTest new setUp testRighSideAssignementVariableNodeExpand.
]

{ #category : #accessing }
BaselineOfASTC >> projectClass [
	^ MetacelloCypressBaselineProject
]
