Extension { #name : #ASTCStructAccessStaticOperator }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCStructAccessStaticOperator class >> associativity [
	"protocol: meta-data"
	
	"returns #left or #right.
	see following link for information about C operators precedence.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ #left
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCStructAccessStaticOperator class >> priority [
	"protocol: meta-data"
	
	"returns a number between 1 and 15 based on the ranking on cppreferecence.
	lowest has more priority.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ 1
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCStructAccessStaticOperator class >> symbol [
	"protocol: printing"
	
	^ #'.'
]
