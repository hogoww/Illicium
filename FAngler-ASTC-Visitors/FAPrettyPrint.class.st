Class {
	#name : #FAPrettyPrint,
	#superclass : #FAAbstractPrettyPrinter,
	#category : #'FAngler-ASTC-Visitors-Prettyprint'
}

{ #category : #visiting }
FAPrettyPrint >> doesThisNeedParenthesis: aNode [
	| parentPriority |
	"this should also take into account associativity"
	
	aNode parent ifNil: [ ^ false ].
	aNode parent isContainerOperator ifTrue: [ ^ false].
	parentPriority := aNode parent priority.
	
	^ aNode priority > parentPriority
]

{ #category : #visiting }
FAPrettyPrint >> visitArrayLiteral: anArrayLiteral [
	self << '{ '.
	anArrayLiteral literals 
		do: [ :aLiteral | self print: aLiteral ] 
		separatedBy: [ self << ', ' ].
	self << ' }'
]

{ #category : #visiting }
FAPrettyPrint >> visitBinaryOperator: anOperator [
	self parenthesisFor: anOperator print: [
		anOperator leftOperand acceptVisitor: self.
		self << ' ' << anOperator class symbol << ' '.
		anOperator rightOperand acceptVisitor: self.
	]
]

{ #category : #visiting }
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
FAPrettyPrint >> visitCFile: aCFile [
	stream << 'Header file:' ; cr.
	self print: aCFile header.

	stream cr cr cr.	
	stream << 'Implementation file:' ; cr.
	self print: aCFile implementation.

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
	
	anASTCCompilationUnit includes ifNotEmpty: [ self << '/* includes */' ; cr ].
	anASTCCompilationUnit includes
		do:[ :anInclude | self print: anInclude ; cr ].
	anASTCCompilationUnit includes ifNotEmpty: [ self cr ].

	anASTCCompilationUnit preamble ifNotNil:[
		self << '/* preamble */' ; cr ;
			print: anASTCCompilationUnit preamble ; cr ; cr ].

	anASTCCompilationUnit structTypes ifNotEmpty: [ self << '/* structTypes */' ; cr ].
	anASTCCompilationUnit structTypes
		do:[ :aStructType | self print: aStructType ; cr ; cr ].
	anASTCCompilationUnit structTypes ifNotEmpty: [ self cr ].

	anASTCCompilationUnit defines sort: [ :e1 :e2 | e1 name id < e2 name id ].
	anASTCCompilationUnit defines ifNotEmpty: [ self << '/* Defines */' ; cr ].
	anASTCCompilationUnit defines
		do:[ :aDefine | self print: aDefine ; cr ].
	anASTCCompilationUnit defines ifNotEmpty: [ self cr ].

	anASTCCompilationUnit variableDeclarations sort: [ :e1 :e2 | e1 id id < e2 id id ].
	anASTCCompilationUnit variableDeclarations ifNotEmpty: [ self << '/* Variables Declarations */' ; cr ].
	anASTCCompilationUnit variableDeclarations
		do:[ :aDeclaration | self print: aDeclaration; << ';' ; cr ].
	anASTCCompilationUnit variableDeclarations ifNotEmpty: [ self cr].
	
	anASTCCompilationUnit functionDeclarations sort: [ :e1 :e2 | e1 id id < e2 id id ].
	anASTCCompilationUnit functionDeclarations ifNotEmpty: [ self << '/* Function declarations */' ; cr ].
	anASTCCompilationUnit functionDeclarations
		do:[ :aDeclaration | self print: aDeclaration; << ';' ; cr ].
	anASTCCompilationUnit functionDeclarations ifNotEmpty: [ self cr ].

	(anASTCCompilationUnit definitions sort: [ :e1 :e2 | e1 declaration id id < e2 declaration id id ]).
	anASTCCompilationUnit definitions ifNotEmpty: [ self cr ; << '/* Definitions */' ; cr ].
	anASTCCompilationUnit definitions
			do:[ :aDefinition | self print: aDefinition ; cr ; cr ].
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
		anIndexerOperator leftOperand acceptVisitor: self.
		self << '['.
		anIndexerOperator rightOperand acceptVisitor: self.
		self << ']' ]
]

{ #category : #visiting }
FAPrettyPrint >> visitLiteral: aLiteral [
	aLiteral value isString ifTrue:[ self << '"' ].
	self << aLiteral value asString.
	aLiteral value isString ifTrue:[ self << '"' ].
]

{ #category : #visiting }
FAPrettyPrint >> visitPreprocessorDefine: aPreProcessorDefine [
	"When having a #define aSelector() something
	the name is aSelector
	the value is () something
	meaning that we have to remove the space.
	(problem inherited from how cmacros are done in Slang)
	"

	self 	<< #'#define';
		space;
		print: aPreProcessorDefine name.
		
	aPreProcessorDefine value ifNotNil: [
		(aPreProcessorDefine value isRawCCode 
			and:[ aPreProcessorDefine value cCode first = $( ])
				ifFalse:[ self space ].
		 self print: aPreProcessorDefine value ].
]

{ #category : #visiting }
FAPrettyPrint >> visitPreprocessorInclude: aPreProcessorInclude [
	self 	<< #'#include';
		space;
		<< aPreProcessorInclude name
]

{ #category : #visiting }
FAPrettyPrint >> visitProject: aProject [
	^ aProject cFiles
		do: [ :aCFile | stream << aCFile fileName ]
		separatedBy: [ stream cr].
]

{ #category : #visiting }
FAPrettyPrint >> visitRawCCode: aRawCCodeNode [
	self << aRawCCodeNode cCode
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
	
	self << 'typedef';
		space;
		print: aStructureDefinition declaration;
		space;
		<< '{';
		cr.

	self enterBlock.
	aStructureDefinition members do: [:aMember| 
		self spaces. 
		aMember acceptVisitor: self.
		self << ';' ; cr 
	].
	self leaveBlock.
	
	self spaces; << '}';
		space;
		print: aStructureDefinition declaration id;
		space;
		<< ';'
]

{ #category : #visiting }
FAPrettyPrint >> visitSwitch: aSwitchNode [
	self << 'switch ( ';
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
	self spaces << 'case ';
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
	aType type asCType printAsCTypeOn: stream
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
	| type |
	
	self flag: #badFix."don't know how to do it any other way.."
	type := aVariableDeclaration type type asCType.
	type needsIdToPrint
		ifTrue: [ ^ stream << (type printWithId: aVariableDeclaration id id) ].
		
	aVariableDeclaration type acceptVisitor: self.
	self << Character space.
	aVariableDeclaration id acceptVisitor: self.
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
