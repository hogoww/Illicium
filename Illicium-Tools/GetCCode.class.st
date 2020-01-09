"
Small class to query C code for VM generated functions.

Set the VM path in the class side, so it's easier.
By default, look for the repository in 'FileLocator document'

Try me! 
	in plugin:
		GetCCode find: #primitiveAt inPlugin: #FloatArrayPlugin
	in VM: 
		GetCCode findInVM: #primitiveVoidReceiver
"
Class {
	#name : #GetCCode,
	#superclass : #Object,
	#category : #'Illicium-Tools'
}

{ #category : #private }
GetCCode class >> find: aPrimitiveName inPlugin: aPlugin [
	^ self new find: aPrimitiveName inPlugin: aPlugin
]

{ #category : #private }
GetCCode class >> findInVM: aPrimitiveName [ 
	^ self new findInVM: aPrimitiveName 
]

{ #category : #'as yet unclassified' }
GetCCode class >> vmRepositoryDirectory [
	^ FileLocator documents / 'OpenSmalltalk-vm' / 'src'
]

{ #category : #api }
GetCCode >> find: primitive inPlugin: pluginName [
	| file |
	file := self getPluginFile: pluginName.
	file exists ifFalse:[ FileDoesNotExistException signal ].

	^ self findFunction: primitive in: file readStream contents
]

{ #category : #'search-file' }
GetCCode >> findFunction: primitiveName in: aFileContent [
	| shouldCollect lines |
	^ String streamContents: [ :s | 
		  shouldCollect := false.
		  lines := aFileContent lines.
		  1 to: lines size - 1 do: [ :i | 
			  | current matcher |
			  current := lines at: i.
			  matcher := RxMatcher forString: primitiveName,'\(.*\)'.
			  ((matcher matches: current) and: [ ((lines at: i + 1) at: 1) = ${ ]) 
				  ifTrue: [ shouldCollect := true ].
			  (shouldCollect and: [ current = '}' ]) ifTrue: [ 
				  s << '}'.
				  shouldCollect := false ].
			  shouldCollect ifTrue: [ 
				  s
					  << current;
					  cr ] ] ]
]

{ #category : #api }
GetCCode >> findInVM: primitive [
	| file |
	file := self getVMFile.
	file exists ifFalse:[ FileDoesNotExistException signal ].

	^ self findFunction: primitive in: file readStream contents
]

{ #category : #path }
GetCCode >> getPluginFile: aPluginName [
	^ self getVMDirectory / 'plugins' / aPluginName / (aPluginName , '.c') 
]

{ #category : #path }
GetCCode >> getVMDirectory [
	^ self class vmRepositoryDirectory

]

{ #category : #path }
GetCCode >> getVMFile [
	^ self getVMDirectory / 'vm' / 'gcc3x-cointerp.c'
]
