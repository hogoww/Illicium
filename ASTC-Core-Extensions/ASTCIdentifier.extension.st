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
	"removed types, they are used in sizeOfs: #(char int float double long)"
	(#(#auto #break #case #const #continue #default #do #else #enum #extern #for #goto #if #register #return #signed #static #struct #switch #typedef #union #unsigned #void #volatile #while)
	includes: anId) ifTrue: [ ReservedKeywordUse new keyword: anId; signal ].
	id := anId
]
