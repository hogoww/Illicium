"
My aim is to tag VM methods that cannot be translated to C, but are through inlining.
This is the case when you have a method using a blockClosure as argument.

f
	self g: [ 1 ]
	
g: aBlock
	aBlock value	
	
This is not possible because you cannot pass a closure as argument.
Therefore, your slang program post inlining should look like this : 
f
	[ 1 ] value
and will be translated something like this:
f(){
 	{ 1 }
}

I rely on MASlangProgramCleaner to remove the methods that I tag.
"
Class {
	#name : #MASlangRequiredInliningMethodTagger,
	#superclass : #RBProgramNodeVisitor,
	#instVars : [
		'program'
	],
	#category : #'MAngler-Slang-Analysis'
}

{ #category : #accessing }
MASlangRequiredInliningMethodTagger class >> propertyName [
	^ MASlangProgramCleaner propertyName
]

{ #category : #accessing }
MASlangRequiredInliningMethodTagger >> program [
	^ program
]

{ #category : #accessing }
MASlangRequiredInliningMethodTagger >> program: aProgram [
	program := aProgram
]

{ #category : #visiting }
MASlangRequiredInliningMethodTagger >> visitMessageNode: aMessageNode [
	aMessageNode arguments do:[ :anArg |
		anArg isBlockNode ifTrue:[ | method |
			method := program methodNamed: aMessageNode selector.
			method propertyAt: self class propertyName put: true
			] ].
	super visitMessageNode: aMessageNode
]
