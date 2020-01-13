Class {
	#name : #ASTCSlangPrettyPrinter,
	#superclass : #ASTCPrettyPrint,
	#category : #'ASTC-VisitorsASTC-PrettyPrint'
}

{ #category : #visiting }
ASTCSlangPrettyPrinter >> initialize [

	super initialize.
	self indentationString: '	'
]

{ #category : #comments }
ASTCSlangPrettyPrinter >> printMultilineComment: aString [
	stream << '/*'
		<< aString
		<< ' */'
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitBlock: aBlock [
	self << Character cr.
	super visitBlock: aBlock
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionCall: aFunctionCall [

	aFunctionCall parent isStatement ifFalse: [ self << '(' ].
	super visitFunctionCall: aFunctionCall.
	aFunctionCall parent isStatement ifFalse: [ self << ')' ].
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionDeclaration: aFunctionDeclaration [
	stream << 'EXPORT('.
	aFunctionDeclaration type acceptVisitor: self.
	stream << ')'.
	self << Character cr.
	aFunctionDeclaration id acceptVisitor:self.
	self << $(.
	aFunctionDeclaration parameters 
		ifEmpty: [ stream << #void ]
		ifNotEmpty: [:params| 
			params do:[:each| each acceptVisitor:self] separatedBy:[ self << $,]].
	self << $).
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionDefinition: aFunctionDefinition [
	stream cr cr.
	aFunctionDefinition comment ifNotNil: [ self printMultilineComment: '	', aFunctionDefinition comment anyOne ].
	stream cr cr.
	
	stream tab.
	self printMultilineComment: ' ' , aFunctionDefinition pharoNode methodClass name , '>>' , aFunctionDefinition pharoNode selector printString.
	stream cr.
	super visitFunctionDefinition: aFunctionDefinition.
	stream cr.
]
