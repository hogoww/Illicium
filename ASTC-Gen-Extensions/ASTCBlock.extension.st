Extension { #name : #ASTCBlock }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCBlock >> addStatement: aStatement [
  aStatement isEmptyStatement ifTrue: [ ^ self ].
  "enable transformation of a message into a collection of statement rather than only one.
   not sure it'll be good enough."
  aStatement isBlock 
    ifTrue: [ 
	   self addStatements: aStatement.
	 ]
    ifFalse:[	
       aStatement parent: self.
       statements add: aStatement 
    ]
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCBlock >> addStatements: aBlock [
	aBlock statements 
		  do: [:aStatement| self addStatement: aStatement ]
]
