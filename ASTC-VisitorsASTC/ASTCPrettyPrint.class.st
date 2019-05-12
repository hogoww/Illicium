Class {
	#name : #ASTCPrettyPrint,
	#superclass : #ASTCVisitor,
	#instVars : [
		'stream',
		'indentation'
	],
	#category : #'ASTC-VisitorsASTC-PrettyPrint'
}

{ #category : #'as yet unclassified' }
ASTCPrettyPrint class >> defaultIndentation [
	^ '  '
]

{ #category : #accessing }
ASTCPrettyPrint >> << chars [
	stream << chars
]

{ #category : #accessing }
ASTCPrettyPrint >> <<< chars [
	stream << indentation << chars
]

{ #category : #accessing }
ASTCPrettyPrint >> enterBlock [
	self indent
]

{ #category : #accessing }
ASTCPrettyPrint >> formatSelector: aSelector [
	| functionName | 
	functionName:=aSelector asString.
	functionName size timesRepeat:[:index | 
		(functionName at: index)=$: 
		ifTrue:[ functionName at:index put: Character space]
		].
	^functionName asCamelCase 
]

{ #category : #accessing }
ASTCPrettyPrint >> indent [
	indentation:=indentation , (String streamContents:[:s| 
		1 to: (self class defaultIndentation size) do:[:i | s << Character space].
	]).
]

{ #category : #accessing }
ASTCPrettyPrint >> initialize [
	stream := String new writeStream.
	indentation := ''.
]

{ #category : #accessing }
ASTCPrettyPrint >> leaveBlock [
	self unindent
]

{ #category : #printing }
ASTCPrettyPrint >> printOn: aStream [
	super printOn: aStream.
	aStream << Character cr.
	aStream << self.
	^aStream.
]

{ #category : #printing }
ASTCPrettyPrint >> printString [
	^self stream contents
]

{ #category : #accessing }
ASTCPrettyPrint >> spaces [
	self <<< ''
]

{ #category : #accessing }
ASTCPrettyPrint >> stream [
	^ stream
]

{ #category : #printing }
ASTCPrettyPrint >> toTranscript [
	Transcript show:self ; cr.
]

{ #category : #accessing }
ASTCPrettyPrint >> unindent [
	indentation := indentation allButLast: (self class defaultIndentation size).
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTBinaryOperator: anOperator [
	(anOperator operands at: 1) acceptVisitor: self.
	self << ' ' << anOperator symbol << ' '.
	(anOperator operands at: 2) acceptVisitor: self
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCBlock: aBlock [
	self << '{' << Character cr.
	self enterBlock.
	aBlock statements
		do: [ :each | 
			self spaces.
			each acceptVisitor: self.
			self << Character cr ].
	self leaveBlock.
	self spaces.
	self << '}'.


]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCDeclarationStatement: aDeclaration [
	aDeclaration declaration acceptVisitor: self.
	self << $;
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCDoWhile: aDoWhile [
	self << 'do' << Character cr.
	aDoWhile body acceptVisitor: self.
	self << 'while('.
	aDoWhile condition ifNotNil:[:aCondition| aCondition acceptVisitor: self].
	self << ');'.

]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	self << $;. 
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCFor: aFor [
	self << 'for('.
	aFor iteratorDecl ifNotNil:[:anIteratorDecl| anIteratorDecl acceptVisitor:self].
	self << $;.
	aFor condition ifNotNil:[:aCondition| aCondition acceptVisitor:self].
	self << $;.
	aFor iteratorModification ifNotNil:[:anIteratorModification | anIteratorModification acceptVisitor:self].
	self << ')'.
	aFor body acceptVisitor:self.
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCFunctionCall: aFunctionCall [
	aFunctionCall id acceptVisitor: self.
	self << '('.
	aFunctionCall arguments do:[:each |
		each acceptVisitor:self.
		] separatedBy:[ self << ',' ].
	self << ')'.
	
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration type acceptVisitor: self.
	self << Character space.
	aFunctionDeclaration id acceptVisitor:self.
	self << $(.
	aFunctionDeclaration parameters do:[:each| each acceptVisitor:self] separatedBy:[ self << $,].
	self << $).
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition declaration acceptVisitor:self.
	aFunctionDefinition body acceptVisitor: self.
	
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCIdentifier: anIdentifier [
	self << anIdentifier id
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCIf: anIf [
	self << 'if ('.
	anIf condition acceptVisitor: self.
	self << ') '.
	anIf then acceptVisitor: self.
	anIf else ifNotNil:[:anElse|
		self << ' else '.
		anElse acceptVisitor: self.
		].
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCLiteral: aLiteral [
	self << aLiteral value value
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCOperator: anOperator [
	| nbOperands |
	nbOperands := anOperator operands size.
	nbOperands == 1
		ifTrue: [ ^ self visitASTUnaryOperator: anOperator ].
	nbOperands == 2
		ifTrue: [ ^ self visitASTBinaryOperator: anOperator ].
	nbOperands == 3
		ifTrue: [ ^ self visitASTTernaryOperator: anOperator ]
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCReturn: aReturn [
	self << 'return '.
	aReturn expression ifNotNil:[:anExpression| anExpression acceptVisitor: self].
	self << $;.
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCType: aType [
	self << aType type asCType.
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type acceptVisitor:self.
	self << Character space.
	aVariableDeclaration id acceptVisitor:self.
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCVariableDefinition: aVariableDefinition [
	aVariableDefinition declaration acceptVisitor: self.
	aVariableDefinition init ifNotNil:[:init| 
		self << $=.
		init acceptVisitor:self.
		].

]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTCWhile: aWhile [
	self << 'while('.
	aWhile condition ifNotNil:[:aCondition| aCondition acceptVisitor: self].
	self << ')'.
	aWhile body acceptVisitor: self.
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTTernaryOperator: anOperator [
	(anOperator operands at: 1) acceptVisitor: self.
	self << ' ' << '?' << ' '.
	(anOperator operands at: 2) acceptVisitor: self.
	self << ' ' << ':' << ' '.
	(anOperator operands at: 3) acceptVisitor: self
]

{ #category : #accessing }
ASTCPrettyPrint >> visitASTUnaryOperator: anOperator [
	self << anOperator symbol.
	(anOperator operands at: 1) acceptVisitor: self
]