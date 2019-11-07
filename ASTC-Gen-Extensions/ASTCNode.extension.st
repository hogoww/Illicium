Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> astDump [
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> cu [
	" convinience method to be able to get the correspomnding compilationUnit from anywhere "
	self isCompilationUnit ifFalse: [ ^ parent ifNotNil: [ parent cu ] ifNil: [self error: 'projects don''t have compilation units' ]].
	^ self 
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCDebugStructureVisitor new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> gtInspectorASTDumpIn: composite [ 
	<gtInspectorPresentationOrder: 2>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> gtInspectorCPrettyPrint: composite [ 
	<gtInspectorPresentationOrder: 0>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
			
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> isStructuralyValidAST [ 
	| validationVisitor |
	validationVisitor := ASTCStructureValidatorVisitor new.
	self acceptVisitor: validationVisitor.
	^validationVisitor isValidAst
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> parent: aParent [
	parent := aParent
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> prettyPrint [
	| prettyPrintVisitor |
	prettyPrintVisitor:=ASTCPrettyPrint new.
	self acceptVisitor: prettyPrintVisitor.
	^prettyPrintVisitor stream contents.
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> prettyPrintUsing: aPrettyPrinter [ 
	self acceptVisitor: aPrettyPrinter.
	^aPrettyPrinter stream contents.
]

{ #category : #'*ASTC-Gen-Extensions' }
ASTCNode >> rootNode [
	^ parent ifNil: [ self ] ifNotNil: [ :p | p rootNode ]
]
