Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Extensions' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCValidationDebug new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> isStructuralyValidAST [
	| validationVisitor |
	validationVisitor := ASTCValidation new.
	^self acceptVisitor: validationVisitor.

]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> prettyPrint [
	| prettyPrintVisitor |
	prettyPrintVisitor:=ASTCPrinterVisitor new.
	self acceptVisitor: prettyPrintVisitor.
	^prettyPrintVisitor.
]
