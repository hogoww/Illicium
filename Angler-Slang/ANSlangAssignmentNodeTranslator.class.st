Class {
	#name : #ANSlangAssignmentNodeTranslator,
	#superclass : #ASTCAssignementNodeTranslator,
	#category : #'Angler-Slang'
}

{ #category : #translate }
ANSlangAssignmentNodeTranslator >> translateNode: anAssignmentNode [

	(anAssignmentNode value isMessage and: [ anAssignmentNode value selector = #+ ])
		ifTrue: [
			anAssignmentNode variable = anAssignmentNode value receiver ifTrue:[
				^ (anAssignmentNode variable acceptVisitor: methodTranslator)
					assignAndAdd: (ASTCLiteral value: anAssignmentNode value arguments first) ].
			anAssignmentNode variable = anAssignmentNode value receiver ifTrue:[
				^ (anAssignmentNode variable acceptVisitor: methodTranslator)
					assignAndAdd: (ASTCLiteral value: anAssignmentNode receiver) ]].
	^ super translateNode: anAssignmentNode
]