Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Visitors' }
ASTCNode >> astDump [
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.
]

{ #category : #'*ASTC-Visitors' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCValidatorDebug new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Visitors' }
ASTCNode >> gtInspectorASTDumpIn: composite [
	<gtInspectorPresentationOrder: 50>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]
]

{ #category : #'*ASTC-Visitors' }
ASTCNode >> gtInspectorCPrettyPrint: composite [
	<gtInspectorPresentationOrder: 50>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
]

{ #category : #'*ASTC-Visitors' }
ASTCNode >> isStructuralyValidAST [
	| validationVisitor |
	validationVisitor := ASTCValidator new.
	^self acceptVisitor: validationVisitor.

]

{ #category : #'*ASTC-Visitors' }
ASTCNode >> prettyPrint [
	| prettyPrintVisitor |
	prettyPrintVisitor:=ASTCPrettyPrint new.
	self acceptVisitor: prettyPrintVisitor.
	^prettyPrintVisitor.
]
