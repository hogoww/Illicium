Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Extensions' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCValidatorDebug new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> isStructuralyValidAST [
	| validationVisitor |
	validationVisitor := ASTCValidator new.
	^self acceptVisitor: validationVisitor.

]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> prettyPrint [
	| prettyPrintVisitor |
	prettyPrintVisitor:=ASTCPrinterVisitor new.
	self acceptVisitor: prettyPrintVisitor.
	self halt.
	^prettyPrintVisitor.
]
