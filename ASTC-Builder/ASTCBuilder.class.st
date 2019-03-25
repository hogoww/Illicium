"
I represent a (partial) metamodel for the C language.

I only represent the metamodel, I don't define any behavior on it.
I use a Trait that offer the possibilities to see me as text (in the Transcript) or as a UML Diagram with PlantUML.
You could also generate me with the FmxMB classes by using the following message:
ASTCBuilder new generate. 
(which won't work in the current state of this program, since we use a slightly different semantic to be used with another generator. See ASTGenerator.)

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
		'expressionsContainerTrait',
		'statementsContainerTrait',
		'declarationsContainerTrait'
	],
	#category : #'ASTC-Builder'
}

{ #category : #accessing }
ASTCBuilder class >> packageName [
	"Override. Define the name of the package"
	^'ASTC-Gen'
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
		

]

{ #category : #definition }
ASTCBuilder >> defineHierarchy [ 
	super defineHierarchy.
	
	"Define the inheritance links between the classes defined in #defineClasses, following the FmxNG syntax."
	
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
			identifier --|> expression.
			
			"Statement direct SubClasses"
			expressionStatement --|> statement.
			return --|> statement.
			if  --|> statement.
			block --|> statement.
			

]

{ #category : #definition }
ASTCBuilder >> defineProperties [ 
	super defineProperties.
	
	"define the properties of the classes following the FmxNG syntax."

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
	"Define the relationships between the classes, following the FmxNG syntax."
	
	"Not much relationships to define, they mostly go through Traits since they are multiple compostions."
	
	self flag:#comment.
	"Right properties name will be IGNORED."
	
	"General"
	(project property:#compilationUnits) <>-* (compilationUnit property:#project).
	(compilationUnit property:#functionDefinitions) <>-* (functionDefinition property:#compilationUnit).
	"Reflexive node"
	self flag:#hack. "generates only one parent, because the property have the same names, and one the <> side is the right part of the property, that we 'ignore'. May cause trouble."
	(node property:#parent) -<> (node property:#parent).	

	"FunctionDefinition"
	(functionDefinition property:#id) <>- (identifier property:#funcDefId).
	(functionDefinition property:#type) <>- (type property:#type).
	(functionDefinition property:#declarations) <>-* (declaration property:#funcDeclaration).
	(functionDefinition property:#body) <>- (block property:#funcDefBody).
	
	(if property:#predicate) <>- (expression property:#predicateIf).
	(if property:#then) <>- (statement property:#thenStatement).
	(if property:#else) <>- (statement property:#elseStatement).
	
	(return property:#expression) <>- (expression property:#returnExp).

	(expressionStatement property:#expression) <>- (expression property:#expStatement).

	(operator property:#operands) <>-* (expression property:#operatorOperand).
	
	(functionCall property:#id) <>- (identifier property:#FunCallId).
	(functionCall property:#arguments) <>-* (expression property:#funcCallArg).
	
	(block property:#declarations) <>-* (declaration property:#blockDecl).
	(block property:#statements) <>-* (statement property:#blockStatement).
	
	(declaration property:#ids) <>-* (identifier property:#declId).
	(declaration property:#type) <>- (identifier property:#declType).
	(declaration property:#init) <>- (identifier property:#declExp).

]
