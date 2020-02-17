Class {
	#name : #ASTCIdentifierTest,
	#superclass : #TestCase,
	#category : #'ASTC-Core-Tests-shortcuts'
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
ASTCIdentifierTest >> testPharoKeyword1 [
	self shouldnt: [ ASTCIdentifier new id: #self ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testPharoKeyword2 [
	self shouldnt: [ ASTCIdentifier new id: #super ] raise: ReservedKeywordUse 
]

{ #category : #tests }
ASTCIdentifierTest >> testPharoKeyword3 [
	self shouldnt: [ ASTCIdentifier new id: #thisContext ] raise: ReservedKeywordUse 
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
