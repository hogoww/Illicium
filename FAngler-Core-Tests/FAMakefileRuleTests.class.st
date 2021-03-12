Class {
	#name : #FAMakefileRuleTests,
	#superclass : #TestCase,
	#instVars : [
		'ruleName',
		'rule'
	],
	#category : #'FAngler-Core-Tests'
}

{ #category : #running }
FAMakefileRuleTests >> setUp [

	rule := FAMakefileRule new.
	ruleName := #ruleName.
	rule name: ruleName.
]

{ #category : #running }
FAMakefileRuleTests >> testRuleWitOptionPhonyPrints [
	| result |
	rule phony: 'anotherName'.
	result := String streamContents: [ :s | 
		s  << ruleName << ':' ; crlf.
		s << '.PHONY: ' << 'anotherName'  ].
	
	self assert: rule printString 
		equals: result
]

{ #category : #running }
FAMakefileRuleTests >> testRuleWitOptionPrints [
	| result |
	rule options: '.DELETE_ON_ERROR:'.
	result := String streamContents: [ :s | 
		s << '.DELETE_ON_ERROR:'; crlf.
		s  << ruleName << ':' ; crlf ].
	
	self assert: rule printString 
		equals: result
]

{ #category : #running }
FAMakefileRuleTests >> testRuleWithBodyPrint [
	| result |
	rule addBodyLine: 'some bash command'.
	result := String streamContents: [ :s | 
		s << ruleName << ':' ; crlf.
		s tab << 'some bash command' ; crlf ].
	
	self assert: rule printString
		equals: result
]

{ #category : #running }
FAMakefileRuleTests >> testRuleWithDependencyPrint [
	| result |
	rule dependencies: 'some other rules'.
	result := String streamContents: [ :s | 
		s << ruleName << ':' << ' some other rules' ; crlf ].
	
	self assert: rule printString 
		equals: result
]

{ #category : #running }
FAMakefileRuleTests >> testRuleWithOnlyNamePrints [
	| result |
	result := String streamContents: [ :s | s << ruleName << ':' ; crlf ].
	
	self assert: rule printString 
		equals: result
]
