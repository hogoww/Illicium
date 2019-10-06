Extension { #name : #String }

{ #category : #'*ASTC-Builder' }
String >> asAnInstance [
	"returns a string (given as a String) with the following format to the classic arguments names: aClass, anObject [...]"

	"ASTCGenerator asString asAnInstance >>> 'anASTCGenerator'"

	^ (self first isVowel
		ifTrue: [ 'an' ]
		ifFalse: [ 'a' ]) , self capitalized
]

{ #category : #'*ASTC-Builder' }
String >> asVisitClassSelector [
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: 'visit';
				nextPutAll: self capitalized;
				nextPutAll: ':' ]
]
