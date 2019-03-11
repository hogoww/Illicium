"
I represent a stateless Trait used to handle the packages related primitives.

I create and remove packages from the system.


Public API and Key Messages

- addPackageNamed:aString / add the package named aString to the system
- removePackageNamed:aString / remove the package named aString to the system

"
Trait {
	#name : #PackageManagementTrait,
	#category : #ASTCBuilder
}

{ #category : #adding }
PackageManagementTrait >> addPackageNamed: aString [
	"add aString as the name of a new package of the environement."
	self flag:#isThisRight.
	RPackageOrganizer new registerPackageNamed: aString.
]

{ #category : #removing }
PackageManagementTrait >> removePackageNamed: aString [
	self flag:#isThisRight.
	"remove the package named aString from the system"
	(aString asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].
]
