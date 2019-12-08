Extension { #name : #Iceberg }

{ #category : #'*Illicium-Tools' }
Iceberg class >> repositoryForPackage: anRPackage [ 
	| loadedRepositories |
	
	loadedRepositories := IceRepository registry.
	
	loadedRepositories do: [:aRepo| 
		aRepo loadedPackages detect: [:anIcePackage| 
			anRPackage name = anIcePackage package ] ifFound: [:anIcePackage| ^ aRepo ] ].

	self error: ('Could not find a git repository for {1}' format: {anRPackage name})
	
]
