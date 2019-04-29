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
				package: 'ASTC-Kernel' with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Translation' with:[ spec requires:#('ASTC-Gen')];
				package: 'ASTC-Translation-test' with:[spec requires:#('ASTC-Translation')];
				package: 'ASTC-VisitorsASTC' with:[ spec requires:#('ASTC-Gen') ];
				package: 'ASTC-VisitorsASTC-Tests' with:[ spec requires:#('ASTC-VisitorsASTC') ];
				package: 'ASTC-VisitorsRB';
				package: 'ASTC-VisitorsRB-Tests' with:[ spec requires:#('ASTC-VisitorsRB') ].
		].
]

{ #category : #accessing }
BaselineOfASTC >> projectClass [
	^ MetacelloCypressBaselineProject
]
