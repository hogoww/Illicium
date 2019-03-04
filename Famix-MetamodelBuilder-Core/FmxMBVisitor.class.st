"
I am a visitor for instances of #FamixMetamodelGenerator and subclasses.

I offer methods to which will be called by visited class that accept me.

My methods are empty to serve as base implementation if you want to only override specific methods.
My methods do NOT take care of accepting me on their childrens. See #FmxMBVisitorWalker if you want that property.

general case:
b := aFamixMetamodelGeneratorClass builderWithDefinitions.
v := aFmxMBVisitorClass new.
b acceptVisitor: v.




"
Class {
	#name : #FmxMBVisitor,
	#superclass : #Object,
	#category : #'Famix-MetamodelBuilder-Core-Implementation'
}

{ #category : #visiting }
FmxMBVisitor >> visitBuilder: aBuilder [

	
]

{ #category : #visiting }
FmxMBVisitor >> visitClass: aClas [
]

{ #category : #visiting }
FmxMBVisitor >> visitRelationSide: aRelationSide [
]

{ #category : #visiting }
FmxMBVisitor >> visitTrait: aTrait [
]

{ #category : #visiting }
FmxMBVisitor >> visitTypedProperty: aTypedProperty [
]
