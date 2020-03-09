Class {
	#name : #ASTCSwitch,
	#superclass : #ASTCStatement,
	#instVars : [
		'expression',
		'cases',
		'default'
	],
	#category : #'ASTC-Core-Nodes'
}

{ #category : #testing }
ASTCSwitch >> = aSwitch [
	super = aSwitch
		ifFalse: [ ^ false ].
	expression = aSwitch expression
		ifFalse: [ ^ false ].
	cases = aSwitch cases
		ifFalse: [ ^ false ].
	default = aSwitch default
		ifFalse: [ ^ false ].
	^ true
]

{ #category : #visiting }
ASTCSwitch >> acceptVisitor: aVisitor [
	aVisitor visitSwitch: self
]

{ #category : #accessing }
ASTCSwitch >> addCase: aCase [
	aCase parent: self.
	cases add: aCase
]

{ #category : #accessing }
ASTCSwitch >> cases [
	^ cases
]

{ #category : #accessing }
ASTCSwitch >> cases: someSwitchCases [
	someSwitchCases do: [ :each | each parent: self ].
	cases := someSwitchCases
]

{ #category : #accessing }
ASTCSwitch >> default [
	^ default
]

{ #category : #accessing }
ASTCSwitch >> default: aDefault [
	aDefault ifNotNil: [ aDefault parent: self ].
	default := aDefault
]

{ #category : #accessing }
ASTCSwitch >> expression [
	^ expression
]

{ #category : #accessing }
ASTCSwitch >> expression: anExpression [
	anExpression ifNotNil: [ anExpression parent: self ].
	expression := anExpression
]

{ #category : #accessing }
ASTCSwitch >> initialize [
	cases := OrderedCollection new
]

{ #category : #testing }
ASTCSwitch >> isSwitch [
	^ true
]
