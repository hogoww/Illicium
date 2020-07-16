Class {
	#name : #MASlangInstanceVariableNodeTranslator,
	#superclass : #FAInstanceVariableNodeTranslator,
	#category : #'MAngler-Slang-Struct Nodes Translators'
}

{ #category : #translate }
MASlangInstanceVariableNodeTranslator >> translateNode: anInstanceVariableNode [
	| slot |
	self flag:#badFix. "version disparity between p8 (vm is build using p8) and P9 (which I use to work)"
	slot := (SmalltalkImage current version = 'Pharo8.0.0')
		ifTrue: [ anInstanceVariableNode binding slot ]
		ifFalse: [
			(SmalltalkImage current version = 'Pharo9.0.0')
				ifTrue:[ anInstanceVariableNode binding ]
				ifFalse:[ self error: 'unknown version' ]].
		
	^ slot owningClass = anInstanceVariableNode methodNode methodClass
		ifTrue: [ (ASTCIdentifier id: #__self__in_method__)
			-> 
			(ASTCIdentifier id: anInstanceVariableNode name) ]
		ifFalse: [ 
			self halt. "currently unused, I want to see a usecase before validating it."
			(ASTCIdentifier id: anInstanceVariableNode name) ]
]
