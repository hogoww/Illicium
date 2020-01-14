Class {
	#name : #ASTCVariableDeclarationAnnotator,
	#superclass : #ASTCAbstractCheckVisitor,
	#instVars : [
		'variableAppeareanceTracker',
		'varTodeclareAtStart'
	],
	#category : #'ASTC-VisitorsRB'
}

{ #category : #accessing }
ASTCVariableDeclarationAnnotator class >> property [
	^#needsDeclaration
]

{ #category : #initialization }
ASTCVariableDeclarationAnnotator >> initialize [ 
	variableAppeareanceTracker:= Dictionary new.
	varTodeclareAtStart := Set new.
]

{ #category : #visit }
ASTCVariableDeclarationAnnotator >> visitMethodNode: aMethodNode [
	super visitMethodNode: aMethodNode.

	"set the property for the temporaries tagged to be declared at the start of the function in the method node"
	aMethodNode body temporaries
		do: [ :aTemp |
			self atNewPropertyPut: (varTodeclareAtStart includes: aTemp name)
				for: aTemp ]
]
