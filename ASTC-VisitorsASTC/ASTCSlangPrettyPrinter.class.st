Class {
	#name : #ASTCSlangPrettyPrinter,
	#superclass : #ASTCPrettyPrint,
	#category : #'ASTC-VisitorsASTC-PrettyPrint'
}

{ #category : #visiting }
ASTCSlangPrettyPrinter >> doesThisNeedParenthesis: aNode [
	^ false
]

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
	self << '{' << Character cr.
	self enterBlock.
	
	aBlock comment ifNotNil:[ self cr spaces ; printMultilineComment: ' ' , aBlock comment first ; cr ].
	
	(aBlock declarations sort: [:decl1 :decl2| decl1 declaration declaration id id <= decl2 declaration declaration id id ])
		do: [ :each | 
			self space space space space."specifically 4 space for them..."
			each acceptVisitor: self.
			self << Character cr ].
	aBlock declarations ifNotEmpty: [ self cr ].

	aBlock statements
		do: [ :each | 
			self spaces.
			each acceptVisitor: self.
			self << Character cr ].
	self leaveBlock.
	self spaces.
	self << '}'.
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitFunctionCall: aFunctionCall [
	| noParenthesis parent |
	parent := aFunctionCall parent.
	noParenthesis := parent isAssignmentOperator or: [parent isStatement or: [ parent isFunctionCall ]].
	
	noParenthesis ifFalse: [ self << '(' ].
	super visitFunctionCall: aFunctionCall.
	noParenthesis ifFalse: [ self << ')' ].
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
	aFunctionDefinition comment ifNotNil: [ 
		self cr cr;
			printMultilineComment: '	', aFunctionDefinition comment anyOne;
			cr
		].
	
	self cr.
	
	stream tab.
	self printMultilineComment: ' ' , aFunctionDefinition pharoNode methodClass name , '>>' , aFunctionDefinition pharoNode selector printString.
	self cr.
	aFunctionDefinition declaration acceptVisitor:self. 
	self cr spaces."cr after a curly brace is inconsistent, so we cannot factorise this in visitBlock (see if)"
	aFunctionDefinition body acceptVisitor: self.
	self cr.
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitIf: anIf [
	self << 'if ('.
	anIf condition acceptVisitor: self.
	self << ') '.
	anIf then acceptVisitor: self.
	anIf else ifNotNil:[:anElse|
		self cr spaces << 'else '.
		anElse acceptVisitor: self.
		].
]

{ #category : #visiting }
ASTCSlangPrettyPrinter >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type acceptVisitor:self.
	stream peekLast = $* ifFalse: [ self << Character space ].
	aVariableDeclaration id acceptVisitor:self.
]
