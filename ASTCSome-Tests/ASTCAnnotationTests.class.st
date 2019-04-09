Class {
	#name : #ASTCAnnotationTests,
	#superclass : #TestCase,
	#category : #'ASTCSome-Tests'
}

{ #category : #asserting }
ASTCAnnotationTests >> assertTypeOf: aRBMessageNode equals: aClass [ 
	
	| concreteTypes |
	concreteTypes := aRBMessageNode inferedConcreteClass asArray.
	self assert: concreteTypes equals: {aClass}.

]

{ #category : #utils }
ASTCAnnotationTests >> inferWithPhineas: aMethod [ 

	^ ASTCFromPharo new visitPreTranslationFor: aMethod ast copy.

]

{ #category : #running }
ASTCAnnotationTests >> testConditionHasBooleanTypeFromPhineas [
	| methodAST conditionNode |
	methodAST := self inferWithPhineas: (RandomTestClass  compiledMethodAt:#factorialR).

	conditionNode := (methodAST children first children at: 3) receiver.		
	self assertTypeOf: conditionNode equals: Boolean. 

]

{ #category : #running }
ASTCAnnotationTests >> testMethodTypeIsReturnTypeInPhineas [
	
	| ast |
	ast := self inferWithPhineas: (RandomTestClass  compiledMethodAt:#simpleReturnInteger).
	self assertTypeOf: ast equals: SmallInteger. 
]

{ #category : #running }
ASTCAnnotationTests >> testReturnIsSmallIntegerInRecursiveMethod [
	| methodAST |
	methodAST := self inferWithPhineas: (RandomTestClass compiledMethodAt:#factorialR).
	self assertTypeOf: methodAST equals: SmallInteger. 

]
