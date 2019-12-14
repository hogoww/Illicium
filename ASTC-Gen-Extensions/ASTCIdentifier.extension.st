Extension { #name : #ASTCIdentifier }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCIdentifier >> assign: anExpression [
	^ ASTCAssignmentOperator new
		addOperand: self;
		addOperand: anExpression;
		yourself
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCIdentifier >> id: anId [
	"took from a random list, might not be good enough"
	(#(#auto #break #case #char #const #continue #default #do #double #else #enum #extern #float #for #goto #if #int #long #register #return #short #signed #sizeof #static #struct #switch #typedef #union #unsigned #void #volatile #while)
	includes: anId) ifTrue: [ ReservedKeywordUse new keyword: anId; signal ].
	id := anId
]
