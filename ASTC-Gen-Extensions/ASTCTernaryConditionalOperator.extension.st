Extension { #name : #ASTCTernaryConditionalOperator }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCTernaryConditionalOperator class >> associativity [
	"protocol: meta-data"
	
	"returns #left or #right.
	see following link for information about C operators precedence.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ #right
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCTernaryConditionalOperator class >> priority [
	"protocol: meta-data"
	
	"returns a number between 1 and 15 based on the ranking on cppreferecence.
	lowest has more priority.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ 13
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCTernaryConditionalOperator class >> symbol [
	"protocol: printing"
	"cannot be queried as the others."
	^ self shouldNotImplement 
]
