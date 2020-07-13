Extension { #name : #RBMethodNode }

{ #category : #'*ASTC-Core-Extensions' }
RBMethodNode >> isTest [
	^ selector beginsWith: 'test'
]
