Trait {
	#name : #PackageManagementTrait,
	#category : #ASTCBuilder
}

{ #category : #adding }
PackageManagementTrait >> addPackageNamed: aString [
	"add aString as a new package of the environement."
	self flag:#isThisRight.
	RPackageOrganizer new registerPackageNamed: aString.
]

{ #category : #removing }
PackageManagementTrait >> removePackageNamed: aString [
	self flag:#isThisRight.
	"remove the package from the system"
	(aString asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].
]
