Extension { #name : #ASTCFunctionCall }

{ #category : #'*ASTC-Core-Extensions' }
ASTCFunctionCall class >> associativity [
	"protocol: meta-data"
	
	"returns #left or #right.
	see following link for information about C operators precedence.
	https://en.cppreference.com/w/c/language/operator_precedence"
	
	"Function call are kind of operators, but not really. Regardless, they have a specific associativity"
	^ #left
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCFunctionCall class >> priority [
	"protocol: meta-data"
	
	"returns a number between 1 and 15 based on the ranking on cppreferecence.
	lowest has more priority.
	https://en.cppreference.com/w/c/language/operator_precedence"
	
	"Function call are kind of operators, but not really. Regardless, they have a specific priority"
	^ 1
]
