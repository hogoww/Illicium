Extension { #name : #ASTCOperator }

{ #category : #'*ASTC-Core-Extensions' }
ASTCOperator class >> associativity [
	"protocol: meta-data"
	
	"returns #left or #right.
	see following link for information about C operators precedence.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ self subclassResponsibility 
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCOperator >> associativity [
	^ self class associativity
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCOperator >> priority [
	^ self class priority
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCOperator class >> priority [
	"protocol: meta-data"
	
	"returns a number between 1 and 15 based on the ranking on cppreferecence.
	lowest has more priority.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ self subclassResponsibility 
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCOperator class >> symbol [
	"protocol: printing"
	
	^ self subclassResponsibility
]
