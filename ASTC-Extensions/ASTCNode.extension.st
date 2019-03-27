Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Extensions' }
ASTCNode >> astDump [
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.
]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCValidatorDebug new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> gtInspectorASTDumpIn: composite [
	<gtInspectorPresentationOrder: 50>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]
]

{ #category : #'*ASTC-Extensions' }
ASTCNode >> gtInspectorCPrettyPrint: composite [
	<gtInspectorPresentationOrder: 50>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
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
	prettyPrintVisitor:=ASTCPrettyPrint new.
	self acceptVisitor: prettyPrintVisitor.
	^prettyPrintVisitor.
]
