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
				package: 'ASTC-Builder' with:[ spec requires:('Famix-MetamodelBuilder-Core')];
				package: 'ASTC-Gen' with:[ spec requires:('Famix-MetamodelBuilder-Core')];
				package: 'ASTC-Extention'; with:[ spec requires:('ASTC-Gen')];
				package: 'ASTC-Extention-tests' with:[ spec requires:('ASTC-Extention')];
				package: 'ASTC-Kernel' with:[ spec requires:('ASTC-Gen')];
				package: 'ASTC-Translation' with:[ spec requires:('ASTC-Gen')];
				package: 'ASTC-Translation-test' with:[spec requires:#('ASTC-Translation')].	
		].
]

{ #category : #accessing }
ASTBaseline >> projectClass [
	^ MetacelloCypressBaselineProject
]
