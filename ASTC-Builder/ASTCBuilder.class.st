"
I represent a (partial) metamodel for the C language.

I only represent the metamodel, I don't define any behavior on it.
I use a Trait that offer the possibilities to see me as text (in the Transcript) or as a UML Diagram with PlantUML.
You could also generate me with the FmxMB classes by using the following message:
ASTCBuilder new generate. 
(which won't work in the current state of this program, since we use a slightly different semantic to be used with another generator. See ASTCGenerator.)

You can interact with me with a visitor, by subclassing FmxMBVisitor (cf for documentation).
 
These instances variables are there to keep the references to the classes we create along the way, by using FmxNG
    Instance Variables
	block:		<Object>
	compilationUnit:		<Object>
	declaration:		<Object>
	declarationsContainerTrait:		<Object>
	expression:		<Object>
	expressionStatement:		<Object>
	expressionsContainerTrait:		<Object>
	functionCall:		<Object>
	functionDefinition:		<Object>
	identifier:		<Object>
	if:		<Object>
	literal:		<Object>
	node:		<Object>
	operator:		<Object>
	project:		<Object>
	return:		<Object>
	statement:		<Object>
	statementsContainerTrait:		<Object>
	type:		<Object>
"
Class {
	#name : #ASTCBuilder,
	#superclass : #FamixMetamodelGenerator,
	#traits : 'MetaModelPrintingTrait',
	#classTraits : 'MetaModelPrintingTrait classTrait',
	#instVars : [
		'project',
		'compilationUnit',
		'node',
		'functionDefinition',
		'expression',
		'statement',
		'declaration',
		'type',
		'literal',
		'functionCall',
		'identifier',
		'expressionStatement',
		'return',
		'if',
		'block',
		'operator',
		'declarationStatement',
		'loop',
		'while',
		'for',
		'abstractWhile',
		'doWhile',
		'definition',
		'functionDeclaration',
		'variableDeclaration',
		'variableDefinition',
		'structureDeclaration',
		'structureDefinition',
		'break',
		'unaryOperator',
		'binaryOperator',
		'preIncrementOperator',
		'preDecrementOperator',
		'castOperator',
		'logicalNotOperator',
		'additionOperator',
		'subtractionOperator',
		'multiplicationOperator',
		'divisionOperator',
		'indexerOperator',
		'assignementOperator',
		'andOperator',
		'orOperator',
		'equalityOperator',
		'greaterOperator',
		'greaterOrEqualOperator',
		'lesserOperator',
		'lesserOrEqualOperator',
		'structAccessPointerOperator',
		'bitwiseAndOperator',
		'moduloOperator',
		'structAccessStaticOperator',
		'emptyStatement',
		'unequalOperator',
		'inequalityOperator',
		'ternaryConditionalOperator',
		'rawCCode',
		'preprocessorIf',
		'addressOfOperator',
		'rawDeclaration',
		'bitLeftShiftOperator',
		'bitRightShiftOperator',
		'bitwiseXorOperator',
		'bitwiseOrOperator',
		'negationOperator',
		'expressionList',
		'switch',
		'switchCase',
		'bitwiseNotOperator',
		'preprocessorDefine',
		'assignmentAdditionOperator',
		'preprocessorInclude'
	],
	#category : #'ASTC-Builder'
}

{ #category : #accessing }
ASTCBuilder class >> packageName [
	"Override. Define the name of the package"
	^'ASTC-Core'
]

{ #category : #accessing }
ASTCBuilder class >> prefix [
	"override, defines the prefdix we'll find in front of the generated classes"
	^'ASTC'
]

{ #category : #definition }
ASTCBuilder >> defineClasses [
	"define the classes that appear in the metamodel, and put them in instances variables, following the FmxNG syntax."
	super defineClasses.
	
	"general"
	node := builder newClassNamed: #Node.

		"Node Subclasses"
		project := builder newClassNamed: #Project.
		compilationUnit := builder newClassNamed: #CompilationUnit.
		definition := builder newClassNamed: #Definition.
		declaration := builder newClassNamed: #Declaration.
		
		expression := builder newClassNamed: #Expression.
		statement := builder newClassNamed: #Statement.
		type := builder newClassNamed: #Type.
		
			"Definition/declaration"
			functionDeclaration := builder newClassNamed: #FunctionDeclaration.
			functionDefinition := builder newClassNamed: #FunctionDefinition.
	
			variableDeclaration := builder newClassNamed: #VariableDeclaration.
			variableDefinition := builder newClassNamed: #VariableDefinition.
	
			structureDeclaration := builder newClassNamed: #StructureDeclaration.
			structureDefinition := builder newClassNamed: #StructureDefinition.
			
		"Expressions"
		literal := builder newClassNamed: #Literal.
		functionCall := builder newClassNamed: #FunctionCall.
		operator := builder newClassNamed: #Operator.
		self defineOperatorClasses.
		identifier := builder newClassNamed: #Identifier.
		rawCCode := builder newClassNamed: #RawCCode.
		expressionList := builder newClassNamed: #ExpressionList.
		
		"Statement"
		emptyStatement := builder newClassNamed: #EmptyStatement.
		expressionStatement := builder newClassNamed: #ExpressionStatement.
		declarationStatement := builder newClassNamed: #DeclarationStatement.
		return := builder newClassNamed: #Return.
		if := builder newClassNamed: #If.
		switch := builder newClassNamed: #Switch.
		switchCase := builder newClassNamed: #SwitchCase.
		block := builder newClassNamed: #Block.
		break := builder newClassNamed: #Break.
		
		"Loops"
		loop := builder newClassNamed: #Loop.
			for := builder newClassNamed: #For.
			abstractWhile := builder newClassNamed: #AbstractWhile.
				while := builder newClassNamed: #While.
				doWhile := builder newClassNamed: #DoWhile.
 
		"DeclarationStatement Subclass"
		rawDeclaration := builder newClassNamed: #RawDeclaration.

		"preprocessor"
		preprocessorIf := builder newClassNamed: #PreprocessorIf.
		preprocessorDefine := builder newClassNamed: #PreprocessorDefine.
		preprocessorInclude := builder newClassNamed: #PreprocessorInclude.
]

{ #category : #definition }
ASTCBuilder >> defineHierarchy [
	super defineHierarchy.
	"Define the inheritance links between the classes defined in #defineClasses, following the FmxNG syntax."

	project --|> node.
	compilationUnit --|> node.
	
	"preprocessor"
	preprocessorIf --|> expression "not sure about this..".
	preprocessorDefine --|> node.
	preprocessorInclude --|> node.

		"Node Direct SubClasses"
		functionDefinition  --|> node.
		expression --|> node.
		statement --|> node.
		declaration --|> node.
		definition --|> node.
		type --|> node.
		
			"Definition/declaration directSubclasses"
			functionDeclaration --|> declaration.
			functionDefinition --|> definition.
	
			variableDeclaration --|> declaration.
			variableDefinition  --|> definition.
			
			structureDeclaration --|> declaration.
			structureDefinition  --|> definition.
			
		
			"Expression direct Subclasses"
			literal --|> expression.
			functionCall  --|> expression.
			operator --|> expression.
			self defineOperatorsHierarchy.
			identifier --|> expression.
			rawCCode --|> expression.
			expressionList --|> expression.
			
			"Statement direct Subclasses"
			emptyStatement  --|> statement.
			expressionStatement --|> statement.
			declarationStatement --|> statement.
			return --|> statement.
			if  --|> statement.
			switch --|> statement.
			switchCase --|> statement.
			block --|> statement.
			break --|> statement.
				
			"Loops"
			loop --|> statement.
				for --|> loop.				
				abstractWhile --|> loop.
					while --|> abstractWhile.
					doWhile --|> abstractWhile.
			
				"DeclarationStatement subclass"
				rawDeclaration --|> declarationStatement.
]

{ #category : #definition }
ASTCBuilder >> defineOperatorClasses [
	"Define operators in a different function, to limit the noise"
	
	self flag:#format. "should have a synced format with defineOperators. Will do when they are all there."
	unaryOperator := builder newClassNamed: #UnaryOperator.
	binaryOperator := builder newClassNamed: #BinaryOperator.
	ternaryConditionalOperator := builder newClassNamed: #TernaryConditionalOperator.
	
	preIncrementOperator := builder newClassNamed: #PreIncrementOperator.
	preDecrementOperator := builder newClassNamed: #PreDecrementOperator.
	castOperator := builder newClassNamed: #CastOperator.
	logicalNotOperator := builder newClassNamed: #LogicalNotOperator.
	
	assignementOperator := builder newClassNamed: #AssignmentOperator.
	additionOperator := builder newClassNamed: #AdditionOperator.
	subtractionOperator := builder newClassNamed: #SubtractionOperator.
	multiplicationOperator := builder newClassNamed: #MultiplicationOperator.
	divisionOperator := builder newClassNamed: #DivisionOperator.
	indexerOperator := builder newClassNamed: #IndexerOperator.
	orOperator := builder newClassNamed: #OrOperator.
	andOperator := builder newClassNamed: #AndOperator.
	equalityOperator := builder newClassNamed: #EqualityOperator.
	inequalityOperator := builder newClassNamed: #InequalityOperator.
	greaterOperator := builder newClassNamed: #GreaterOperator.
	greaterOrEqualOperator := builder newClassNamed: #GreaterOrEqualOperator.
	lesserOperator := builder newClassNamed: #LesserOperator.
	lesserOrEqualOperator := builder newClassNamed: #LesserOrEqualOperator.
	structAccessPointerOperator := builder newClassNamed: #StructAccessPointerOperator.
	bitwiseAndOperator := builder newClassNamed: #BitwiseAndOperator.
	moduloOperator := builder newClassNamed: #ModuloOperator.
	structAccessStaticOperator := builder newClassNamed: #StructAccessStaticOperator.
	addressOfOperator := builder newClassNamed: #AddressOfOperator.
	bitLeftShiftOperator := builder newClassNamed: #BitLeftShiftOperator.
	bitRightShiftOperator := builder newClassNamed: #BitRightShiftOperator.
	assignmentAdditionOperator := builder newClassNamed: #AssignmentAdditionOperator.
	bitwiseXorOperator := builder newClassNamed: #BitwiseXorOperator.
	bitwiseOrOperator := builder newClassNamed: #BitwiseOrOperator.
	bitwiseNotOperator := builder newClassNamed: #BitwiseNotOperator.
	negationOperator := builder newClassNamed: #NegationOperator.
	
]

{ #category : #definition }
ASTCBuilder >> defineOperatorsHierarchy [
	"Define operators in a different function, to limit the noise"
	"priorities come from the ranking from the cppreference website.
	Second part of the comment refers the associativity.
	https://en.cppreference.com/w/c/language/operator_precedence"
	unaryOperator --|> operator.
	binaryOperator --|> operator.
	
	"priority 1, #left"
	indexerOperator --|> binaryOperator. " aVar[anIndex] "
	structAccessPointerOperator --|> binaryOperator. " aVar -> aField "
	structAccessStaticOperator --|> binaryOperator. " aVar . aField "
	
	"priority 2 #right"
	preIncrementOperator --|> unaryOperator." ++i "
	preDecrementOperator --|> unaryOperator. " --i "
	logicalNotOperator --|> unaryOperator." ! b "
	addressOfOperator --|> unaryOperator. " & a "
	castOperator --|> unaryOperator. " (int) a "
	negationOperator --|> unaryOperator. " - a "
	bitwiseNotOperator --|> unaryOperator. " ~ a "
	
	"priority 3, #left"
	multiplicationOperator --|> binaryOperator." a * b "
	divisionOperator --|> binaryOperator." a / b "
	moduloOperator --|> binaryOperator." a % b "
	
	"priority 4, #left"
	subtractionOperator --|> binaryOperator." a - b "
	additionOperator --|> binaryOperator." a + b "
	
	"priority 5, #left"
	bitLeftShiftOperator --|> binaryOperator.
	bitRightShiftOperator --|> binaryOperator.
	
	"priority 6, #left"
	greaterOperator --|> binaryOperator." a > b "
	greaterOrEqualOperator --|> binaryOperator." a >= b "
	lesserOperator --|> binaryOperator." a < b "
	lesserOrEqualOperator --|> binaryOperator." a <= b "
	
	"priority 7, #left"
	equalityOperator --|> binaryOperator." a == b "
	inequalityOperator --|> binaryOperator." a != b "
	
	"priority 8, #left"
	bitwiseAndOperator --|> binaryOperator. " a & b "
	
	"priority 9, #left"
	bitwiseXorOperator --|> binaryOperator. " a ^ b "
	
	"priority 10, #left"
	bitwiseOrOperator --|> binaryOperator. " a | b "
	
	"priority 11, #left"
	andOperator --|> binaryOperator. " a && b "
	"priority 12, #left"
	orOperator --|> binaryOperator. " a || b "
	
	"priority 13, #right"
	ternaryConditionalOperator --|> operator. " a ? b : c "
	
	"priority 14, #right"
	assignementOperator --|> binaryOperator." a = b "
	assignmentAdditionOperator --|> binaryOperator." a += b"
	
]

{ #category : #definition }
ASTCBuilder >> defineProperties [ 
	super defineProperties.
	
	"define the properties of the classes following the FmxNG syntax."

	"Having some kind of type check on those would be nice, generated in the debug visitor."
	node property: #pharoNode type: #RBNode.
	node property: #comment type: #String.

	functionDeclaration property: #qualifiers type: #OrderedCollection.

	identifier property: #id type: #String.

	"removing the type might be a good idea"
	literal property: #value type: #String.
	
	rawCCode property: #cCode type: #String.
	rawDeclaration property: #rawDeclaration type: #String.
	rawDeclaration property: #varName type: #String.

	type property: #type type: #TypeConstraint.

	preprocessorInclude property: #name type: #String.
	
]

{ #category : #definition }
ASTCBuilder >> defineRelations [ 
	super defineRelations.
	"Define the relationships between the classes, following the FmxNG syntax."
	
	self flag:#comment.
	"Non container side properties NAMES will be IGNORED, TYPES are USED to generate validation visitor!"

	"Reflexive nodes"
	self flag:#hack. "generates only one parent, because the property have the same names, and one the <> side is the right part of the property, that we 'ignore'. May cause trouble."
	(node property: #parent) <>- (node property: #parent).

	"General nodes"
	(project property: #compilationUnits) <>-* (compilationUnit property: #project).
	(compilationUnit property: #includes) <>-* (preprocessorInclude property: #compilationUnit).
	(compilationUnit property: #preamble) <>- (rawCCode property: #compilationUnit). "Slang uses it, so we have it."
	(compilationUnit property: #defines) <>-* (preprocessorDefine property: #compilationUnit).
	(compilationUnit property: #structTypes) <>-* (structureDefinition property: #compilationUnit).
	(compilationUnit property: #definitions) <>-* (definition property: #compilationUnit).
	(compilationUnit property: #declarations) <>-* (declaration property: #compilationUnit).

	"preprocessor"
	(preprocessorIf property: #condition) <>- (expression property: #preProssorIfCond).
	(preprocessorIf property: #then) <>-* (node property: #preProssorIfThen).
	(preprocessorIf property: #else) <>-* (node property: #preProssorIfElse).
	
	(preprocessorDefine property: #name) <>- (identifier property: #preProcessorDefineName).
	(preprocessorDefine property: #value) <>- (literal property: #preProcessorDefineValue).

	(declaration property: #id) <>-(identifier property: #id).
	(definition property: #declaration) <>- (declaration property: #definition).

	(functionDeclaration property: #type) <>- (type property: #funcType).	
	(functionDeclaration property: #parameters) <>-* (variableDeclaration property: #arguments).
	
	(functionDefinition property: #body) <>- (block property: #funcDefBody).

	(variableDeclaration property: #type) <>- (type property: #declType).

	(variableDefinition property: #init) <>- (expression property: #initialization).

	(structureDefinition property: #members) <>-* (variableDeclaration property: #structureMembers).
	
	"expressions"
	(expressionList property: #expressions) <>-* (expression property: #expressionListPart).
	
	"statement"
	(if property: #condition) <>- (expression property: #conditionIf).
	(if property: #then) <>- (statement property: #thenStatement).
	(if property: #else) <>- (statement property: #elseStatement).
	(switch property: #expression) <>- (expression property: #switchExpression).
	(switch property: #cases) <>-* (switchCase property: #switchCases).
	(switch property: #default) <>- (statement property: #switchDefaultCase).
	
	(switchCase property: #expression) <>- (expression property: #switchCaseExpression).
	(switchCase property: #body) <>- (statement property: #switchCaseBody).
	
	(return property: #expression) <>- (expression property: #returnExp).
	
	(expressionStatement property: #expression) <>- (expression property: #expStatement).
	
	(declarationStatement property: #declaration) <>- (declaration property: #declStatement).	

	(unaryOperator property: #operand) <>- (expression property: #unaryOperand).
	(binaryOperator property: #leftOperand) <>- (expression property: #leftBinaryOperand).
	(binaryOperator property: #rightOperand) <>- (expression property: #rightBinaryOperand).
	(ternaryConditionalOperator property: #condition) <>- (expression property: #conditionTernary).
	(ternaryConditionalOperator property: #then) <>- (expression property: #thenStatementTernary).
	(ternaryConditionalOperator property: #else) <>- (expression property: #elseStatementTernary).
	
	
	(castOperator property: #type) <>- (type property: #castOperatorType).
	
	(functionCall property: #id) <>- (expression property: #FunCallId).
	(functionCall property: #arguments) <>-* (expression property: #funcCallArg).
	
	(block property: #statements) <>-* (statement property: #blockStatement).
	(block property: #declarations) <>-* (declarationStatement property: #blockDeclarations).
	
	(loop property: #condition) <>- (expression property: #condition).
	(loop property: #body) <>- (statement property: #body).
		(for property: #iteratorDefinition) <>- (node property: #declIterator).
		(for property: #iteratorModification) <>- (expression property: #modifIterator).
		
		
]
