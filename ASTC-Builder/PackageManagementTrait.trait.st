"
I represent a stateless Trait used to handle the packages related primitives.

I create and remove packages from the system.


Public API and Key Messages

- addPackageNamed:aString / add the package named aString to the system
- removePackageNamed:aString / remove the package named aString to the system

"
Trait {
	#name : #PackageManagementTrait,
	#category : #'ASTC-Builder'
}

{ #category : #adding }
PackageManagementTrait >> addPackageNamed: aString [
	"add aString as the name of a new package of the environement."
	RPackageOrganizer new registerPackageNamed: aString.
]

{ #category : #adding }
PackageManagementTrait >> getPackageNamed: aName [
	^aName asPackageIfAbsent: [ nil ]
]

{ #category : #removing }
PackageManagementTrait >> removePackageNamed: aString [
	"remove the package named aString from the system"
	(aString asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].
]
