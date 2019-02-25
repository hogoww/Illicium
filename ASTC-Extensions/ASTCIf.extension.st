Extension { #name : #ASTCIf }

{ #category : #'*ASTC-Extensions' }
ASTCIf >> else [
	"simple accessor"
	^statements at:self elseIndex.

]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> else:aStatement [
	"simple accessor"
	statements at:self elseIndex put:aStatement.
	^self.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> elseIndex [
	"Index to get to the element corresponding to the then statement in statements"
	^2
]

{ #category : #'*ASTC-Extensions' }
ASTCIf class >> if: anExpression then: thenStatement [
	"Basic natural constructor"
	"in C, it'll be translated as:
	if(anExpression)
		thenStatement;
	else
		elsestatement;"
	^self if:anExpression then:thenStatement else: nil.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> if: anExpression then: thenStatement else:elseStatement [
	"initialization for an If object"
	self predicate:anExpression;
		  then:thenStatement;
		  else:elseStatement.
	^self
]

{ #category : #'*ASTC-Extensions' }
ASTCIf class >> if: anExpression then: thenStatement else: elseStatement [
	"Basic natural constructor"
	"in C, it'll be translated as:
	if(anExpression)
		thenStatement;
	else
		elsestatement;"
	^self basicNew if:anExpression then:thenStatement else:elseStatement.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf class >> new [
	"block to force constructions through the #if:then:else: (and family) message."
	^self error:'As an If, I need at least an expression and a statement to be instanciated.'.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf class >> new: anExpression then: thenStatement [
	"Basic natural constructor"
	"in C, it'll be translated as:
	if(anExpression)
		thenStatement;
	else
		elsestatement;"
	^self if:anExpression then:thenStatement.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf class >> new: anExpression then: thenStatement else: elseStatement [
	"Basic natural constructor"
	"in C, it'll be translated as:
	if(anExpression)
		thenStatement;
	else
		elsestatement;"
	^self if:anExpression then:thenStatement else:elseStatement.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> predicate [
	"simple accessor"
	^expressions at:self predicateIndex.
	

]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> predicate:anExpression [
	"simple accessor"
	expressions at:self predicateIndex put:anExpression.
	^self.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> predicateIndex [
	"Index to get to the element corresponding to the else statement in statements"
	^1
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> then [
	"simple accessor"
	^statements at:self thenIndex .
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> then:aStatement [
	"simple accessor"
	statements at:self thenIndex put:aStatement.
	^self.
]

{ #category : #'*ASTC-Extensions' }
ASTCIf >> thenIndex [
	"Index to get to the element corresponding to the then statement in statements"
	^1
]
