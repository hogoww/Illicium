Class {
	#name : #ASTCPrinterVisitor,
	#superclass : #ASTCWalkerVisitor,
	#instVars : [
		'currentDepth',
		'stream'
	],
	#category : #'ASTC-Gen-visitor'
}

{ #category : #initialization }
ASTCPrinterVisitor >> initialize [
	stream := String new writeStream.
	currentDepth:=0.
]

{ #category : #printing }
ASTCPrinterVisitor >> printOn:aStream [
	^aStream nextPutAll: self stream contents.
]

{ #category : #printing }
ASTCPrinterVisitor >> printTabCount: aNumber [
		1 to: aNumber do:[:i| stream tab.]
]

{ #category : #accessing }
ASTCPrinterVisitor >> stream [
	^stream
]

{ #category : #printing }
ASTCPrinterVisitor >> toTranscript [
	Transcript show:self ;cr.
]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCCompilationUnit: anASTCCompilationUnit [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCCompilationUnit'.
	stream << (anASTCCompilationUnit printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCCompilationUnit:anASTCCompilationUnit.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDeclaration: anASTCDeclaration [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCDeclaration'.
	stream << (anASTCDeclaration printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCDeclaration:anASTCDeclaration.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCDefinition: anASTCDefinition [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCDefinition'.
	stream << (anASTCDefinition printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCDefinition:anASTCDefinition.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCExpression: anASTCExpression [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCExpression'.
	stream << (anASTCExpression printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCExpression:anASTCExpression.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCNode: anASTCNode [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCNode'.
	stream << (anASTCNode printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCNode:anASTCNode.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCProject: anASTCProject [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCProject'.
	stream << (anASTCProject printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCProject:anASTCProject.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCStatement: anASTCStatement [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCStatement'.
	stream << (anASTCStatement printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCStatement:anASTCStatement.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]

{ #category : #visiting }
ASTCPrinterVisitor >> visitASTCType: anASTCType [
	stream << '
'.
	self printTabCount: currentDepth.
	stream << '(anASTCType'.
	stream << (anASTCType printProperties).
	currentDepth := currentDepth+1.
	
	super visitASTCType:anASTCType.
	
	currentDepth := currentDepth-1.
	stream << ')'.

]
