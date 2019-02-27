Class {
	#name : #ASTCGenerator,
	#superclass : #FmxMBWalkerVisitor,
	#traits : 'PackageManagementTrait',
	#classTraits : 'PackageManagementTrait classTrait',
	#instVars : [
		'packageName',
		'prefix',
		'builder',
		'currentClassIV'
	],
	#category : #ASTCBuilder
}

{ #category : #generating }
ASTCGenerator class >> generate [ 
	^self new generate.
]

{ #category : #actions }
ASTCGenerator >> clean [
	"remove the classes created by a previous generation"
	
	self removePackageNamed:packageName.
]

{ #category : #actions }
ASTCGenerator >> generate [
	self clean.
	self makePackage.
	builder acceptVisitor:self.
]

{ #category : #initialization }
ASTCGenerator >> initialize [
	super initialize.
	prefix:= ASTCBuilder prefix.
	packageName:=ASTCBuilder packageName.
	builder := ASTCBuilder builderWithDefinitions.
	
]

{ #category : #actions }
ASTCGenerator >> makePackage [
	self addPackageNamed: packageName.
]

{ #category : #accessing }
ASTCGenerator >> packageName [
	"Simple accessor"
	^packageName
	
]

{ #category : #accessing }
ASTCGenerator >> packageName: aString [
	"Simple accessor"
	packageName:=aString.
	^aString
	
]

{ #category : #accessing }
ASTCGenerator >> prefix [
	"Simple accessor"
	^prefix
	
	
]

{ #category : #accessing }
ASTCGenerator >> prefix: aString [
	"Simple accessor"
	prefix:=aString.
	^aString
	
]

{ #category : #visiting }
ASTCGenerator >> visitClass: aClass [
	| superclass className |
	superclass := (aClass classGeneralization ifNotNil:[ :class| prefix,class name ] ifNil:['Object']) asSymbol. "we get a symbol of the Superclass"
	className := (prefix,aClass name) asSymbol."we get the new class name and format it"
	

	(ShSmalltalkGlobalsEnvironment new classNamed: superclass ifAbsent:Object)
		subclass: className
		instanceVariableNames: (currentClassIV do: [ :each| each ] separatedBy:[ ' ' ] )
		classVariableNames: ''
		package: packageName.
		

]

{ #category : #visiting }
ASTCGenerator >> visitRelationSide: aRelationSide [

]

{ #category : #visiting }
ASTCGenerator >> visitTrait: aTrait [
	super visitTrait:aTrait.
]

{ #category : #visiting }
ASTCGenerator >> visitTypedProperty: aTypedProperty [

]
