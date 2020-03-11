Class {
	#name : #FAPrettyPrint,
	#superclass : #ASTCSuperclassVisitor,
	#instVars : [
		'stream',
		'indentation',
		'indentationString'
	],
	#category : #'FAngler-ASTC-Visitors-Prettyprint'
}

{ #category : #configuration }
FAPrettyPrint class >> defaultIndentation [
	^ '  '
]

{ #category : #indentation }
FAPrettyPrint >> << chars [
	stream << chars
]

{ #category : #indentation }
FAPrettyPrint >> <<< chars [
	stream << indentation << chars
]

{ #category : #indentation }
FAPrettyPrint >> cr [
	stream cr
]

{ #category : #visiting }
FAPrettyPrint >> doesThisNeedParenthesis: aNode [
	| parentPriority |
	"this should also take into account associativity"
	parentPriority := aNode parent ifNotNil: [:p | p priority ] ifNil:[ 16 "minimal priority"].
	^ aNode priority > parentPriority
]

{ #category : #indentation }
FAPrettyPrint >> enterBlock [
	self indent
]

{ #category : #indentation }
FAPrettyPrint >> indent [
	indentation:=indentation , (String streamContents:[:s|
		self printSingleIndentationOn: s.
	]).
]

{ #category : #indentation }
FAPrettyPrint >> indentationString [

	^ indentationString
]

{ #category : #indentation }
FAPrettyPrint >> indentationString: aString [

	indentationString := aString
]

{ #category : #initialization }
FAPrettyPrint >> initialize [
	stream := String new writeStream.
	indentation := ''.
	indentationString := self class defaultIndentation
]

{ #category : #indentation }
FAPrettyPrint >> leaveBlock [
	self unindent
]

{ #category : #indentation }
FAPrettyPrint >> parenthesisFor: aNode print: aBlock [

	self parenthesisIf: (self doesThisNeedParenthesis: aNode) 
		print: aBlock.

]

{ #category : #indentation }
FAPrettyPrint >> parenthesisIf: aBool print: aBlock [
	aBool ifTrue: [ self << '(' ].
	aBlock value.
	aBool ifTrue: [ self << ')' ].
]

{ #category : #indentation }
FAPrettyPrint >> print: anObject [
	anObject acceptVisitor: self
]

{ #category : #visiting }
FAPrettyPrint >> printBinaryOperand: anOperand [
	anOperand acceptVisitor: self

]

{ #category : #printing }
FAPrettyPrint >> printOn: aStream [
	super printOn: aStream.
	aStream << Character cr.
	aStream << self.
	^aStream.
]

{ #category : #indentation }
FAPrettyPrint >> printSingleIndentationOn: aStream [

	aStream << indentationString
]

{ #category : #printing }
FAPrettyPrint >> printString [
	^self stream contents
]

{ #category : #indentation }
FAPrettyPrint >> space [
	stream space
]

{ #category : #indentation }
FAPrettyPrint >> spaces [
	self <<< ''
]

{ #category : #accessing }
FAPrettyPrint >> stream [
	^ stream
]

{ #category : #printing }
FAPrettyPrint >> toTranscript [
	Transcript show:self ; cr.
]

{ #category : #indentation }
FAPrettyPrint >> unindent [
	indentation := indentation allButLast: (indentationString size).
]

{ #category : #visiting }
FAPrettyPrint >> visitBinaryOperator: anOperator [
	self parenthesisFor: anOperator print: [
		self printBinaryOperand: anOperator leftOperand.
		self << ' ' << anOperator class symbol << ' '.
		self printBinaryOperand: anOperator rightOperand.
	]
]

{ #category : #indentation }
FAPrettyPrint >> visitBlock: aBlock [
	self << '{' << Character cr.
	self enterBlock.
	aBlock declarations
		do: [ :each | 
			self spaces.
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
FAPrettyPrint >> visitBreak: aBreak [
	self << #'break;'
]

{ #category : #visiting }
FAPrettyPrint >> visitCastOperator: aCastOperator [
	self parenthesisFor: aCastOperator print: [
		self << '(';
			print: aCastOperator type;
			<< ') ';
			print: (aCastOperator operand)
		]
]

{ #category : #visiting }
FAPrettyPrint >> visitCompilationUnit: anASTCCompilationUnit [

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
FAPrettyPrint >> visitDeclarationStatement: aDeclaration [
	aDeclaration declaration acceptVisitor: self.
	self << $;
]

{ #category : #visiting }
FAPrettyPrint >> visitDoWhile: aDoWhile [
	self << 'do' << Character cr.
	aDoWhile body acceptVisitor: self.
	self << 'while('.
	aDoWhile condition ifNotNil:[:aCondition| aCondition acceptVisitor: self].
	self << ');'
]

{ #category : #visiting }
FAPrettyPrint >> visitEmptyStatement: anEmptyStatemementNode [
	"Empty statements should not be added to the AST, and therefore not visited during pretty print"
	self shouldNotImplement
]

{ #category : #visiting }
FAPrettyPrint >> visitExpressionStatement: anExpressionStatement [
	anExpressionStatement expression acceptVisitor: self.
	self << $;. 
]

{ #category : #visiting }
FAPrettyPrint >> visitFor: aFor [
	self << 'for ('.
	aFor iteratorDefinition ifNotNil:[:anIteratorDecl| anIteratorDecl acceptVisitor:self].
	self << '; '.
	aFor condition ifNotNil:[:aCondition| aCondition acceptVisitor:self].
	self << '; '.
	aFor iteratorModification ifNotNil:[:anIteratorModification | anIteratorModification acceptVisitor:self].
	self << ') '.
	aFor body acceptVisitor:self.
]

{ #category : #visiting }
FAPrettyPrint >> visitFunctionCall: aFunctionCall [
	
	self parenthesisFor: aFunctionCall print: [
		aFunctionCall id acceptVisitor: self.
		self << '('.
		self enterBlock.
		aFunctionCall arguments do: [:each | each acceptVisitor:self ]
			separatedBy: [ self << ', ' ].
		self leaveBlock.
		self << ')'
	]
]

{ #category : #visiting }
FAPrettyPrint >> visitFunctionDeclaration: aFunctionDeclaration [
	aFunctionDeclaration type acceptVisitor: self.
	self << Character space.
	aFunctionDeclaration id acceptVisitor:self.
	self << $(.
	aFunctionDeclaration parameters do:[:each| each acceptVisitor:self] separatedBy:[ self << ', '].
	self << $).
]

{ #category : #visiting }
FAPrettyPrint >> visitFunctionDefinition: aFunctionDefinition [
	aFunctionDefinition declaration acceptVisitor:self.
	aFunctionDefinition body acceptVisitor: self.
	
]

{ #category : #visiting }
FAPrettyPrint >> visitIdentifier: anIdentifier [
	self << anIdentifier id
]

{ #category : #visiting }
FAPrettyPrint >> visitIf: anIf [
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
FAPrettyPrint >> visitIndexerOperator: anIndexerOperator [
	self parenthesisFor: anIndexerOperator print: [
		self visitExpression: anIndexerOperator leftOperand.
		self << '['.
		self visitExpression: anIndexerOperator rightOperand.
		self << ']' ]
]

{ #category : #visiting }
FAPrettyPrint >> visitLiteral: aLiteral [
	aLiteral value isString ifTrue:[ self << '"' ].
	self << aLiteral value asString.
	aLiteral value isString ifTrue:[ self << '"' ].
]

{ #category : #visiting }
FAPrettyPrint >> visitReturn: aReturn [
	self << 'return '.
	aReturn expression ifNotNil:[:anExpression| anExpression acceptVisitor: self].
	self << $;.
]

{ #category : #visiting }
FAPrettyPrint >> visitStructureDeclaration: aStructureDeclaration [
	self << #struct;
		space;
		print: aStructureDeclaration id
]

{ #category : #visiting }
FAPrettyPrint >> visitStructureDefinition: aStructureDefinition [
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
FAPrettyPrint >> visitSwitch: aSwitchNode [
	self spaces << 'switch ( ';
		print: aSwitchNode expression; << ' )'; cr;
		spaces; << '{'; cr.
	self enterBlock.
	
	"all cases"
	aSwitchNode cases do: [ :aCase | self print: aCase; cr ].
	
	"default part"
	aSwitchNode default ifNotNil: [
			self spaces; << 'default: '; cr.
			self enterBlock.
			self spaces.
			self print: aSwitchNode default; cr.
			self leaveBlock
		].
	
	self leaveBlock.
	self spaces; << '}'
]

{ #category : #visiting }
FAPrettyPrint >> visitSwitchCase: aSwitchCase [
	"assume that a switch case is always in a switch for now (i don't think there's other cases anyway)"
	self spaces.
	self << 'case ';
		print: aSwitchCase expression;
		<< ' :';
		cr.
		
	self enterBlock.
	self spaces.
	self print: aSwitchCase body.
	self leaveBlock
]

{ #category : #visiting }
FAPrettyPrint >> visitTernaryConditionalOperator: anOperator [
	anOperator condition acceptVisitor: self.
	self << ' ' << '?' << ' '.
	anOperator then acceptVisitor: self.
	self << ' ' << ':' << ' '.
	anOperator else ifNotNil:[ :e | e acceptVisitor: self ]
]

{ #category : #visiting }
FAPrettyPrint >> visitType: aType [
	self << aType type asCType.
]

{ #category : #visiting }
FAPrettyPrint >> visitUnaryOperator: anOperator [
	self parenthesisFor: anOperator print: [
		self << anOperator class symbol.
		anOperator operand acceptVisitor: self.
	].
]

{ #category : #visiting }
FAPrettyPrint >> visitVariableDeclaration: aVariableDeclaration [
	aVariableDeclaration type acceptVisitor:self.
	self << Character space.
	aVariableDeclaration id acceptVisitor:self.
]

{ #category : #visiting }
FAPrettyPrint >> visitVariableDefinition: aVariableDefinition [
	aVariableDefinition declaration acceptVisitor: self.
	aVariableDefinition init
		ifNotNil: [ :init | 
			self << Character space << $= << Character space.
			init acceptVisitor: self ]
]

{ #category : #visiting }
FAPrettyPrint >> visitWhile: aWhile [
	self << 'while ('.
	aWhile condition ifNotNil:[:aCondition| aCondition acceptVisitor: self].
	self << ') '.
	aWhile body acceptVisitor: self.
]
