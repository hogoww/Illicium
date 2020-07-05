Class {
	#name : #MethodWasAlreadyAdded,
	#superclass : #MethodExists,
	#category : #'FAngler-Core-Errors'
}

{ #category : #accessing }
MethodWasAlreadyAdded >> description [
	^ String streamContents:[:s|
		s << 'Method ';
			print: methodSelector;
			<< ' was previously added inside the program.'
		].
]
