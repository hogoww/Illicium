Class {
	#name : #MASlangSuperAnnotatorTest,
	#superclass : #FAVisitorTest,
	#category : #'MAngler-Slang-Tests-AnalysisTests'
}

{ #category : #basic }
MASlangSuperAnnotatorTest >> setUp [
	visitor := MASlangSuperAnnotator new classTranslator: MASlangClassTranslatorMock new ; yourself.
	super setUp.
]

{ #category : #tests }
MASlangSuperAnnotatorTest >> testSimpleSuper [
	| methodAST superMethodAST counter |
	methodAST :=(MAAClass >> #aMethodUsingSuper) ast.
	superMethodAST := (MAASuperClass >> #aMethodUsingSuper) ast.
	methodAST acceptVisitor: visitor.
	
	counter := 0.
	methodAST nodesDo: [ :aNode | 
		(aNode isMessage and: [ aNode receiver isSuper ]) ifTrue: [ 
			counter := counter + 1.
			self assert: aNode propertyEquals: superMethodAST  ] ].
	
	self assert: counter equals: 1.
]

{ #category : #tests }
MASlangSuperAnnotatorTest >> testSuperRecursive [
	| methodAST superMethodAST counter superSuperMethodAST |
	methodAST :=(MAAClass >> #aMethodUsingSuperTwice) ast.
	superMethodAST := (MAASuperClass >> #aMethodUsingSuperTwice) ast.
	superSuperMethodAST := (MAASuperSuperClass >> #aMethodUsingSuperTwice) ast.
	methodAST acceptVisitor: visitor.
	
	counter := 0.
	methodAST nodesDo: [ :aNode | 
		(aNode isMessage and: [ aNode receiver isSuper ]) ifTrue: [ 
			counter := counter + 1.
			self assert: aNode propertyEquals: superMethodAST  ] ].
	
	self assert: counter equals: 1.
	
	"we do the same for the super method."
	counter := 0.
	superMethodAST nodesDo: [ :aNode | 
		(aNode isMessage and: [ aNode receiver isSuper ]) ifTrue: [ 
			counter := counter + 1.
			self assert: aNode propertyEquals: superSuperMethodAST  ] ].
	
	self assert: counter equals: 1.
]
