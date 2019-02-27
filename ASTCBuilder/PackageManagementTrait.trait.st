Trait {
	#name : #PackageManagementTrait,
	#category : #ASTCBuilder
}

{ #category : #adding }
PackageManagementTrait >> addPackageNamed: aString [
	"add aString as a new package of the environement."
	RPackageOrganizer new registerPackageNamed: aString.
]

{ #category : #removing }
PackageManagementTrait >> removePackageNamed: aString [
	(aString asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].
]
