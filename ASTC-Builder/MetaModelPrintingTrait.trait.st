"
I represent a stateless Trait used to print metamodels.

I just offer a primitive that will print myself in diverses ways.

I can interact with a metamodel builder, that is subclassing FamixMetamodelGenerator.

- toText : prints the metamodel on the Transcript
- message two  : returns a text which you can use with PlantUML to genearte a representation of the model in UML. (print it (ctrl+p) and copy/paste in the necessary file.)

Try me ! 
ASTCBuilder new toUML.
"
Trait {
	#name : #MetaModelPrintingTrait,
	#category : #'ASTC-Builder'
}

{ #category : #printing }
MetaModelPrintingTrait >> toText [
	"Shortcut to use the FmxMB PrintVisitor, which explore the metamodel and print it on the Transcript."
	| visitor visitableBuilder |
	visitor:= FmxMBPrintVisitor new.
	visitableBuilder:=self class builderWithDefinitions.
	visitableBuilder acceptVisitor: visitor.
]

{ #category : #printing }
MetaModelPrintingTrait >> toUML [
	"Shortcut to use the FmxMB PlantUML visitor, which explore the metamodel and write in the 'content' stream an output understandable by the program 'PlantUML', to show a graph representing it."
	| visitor visitableBuilder |
	visitor:= FmxMBPlantTextVisitor new.
	visitableBuilder:=self class builderWithDefinitions.
	visitableBuilder acceptVisitor: visitor.
	^visitor contents.
]
