Class {
	#name : #MAProgram,
	#superclass : #FAProgram,
	#category : #'MAngler-Illicium-Translation'
}

{ #category : #'as yet unclassified' }
MAProgram >> prepareWithInferer: inferer inTranslator: translator [
	methods do: [ :aMethod | inferer infer: aMethod ].
	self removeMethods: [ :m | m protocol = #accessing ].
	self removeMethods: [ :m | m hasPragmaNamed: #doNotGenerate ]. "<< we need them for type inference"
	methods do:[ :aMethod | translator annotateMethodAST: aMethod ].
]

{ #category : #'as yet unclassified' }
MAProgram >> removeMethods: aBooleanBlock [
	| removed |
	removed := true.
	[ removed ] whileTrue: [ removed := false.
		methods 
			do: [ :aMethod | 
				(aBooleanBlock value: aMethod)
					ifTrue: [ removed := true. self removeSelector: aMethod selector ] ] ].
]
