Extension { #name : #ASTCBlock }

{ #category : #'*ASTC-Core-Extensions' }
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

{ #category : #'*ASTC-Core-Extensions' }
ASTCBlock >> addStatements: aBlock [
	aBlock statements 
		  do: [:aStatement| self addStatement: aStatement ]
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCBlock >> becomeExpressionList [
	"protocol: converting"
	| asExpressionList |
	asExpressionList := ASTCExpressionList new.
	self declarations ifNotEmpty: [ self halt." should not happen in Slang." ].
	self statements do:[:aStatement| asExpressionList addExpression: aStatement ].
	asExpressionList 
		parent: parent;
		pharoNode: pharoNode.
	self becomeForward: asExpressionList
]
