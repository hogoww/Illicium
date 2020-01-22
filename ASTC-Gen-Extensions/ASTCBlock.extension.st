Extension { #name : #ASTCBlock }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCBlock >> addStatement: aStatement [
  aStatement isEmptyStatement ifTrue: [ ^ self ].
  "enable transformation of a message into a collection of statement rather than only one.
   not sure it'll be good enough."
  aStatement isBlock 
    ifTrue: [ 
	   aStatement statements 
		  do: [:aRealStatement| self addStatement: aRealStatement 
	 ] ]
    ifFalse:[	
       aStatement parent: self.
       statements add: aStatement 
    ]
]
