Extension { #name : #ASTCBitwiseXorOperator }

{ #category : #'*ASTC-Core-Extensions' }
ASTCBitwiseXorOperator class >> associativity [
	"protocol: meta-data"
	
	"returns #left or #right.
	see following link for information about C operators precedence.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ #left
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCBitwiseXorOperator class >> priority [
	"protocol: meta-data"
	
	"returns a number between 1 and 15 based on the ranking on cppreferecence.
	lowest has more priority.
	https://en.cppreference.com/w/c/language/operator_precedence"
	^ 9
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCBitwiseXorOperator class >> symbol [
	"protocol: printing"
	
	^ #'^'
]
