Extension { #name : #ASTCBlock }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCBlock >> addStatement: aStatement [
  aStatement isEmptyStatment ifTrue: [ ^ self ].
  aStatement parent: self.
  statements add: aStatement
]
