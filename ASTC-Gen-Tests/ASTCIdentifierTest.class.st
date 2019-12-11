Class {
	#name : #ASTCIdentifierTest,
	#superclass : #TestCase,
	#category : #'ASTC-Gen-Tests'
}

{ #category : #tests }
ASTCIdentifierTest >> testKeywordIf [
	self should: [ ASTCIdentifier new id: #if ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testKeywordInt [
	self should: [ ASTCIdentifier new id: #int ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testKeywordLong [
	self should: [ ASTCIdentifier new id: #long ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testRandomId1 [
	self shouldnt: [ ASTCIdentifier new id: #i ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testRandomId2 [
	self shouldnt: [ ASTCIdentifier new id: #druss ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testRandomId3 [
	self shouldnt: [ ASTCIdentifier new id: #class ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testRandomId4 [
	self shouldnt: [ ASTCIdentifier new id: #structu ] raise: ReservedKeywordUse 
]
