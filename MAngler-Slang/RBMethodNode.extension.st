Extension { #name : #RBMethodNode }

{ #category : #'*MAngler-Slang' }
RBMethodNode >> allLocalNames [
	^ (self acceptVisitor: MASlangLocalNamesVisitor new) result
]
