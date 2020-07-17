Class {
	#name : #MAAbstractSlangReceiver,
	#superclass : #FAKernelClass,
	#instVars : [
		'type'
	],
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #'translation-operators' }
MAAbstractSlangReceiver >> + anOperand [
	^ self translatedReceiver + (anOperand acceptVisitor: methodTranslator)
]

{ #category : #'translation-operators' }
MAAbstractSlangReceiver >> = anotherObject [
	^ self 
		ifTranslation:
			[ self translatedReceiver equals: (anotherObject acceptVisitor: methodTranslator) ]
		ifNot: [ ^ super = anotherObject and: [ type = anotherObject type ] ]
]

{ #category : #'translation-operators' }
MAAbstractSlangReceiver >> == anOperand [
	^ self translatedReceiver equals: (anOperand acceptVisitor: methodTranslator)
]

{ #category : #typing }
MAAbstractSlangReceiver >> asConstraint [
	^ SingleType new type: type ; yourself
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> asUnsignedInteger [
	^ self translatedReceiver castTo: (self cTypeFor: #usqInt)
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> at: anExpression [
	^ self translatedReceiver indexAt: (anExpression acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> at: anExpression put: aValue [
	^ (self at: anExpression) assign: (aValue acceptVisitor: methodTranslator)
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> cTypeFor: aSymbol [
	^ aSymbol asCTypeNode
]

{ #category : #'instance creation' }
MAAbstractSlangReceiver >> createInstance [
	self flag: #hack. " allows to work with the initial machinery, without using new."
	^ self
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> ifNil: aNilBlock [
	| ifNotNilNode |
	ifNotNilNode := self ifNotNil: aNilBlock.
	ifNotNilNode condition: ifNotNilNode condition not.
	^ ifNotNilNode
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> ifNil: aNilBlock ifNotNil: anIfNotNilBlock [
	self assert: anIfNotNilBlock isBlock.
	^ ASTCIf new
		condition: self translatedReceiver not;
		then: (aNilBlock acceptVisitor: methodTranslator);
		else: (anIfNotNilBlock acceptVisitor: methodTranslator);
		yourself 
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> ifNotNil: anIfNotNilBlock [
	^ ASTCIf new
		condition: self translatedReceiver;
		then: (anIfNotNilBlock acceptVisitor: methodTranslator)
		yourself
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> ifNotNil: anIfNotNilBlock ifNil: aNilBlock [ 
	^ self ifNil: aNilBlock ifNotNil: anIfNotNilBlock
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> isNil [
	^ self translatedReceiver equals: (ASTCLiteral value: #null)
]

{ #category : #'translation-keyword' }
MAAbstractSlangReceiver >> notNil [
	^ self translatedReceiver notEquals: (ASTCLiteral value: #null)
]

{ #category : #'reflective operations' }
MAAbstractSlangReceiver >> translateAsAccessor: aMessage [
	"precond : aMessage is an accessor"	
	| structMember memberId |
	memberId := ASTCIdentifier id: aMessage selector.
	structMember := aMessage methodNode methodClass isStructClass
		ifTrue:[
			type isPointer 
				ifTrue: [ self translatedReceiver -> memberId ]
				ifFalse:[ self translatedReceiver structStaticAccess: memberId ].	
			]
		ifFalse: [ memberId ].
	
	aMessage selector last = $: ifFalse: [ ^ structMember ]."read accessor"
	"else write accessor"
	^ structMember assign: (aMessage arguments first acceptVisitor: methodTranslator)
]

{ #category : #accessing }
MAAbstractSlangReceiver >> type [
	^ type
]

{ #category : #accessing }
MAAbstractSlangReceiver >> type: aType [
	type := aType
]

{ #category : #'translation-operators' }
MAAbstractSlangReceiver >> ~= anotherObject [
	"if weird behavior, it's probably because it's not in the right context."
	"this is only defined for translation, so if it's use for receiver equality, it won't work."
	^ self translatedReceiver notEquals: (anotherObject acceptVisitor: methodTranslator) 
		
]

{ #category : #'translation-operators' }
MAAbstractSlangReceiver >> ~~ anOperand [
	"duplicates the code of #==
	funny thing, if we don't the message is not send, and we have a weird bug"
	^ self translatedReceiver equals: (anOperand acceptVisitor: methodTranslator) not
]
