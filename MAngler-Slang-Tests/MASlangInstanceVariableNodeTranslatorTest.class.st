Class {
	#name : #MASlangInstanceVariableNodeTranslatorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'MAngler-Slang-Tests-NodeTranslatorTests'
}

{ #category : #running }
MASlangInstanceVariableNodeTranslatorTest >> setUp [
	super setUp.
	VMClass ifNil: [ self error: 'I need VMMaker to be loaded to work'].
	visitor := MASlangInstanceVariableNodeTranslator new.
]

{ #category : #tests }
MASlangInstanceVariableNodeTranslatorTest >> testInstanceVariableIsTranslatedAsStructAccess [
	| ast node |
	ast := (StructTypeToTest >> #b) ast.
	node := visitor translateNode: ast statements first value.
	self assert: node isStructAccessPointerOperator.
	self assert: node leftOperand isIdentifier.
	self assert: node leftOperand id equals:  #__self__in_method__.
	self assert: node rightOperand isIdentifier.
	self assert: node rightOperand id equals: #a.

]
