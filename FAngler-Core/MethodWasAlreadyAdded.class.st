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
			<< ' wes previously added inside the program.'
		].
]
