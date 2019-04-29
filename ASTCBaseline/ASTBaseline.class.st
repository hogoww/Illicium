Class {
	#name : #ASTBaseline,
	#superclass : #BaselineOf,
	#category : #ASTCBaseline
}

{ #category : #accessing }
ASTBaseline >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'ASTC-Builder' with:[ spec requires:#('Famix-MetamodelBuilder-Core')];
				package: 'ASTC-Gen';
				package: 'ASTC-Gen-Extension'; with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Kernel' with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Translation' with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Translation-test' with:[spec requires:#('ASTC-Translation')];
				package: 'ASTC-VisitorsASTC' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsASTC-Tests' with:[ spec requires:#('ASTC-VisitorsASTC') ];
				package: 'ASTC-VisitorsRB' with:[ spec requires:#('Phineas') ];
				package: 'ASTC-VisitorsRB-Tests' with:[ spec requires:#('ASTC-VisitorsRB') ].
		].
]

{ #category : #accessing }
ASTBaseline >> projectClass [
	^ MetacelloCypressBaselineProject
]
