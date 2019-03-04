Trait {
	#name : #MetaModelPrintingTrait,
	#category : #ASTCBuilder
}

{ #category : #printing }
MetaModelPrintingTrait >> toText [
	| visitor visitableBuilder |
	visitor:= FmxMBPrintVisitor new.
	visitableBuilder:=self builder builderWithDefinitions.
	visitableBuilder acceptVisitor: visitor.
]

{ #category : #printing }
MetaModelPrintingTrait >> toUML [
	| visitor visitableBuilder |
	visitor:= FmxMBPlantTextVisitor new.
	visitableBuilder:=self builder builderWithDefinitions.
	visitableBuilder acceptVisitor: visitor.
]
