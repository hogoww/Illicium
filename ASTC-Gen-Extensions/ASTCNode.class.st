Class {
	#name : #ASTCNode,
	#superclass : #Object,
	#instVars : [
		'parent'
	],
	#category : #'ASTC-Gen-Extensions'
}

{ #category : #comparing }
ASTCNode >> = anotherNode [
	(anotherNode class = self class)
	ifFalse: [ ^ false ].

	^ true
]

{ #category : #visiting }
ASTCNode >> acceptMultipleVisitors: aCollectionOfIndependentVisitor [
	aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visitASTCNode:self.].
]

{ #category : #visiting }
ASTCNode >> acceptVisitor: aVisitor [
	^aVisitor visitASTCNode:self.
]

{ #category : #'as yet unclassified' }
ASTCNode >> astDump [
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.
]

{ #category : #'as yet unclassified' }
ASTCNode >> debugASTCStructure [
	| validationVisitor |
	validationVisitor := ASTCValidatorDebug new.
	self acceptVisitor: validationVisitor.
]

{ #category : #'as yet unclassified' }
ASTCNode >> gtInspectorASTDumpIn: composite [
	<gtInspectorPresentationOrder: 50>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]
]

{ #category : #'as yet unclassified' }
ASTCNode >> gtInspectorCPrettyPrint: composite [
	<gtInspectorPresentationOrder: 50>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
]

{ #category : #comparing }
ASTCNode >> hash [
	| hash |
	hash := self identityHash.
	^hash
]

{ #category : #'as yet unclassified' }
ASTCNode >> howMuchStructuralError [
	| validationVisitor |
	validationVisitor := ASTCValidator new.
	self acceptVisitor: validationVisitor.
	^validationVisitor errors
]

{ #category : #testing }
ASTCNode >> isASTCNode [
	^true.
]

{ #category : #'as yet unclassified' }
ASTCNode >> isStructuralyValidAST [
	| validationVisitor |
	validationVisitor := ASTCValidator new.
	self acceptVisitor: validationVisitor.
	^validationVisitor isValidAst
]

{ #category : #accessors }
ASTCNode >> parent [
	^parent
]

{ #category : #accessors }
ASTCNode >> parent: anObject [
	parent:=anObject.
	^anObject.
]

{ #category : #'as yet unclassified' }
ASTCNode >> prettyPrint [
	| prettyPrintVisitor |
	prettyPrintVisitor:=ASTCPrettyPrint new.
	self acceptVisitor: prettyPrintVisitor.
	^prettyPrintVisitor.
]

{ #category : #print }
ASTCNode >> printProperties [
	^''
]
