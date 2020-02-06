Extension { #name : #ASTCNode }

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> = aNode [
	^ aNode isKindOf: self species
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> astDump [
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> cu [
	" convinience method to be able to get the correspomnding compilationUnit from anywhere "
	self isCompilationUnit ifFalse: [ ^ parent ifNotNil: [ parent cu ] ifNil: [self error: 'projects don''t have compilation units' ]].
	^ self 
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCDebugStructureVisitor new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> gtInspectorASTDumpIn: composite [ 
	<gtInspectorPresentationOrder: 1>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> gtInspectorCPrettyPrint: composite [ 
	<gtInspectorPresentationOrder: 2>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
			
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> isStructuralyValidAST [ 
	| validationVisitor |
	validationVisitor := ASTCStructureValidatorVisitor new.
	self acceptVisitor: validationVisitor.
	^validationVisitor isValidAst
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> parent: aParent [
	parent := aParent
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> prettyPrint [
	
	^ self prettyPrintUsing: ANSlangPrettyPrinter new
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> prettyPrintUsing: aPrettyPrinter [ 
	self acceptVisitor: aPrettyPrinter.
	^ aPrettyPrinter stream contents
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> printOn: aStream [

	aStream nextPutAll: self astDump stream contents
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> priority [
	^ self class priority
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode class >> priority [
	"Basic lowest priority for classes without any.
	see Operator class >> priority comment"
	^ 16
]

{ #category : #'*ASTC-Core-Extensions' }
ASTCNode >> rootNode [
	^ parent ifNil: [ self ] ifNotNil: [ :p | p rootNode ]
]
