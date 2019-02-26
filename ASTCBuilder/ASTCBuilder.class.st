Class {
	#name : #ASTCBuilder,
	#superclass : #FamixBasicInfrastructureGenerator,
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
		'expressionsContainerTrait',
		'statementsContainerTrait',
		'declarationsContainerTrait'
	],
	#category : #ASTCBuilder
}

{ #category : #actions }
ASTCBuilder class >> generate [
	"syntax sugar to generate the project" 
	self new generate.
]

{ #category : #actions }
ASTCBuilder class >> generateClean [ 
	"syntax sugar to generate the project" 
	self new generateWithCleaning.
]

{ #category : #accessing }
ASTCBuilder class >> packageName [
	^'ASTC-gen'
]

{ #category : #accessing }
ASTCBuilder class >> prefix [
	^'ASTC'
]

{ #category : #definition }
ASTCBuilder >> defineClasses [
	super defineClasses.
	
	"general"
	project:=builder newClassNamed:#Project.
	compilationUnit:=builder newClassNamed:#CompilationUnit.
	node:=builder newClassNamed:#Node.
	
		"Node Subclasses"
		functionDefinition:=builder newClassNamed:#FunctionDefinition.
		expression:=builder newClassNamed:#Expression.
		statement:=builder newClassNamed:#Statement.
		declaration:=builder newClassNamed:#Declaration.
		type:=builder newClassNamed:#Type.
		
		"Expressions"
		literal:=builder newClassNamed:#Literal.
		functionCall:=builder newClassNamed:#FunctionCall.
		operator:=builder newClassNamed:#Operator.
		identifier:=builder newClassNamed:#Identifier.
		
		"Statement"
		expressionStatement:=builder newClassNamed:#ExpressionStatement.
		return:=builder newClassNamed:#Return.
		if:=builder newClassNamed:#If.
		block:=builder newClassNamed:#Block.
		
	"Stateful Trait for multiple aggregation"
	expressionsContainerTrait:=builder newTraitNamed:#ExpressionsContainer.
	declarationsContainerTrait:=builder newTraitNamed:#DeclarationsContainer.
	statementsContainerTrait:=builder newTraitNamed:#StatementsContainer.

]

{ #category : #definition }
ASTCBuilder >> defineHierarchy [ 
	super defineHierarchy.
	
	"Famix system subClasses"
	project --|> namedEntity.
	compilationUnit --|> namedEntity.
	node --|> entity.

		"Node Direct SubClasses"
		functionDefinition  --|> node.
		expression --|> node.
		statement --|> node.
		declaration --|> node.
		type --|> node.
		
			"Expression direct SubClasses"
			literal --|> expression.
			functionCall  --|> expression.
			operator --|> expression.
			
			"Statement direct SubClasses"
			expressionStatement --|> statement.
			return --|> statement.
			if  --|> statement.
			block --|> statement.
			
	"Traits users for multi aggregations (0..*)"

	"Declarations"
	functionDefinition --|> declarationsContainerTrait.
	block --|> declarationsContainerTrait.
	
	
	"Statements"
	block --|> statementsContainerTrait.
	if --|> statementsContainerTrait.
	
	"Expressions"
	if --|> expressionsContainerTrait .
	return  --|> expressionsContainerTrait .
	expressionStatement --|> expressionsContainerTrait .
	functionCall	 --|> expressionsContainerTrait .
	operator --|> expressionsContainerTrait .
	declaration --|> expressionsContainerTrait .
	
]

{ #category : #definition }
ASTCBuilder >> defineProperties [ 
	super defineProperties.

	identifier property: #id type: #String.	
	operator property: #symbol type: #String.

	"removing the type might be a good idea"
	literal property: #value type: #String.

	"Could probably be replaced by a reference to a Class"
	type property: #type type: #String.
]

{ #category : #definition }
ASTCBuilder >> defineRelations [ 
	super defineRelations.
	
	"Not much relationships to define, they mostly go through Traits since they are multiple compostions."
	
	"General"
	(project property:#compilationUnit) <>-* (compilationUnit property:#project).
	(compilationUnit property:#functionsDefinitions) <>-* (functionDefinition  property:#compilationUnit).
	
		"Nodes"
		(functionDefinition property:#returnType) -* (type property:#functionReturn).
		(functionDefinition property:#id) - (identifier property:#functionID).
		(functionDefinition property:#body) <>- (block property:#funcBody).

		(declaration property:#declarationId) - (identifier property:#idDeclaration).
		(declaration property:#declarationType) - (type property:#declarationType) .
		
		"Expressions"
		(functionCall property:#funcName) - (identifier property:#funcCallId).		
		
	"Stateful Traits"
	(expressionsContainerTrait property:#expressions) <>-* (expression property:#container).
	(statementsContainerTrait property:#statements) <>-* (statement property:#container).
	(declarationsContainerTrait property:#declarations) <>-* (declaration property:#container).
]
