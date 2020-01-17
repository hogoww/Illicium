Class {
	#name : #ASTCPrettyPrint,
	#superclass : #ASTCSuperclassVisitor,
	#instVars : [
		'stream',
		'indentation',
		'indentationString'
	],
	#category : #'ASTC-VisitorsASTC-PrettyPrint'
}

{ #category : #configuration }
ASTCPrettyPrint class >> defaultIndentation [
	^ '  '
]

{ #category : #indentation }
ASTCPrettyPrint >> << chars [
	stream << chars
]

{ #category : #indentation }
ASTCPrettyPrint >> <<< chars [
	stream << indentation << chars
]

{ #category : #indentation }
ASTCPrettyPrint >> cr [
	stream cr
]

{ #category : #visiting }
ASTCPrettyPrint >> doesThisNeedParenthesis: aNode [
	| parentPriority |
	parentPriority := aNode parent ifNotNil: [:p | p priority ] ifNil:[ 16 ].
	^ aNode priority > parentPriority
]

{ #category : #indentation }
ASTCPrettyPrint >> enterBlock [
	self indent
]

{ #category : #formating }
ASTCPrettyPrint >> formatSelector: aSelector [
	| functionName | 
	functionName:=aSelector asString.
	functionName size timesRepeat:[:index | 
		(functionName at: index)=$: 
		ifTrue:[ functionName at:index put: Character space]
		].
	^functionName asCamelCase 
]

{ #category : #indentation }
ASTCPrettyPrint >> indent [
	indentation:=indentation , (String streamContents:[:s|
		self printSingleIndentationOn: s.
	]).
]

{ #category : #indentation }
ASTCPrettyPrint >> indentationString [

	^ indentationString
]

{ #category : #indentation }
ASTCPrettyPrint >> indentationString: aString [

	indentationString := aString
]

{ #category : #initialization }
ASTCPrettyPrint >> initialize [
	stream := String new writeStream.
	indentation := ''.
	indentationString := self class defaultIndentation
]

{ #category : #indentation }
ASTCPrettyPrint >> leaveBlock [
	self unindent
]

{ #category : #indentation }
ASTCPrettyPrint >> print: anObject [
	anObject acceptVisitor: self
]

{ #category : #visiting }
ASTCPrettyPrint >> printBinaryOperand: anOperand [
	anOperand acceptVisitor: self

]

{ #category : #printing }
ASTCPrettyPrint >> printOn: aStream [
	super printOn: aStream.
	aStream << Character cr.
	aStream << self.
	^aStream.
]

{ #category : #indentation }
ASTCPrettyPrint >> printSingleIndentationOn: aStream [

	aStream << indentationString
]

{ #category : #printing }
ASTCPrettyPrint >> printString [
	^self stream contents
]

{ #category : #indentation }
ASTCPrettyPrint >> space [
	stream space
]

{ #category : #indentation }
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

{ #category : #indentation }
ASTCPrettyPrint >> unindent [
	indentation := indentation allButLast: (indentationString size).
]

{ #category : #visiting }
ASTCPrettyPrint >> visitAccessOperator: anOperator [
	self print: anOperator operands first;
		<< '[';
		print: anOperator operands second;
		<< ']'
]

{ #category : #visiting }
ASTCPrettyPrint >> visitBinaryOperator: anOperator [
	| parenthesis |
	parenthesis := self doesThisNeedParenthesis: anOperator.
	parenthesis ifTrue: [ self << '(' ].
	self printBinaryOperand: anOperator operands first.
	self << ' ' << anOperator class symbol << ' '.
	self printBinaryOperand: anOperator operands second.
	parenthesis ifTrue: [ self << ')' ].
]

{ #category : #indentation }
ASTCPrettyPrint >> visitBlock: aBlock [
	self << '{' << Character cr.
	self enterBlock.
	aBlock declarations
		do: [ :each | 
			self spaces.
			each acceptVisitor: self.
			self << Character cr ].
	aBlock ifNotEmpty: [ self cr ].
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
ASTCPrettyPrint >> visitBreak: aBreak [
	self << #break
]

{ #category : #visiting }
ASTCPrettyPrint >> visitCastOperator: aCastOperator [
	self << '(';
		print: aCastOperator type;
		<< ') ';
		print: (aCastOperator operands at: 1)
]

{ #category : #visiting }
ASTCPrettyPrint >> visitCompilationUnit: anASTCCompilationUnit [

	self << '/* Declarations */' ; cr.
	anASTCCompilationUnit declarations
		ifNotNil:[ :declarations | declarations
			do:[ :aDeclaration | aDeclaration acceptVisitor:self.
					self << ';' ; cr ]
		].
	
	self cr ; << '/* Definitions */' ; cr.
	anASTCCompilationUnit definitions
		ifNotNil:[ :definitions | definitions
			do:[ :aDefinition | aDefinition acceptVisitor:self.
				self cr ; cr ]
		].
]

{ #category : #visiting }
ASTCPrettyPrint >> visitDeclarationStatement: aDeclaration [
	aDeclaration declaration acceptVisitor: self.
	self << $;
]

{ #category : #visiting }
ASTCPrettyPrint >> visitDoWhile: aDoWhile [
	self << 'do' << Character cr.
	aDoWhile body acceptVisitor: self.
	self << 'while('.
	aDoWhile condition ifNotNil:[:aCondition| aCondition acceptVisitor: self].
	self << ');'
]

{ #category : #visiting }
ASTCPrettyPrint >> visitEmptyStatment: anEmptyStatment [
	" empty, because we don't add anything to the stream
	Empty statements are meant to ignore pharo nodes while not breaking the structure"
]

{ #category : #visiting }
ASTCPrettyPrint >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	self << $;. 
]

{ #category : #visiting }
ASTCPrettyPrint >> visitFor: aFor [
	self << 'for('.
	aFor iteratorDefinition ifNotNil:[:anIteratorDecl| anIteratorDecl acceptVisitor:self].
	self << $;.
	aFor condition ifNotNil:[:aCondition| aCondition acceptVisitor:self].
	self << $;.
	aFor iteratorModification ifNotNil:[:anIteratorModification | anIteratorModification acceptVisitor:self].
	self << ')'.
	aFor body acceptVisitor:self.
]

{ #category : #visiting }
ASTCPrettyPrint >> visitFunctionCall: aFunctionCall [
	aFunctionCall id acceptVisitor: self.
	self << '('.
	aFunctionCall arguments do: [:each |
		each acceptVisitor:self.
		] separatedBy:[ self << ', ' ].
	self << ')'.
	
]

{ #category : #visiting }
ASTCPrettyPrint >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration type acceptVisitor: self.
	self << Character space.
	aFunctionDeclaration id acceptVisitor:self.
	self << $(.
	aFunctionDeclaration parameters do:[:each| each acceptVisitor:self] separatedBy:[ self << $,].
	self << $).
]

{ #category : #visiting }
ASTCPrettyPrint >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition declaration acceptVisitor:self.
	aFunctionDefinition body acceptVisitor: self.
	
]

{ #category : #visiting }
ASTCPrettyPrint >> visitIdentifier: anIdentifier [
	self << anIdentifier id
]

{ #category : #visiting }
ASTCPrettyPrint >> visitIf: anIf [
	self << 'if ('.
	anIf condition acceptVisitor: self.
	self << ') '.
	anIf then acceptVisitor: self.
	anIf else ifNotNil:[:anElse|
		self << ' else '.
		anElse acceptVisitor: self.
		].
]

{ #category : #visiting }
ASTCPrettyPrint >> visitIndexerOperator: anIndexerOperator [
	self print: anIndexerOperator operands first;
		<< '[';
		print: anIndexerOperator operands second;
		<< ']'
]

{ #category : #visiting }
ASTCPrettyPrint >> visitLiteral: aLiteral [
	self << aLiteral value value asString
]

{ #category : #visiting }
ASTCPrettyPrint >> visitReturn: aReturn [
	self << 'return '.
	aReturn expression ifNotNil:[:anExpression| anExpression acceptVisitor: self].
	self << $;.
]

{ #category : #visiting }
ASTCPrettyPrint >> visitStructureDeclaration: aStructureDeclaration [
	self << #struct;
		space;
		print: aStructureDeclaration id
]

{ #category : #visiting }
ASTCPrettyPrint >> visitStructureDefinition: aStructureDefinition [
	self print: aStructureDefinition declaration;
		<< '{';
		cr.
		
	self enterBlock.
	aStructureDefinition members do: [:aMember| 
		self spaces. 
		aMember acceptVisitor: self.
		self << ';' ; cr 
	].
	self leaveBlock.
	
	self spaces; << '};'
]

{ #category : #visiting }
ASTCPrettyPrint >> visitTernaryConditionalOperator: anOperator [
	(anOperator operands at: 1) acceptVisitor: self.
	self << ' ' << '?' << ' '.
	(anOperator operands at: 2) acceptVisitor: self.
	self << ' ' << ':' << ' '.
	(anOperator operands at: 3) acceptVisitor: self
]

{ #category : #visiting }
ASTCPrettyPrint >> visitType: aType [
	self << aType type asCType.
]

{ #category : #visiting }
ASTCPrettyPrint >> visitUnaryOperator: anOperator [
	self << anOperator class symbol.
	(anOperator operands at: 1) acceptVisitor: self
]

{ #category : #visiting }
ASTCPrettyPrint >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type acceptVisitor:self.
	self << Character space.
	aVariableDeclaration id acceptVisitor:self.
]

{ #category : #visiting }
ASTCPrettyPrint >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition declaration acceptVisitor: self.
	aVariableDefinition init
		ifNotNil: [ :init | 
			self << Character space << $= << Character space.
			init acceptVisitor: self ]
]

{ #category : #visiting }
ASTCPrettyPrint >> visitWhile: aWhile [
	self << 'while('.
	aWhile condition ifNotNil:[:aCondition| aCondition acceptVisitor: self].
	self << ')'.
	aWhile body acceptVisitor: self.
]
