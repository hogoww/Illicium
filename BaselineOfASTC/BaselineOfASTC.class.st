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
				package: 'ASTC-Builder';
				package: 'ASTC-Gen';
				package: 'ASTC-Gen-Extensions' with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Translating' with:[spec requires:#('ASTC-Gen')];
				package: 'ASTC-Translation' with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Kernel' with:[ spec requires:#('ASTC-Gen' 'ASTC-Translation')];
				package: 'ASTC-Translation-Tests' with:[spec requires:#('ASTC-Translation')];
				package: 'ASTC-VisitorsASTC' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsASTC-Tests' with:[ spec requires:#('ASTC-VisitorsASTC') ];
				package: 'ASTC-VisitorsRB';
				package: 'ASTC-VisitorsRB-Tests' with:[ spec requires:#('ASTC-VisitorsRB') ].
		].
	spec
		baseline: 'Phineas'
		with: [ spec repository: 'gitlab://pharo-project/phineas:master' ]
]

{ #category : #accessing }
BaselineOfASTC >> lastPlayground [ 

ASTCGenerator generate.

ASTCProgramTranslator new translateStartingFrom: #aMain from: RandomTestClass.

ASTCClassTranslator new mainTranslator: ASTCTranslator new; translateClass: RandomTestClass.
	

RandomTestClass new factorialPrimitive:3.
VirtualMachine new unloadModule:'aFile'.

]

{ #category : #accessing }
BaselineOfASTC >> projectClass [
	^ MetacelloCypressBaselineProject
]
