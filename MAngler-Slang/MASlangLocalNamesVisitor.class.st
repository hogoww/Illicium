"
I am gathering the names declared in a methods, whether they are temp or args.
iv/cv/global/ are disregarded.

I also test invalid input such as: 
aMethod
	| aTemp aTemp |

I am initially build to work on inlining, and therefore erroneous input may be created.

/!\ This is working because of the wrong semantics in RBProgramNode >> #visitMethodNode: which does not use #accept: for temp/arg declarations.
This therefore works whether the nodes are semantically analized or not.

"
Class {
	#name : #MASlangLocalNamesVisitor,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'result'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MASlangLocalNamesVisitor >> addName: aLocalDeclarationNode [
	aLocalDeclarationNode isDefinition ifFalse: [ ^ self ].
	result at: aLocalDeclarationNode name
		ifPresent: [ :anAssociation | "MASlangFoundSameNameTwice new conflictings: { anAssociation value == aLocalDeclarationNode } ; signal" ]
		ifAbsentPut: [ aLocalDeclarationNode name -> aLocalDeclarationNode ]

]

{ #category : #accessing }
MASlangLocalNamesVisitor >> initialize [
	result := Dictionary new.
]

{ #category : #accessing }
MASlangLocalNamesVisitor >> result [
	^ result keys
]

{ #category : #accessing }
MASlangLocalNamesVisitor >> visitArgumentNode: anArgumentNode [
	self addName: anArgumentNode

]

{ #category : #accessing }
MASlangLocalNamesVisitor >> visitTemporaryDeclarationNode: aTemporaryNode [
	self addName: aTemporaryNode
]
