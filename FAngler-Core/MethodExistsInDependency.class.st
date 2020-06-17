Class {
	#name : #MethodExistsInDependency,
	#superclass : #MethodExists,
	#category : #'FAngler-Core-Errors'
}

{ #category : #accessing }
MethodExistsInDependency >> description [
	^ String streamContents:[:s|
		s << 'Method ';
			print: methodSelector;
			<< ' already exists in a dependency.'
		].
]
