Extension { #name : #ASTCExpressionsContainer }

{ #category : #'*ASTC-Extensions' }
ASTCExpressionsContainer >> at: anIndex put: anExpression [
	| tempCollection |
	"Simulate the add:put: as available on OrderedCollection"
	
	self flag: #inefficient.
	self flag: #codeDuplication. "Code duplicated with ASTCStatementContainer ASTCDeclarationContainer"
	self flag: #toScript. "Since these Trait are generated, it would require to compose a Trait after generation. Unless we use a script to do it, it's annoying."
	"Alternative is to recompile collection. It takes a bit too much time :)"
		
	tempCollection:=Collection new: self size-anIndex. "Will be used as a temporary container while we put the new value."

	[ self size ~= anIndex ]
	whileFalse:["We pop the elements inside the temp collection till we are at the index"
		tempCollection add: (self remove:self last).
		].
	
	self remove:self last. "we remove the current value at anIndex"
	self add: anExpression. "we put the new value"
	
	[ tempCollection isEmpty ]
	whileFalse:["and we refill ourselves with the remaining elements. (reverse addAll)"
		self add:tempCollection last.
		].
	^anExpression
]
