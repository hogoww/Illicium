Class {
	#name : #MASlangAssignmentNodeTranslator,
	#superclass : #FAAssignementNodeTranslator,
	#category : #'MAngler-Slang-Nodes-translators'
}

{ #category : #translate }
MASlangAssignmentNodeTranslator >> translateNode: anAssignmentNode [

	(anAssignmentNode value isMessage and: [ anAssignmentNode value selector = #+ ])
		ifTrue: [
			anAssignmentNode variable = anAssignmentNode value receiver ifTrue:[
				^ (anAssignmentNode variable acceptVisitor: methodTranslator)
					assignAndAdd: (anAssignmentNode value arguments first acceptVisitor: methodTranslator) ].
			" apparently not done in slang..
			anAssignmentNode variable = anAssignmentNode value receiver ifTrue:[
				^ (anAssignmentNode variable acceptVisitor: methodTranslator)
					assignAndAdd: (ASTCLiteral value: anAssignmentNode receiver) ]"].
	^ super translateNode: anAssignmentNode
]
