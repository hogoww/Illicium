Extension { #name : #Iceberg }

{ #category : #'*Illicium-Tools' }
Iceberg class >> repositoryForPackage: aRPackage [ 
	| loadedRepositories |
	
	loadedRepositories := IceRepository registry.
	
	loadedRepositories do: [:aRepo| 
		aRepo loadedPackages detect: [:anIcePackage| 
			aRPackage name = anIcePackage package ] ifFound: [:anIcePackage| ^ aRepo ] ].

	self error: ('Could not find a git repository for {1}' format: {aRPackage name})
	
]
