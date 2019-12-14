Class {
	#name : #ASTCPrettyPrint,
	#superclass : #ASTCSuperclassVisitor,
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
ASTCPrettyPrint >> cr [
	stream cr
]

{ #category : #visiting }
ASTCPrettyPrint >> doesThisNeedParenthesis: aNode [
	| parentPriority |
	parentPriority := aNode parent ifNotNil: [:p | p priority] ifNil:[ 16 ].
	^ aNode priority > parentPriority
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

{ #category : #accessing }
ASTCPrettyPrint >> print: anObject [
	anObject acceptVisitor: self
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
ASTCPrettyPrint >> space [
	stream space
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
	(anOperator operands at: 1) acceptVisitor: self.
	self << ' ' << anOperator class symbol << ' '.
	(anOperator operands at: 2) acceptVisitor: self.
	parenthesis ifTrue: [ self << ')' ].
]

{ #category : #visiting }
ASTCPrettyPrint >> visitBlock: aBlock [
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
ASTCPrettyPrint >> visitBreak: aBreak [
	self << #break
]

{ #category : #visiting }
ASTCPrettyPrint >> visitCastOperator: aCastOperator [
	self << '(';
		print: aCastOperator type;
		<< ')';
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
	aFunctionCall arguments do:[:each |
		each acceptVisitor:self.
		] separatedBy:[ self << ',' ].
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
	
	self spaces; << '}'
]

{ #category : #visiting }
ASTCPrettyPrint >> visitTernaryOperator: anOperator [
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
