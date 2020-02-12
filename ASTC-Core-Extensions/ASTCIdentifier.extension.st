Extension { #name : #ASTCIdentifier }

{ #category : #'*ASTC-Core-Extensions' }
ASTCIdentifier class >> id: aSymbol [
	^ self new
		id: aSymbol;
		yourself
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCIdentifier >> id: anId [
	"took from a random list, might not be good enough"
	"removed #sizeof, because it's kindof a function anyway, so it shouldn't impact much"
	(#(#auto #break #case #char #const #continue #default #do #double #else #enum #extern #float #for #goto #if #int #long #register #return #short #signed #static #struct #switch #typedef #union #unsigned #void #volatile #while)
	includes: anId) ifTrue: [ ReservedKeywordUse new keyword: anId; signal ].
	id := anId
]
