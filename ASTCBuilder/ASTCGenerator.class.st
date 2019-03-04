Class {
	#name : #ASTCGenerator,
	#superclass : #FmxMBWalkerVisitor,
	#traits : 'PackageManagementTrait',
	#classTraits : 'PackageManagementTrait classTrait',
	#instVars : [
		'packageName',
		'prefix',
		'builder',
		'currentClass',
		'parentPropertyName',
		'astVisitorClass'
	],
	#category : #ASTCBuilder
}

{ #category : #generating }
ASTCGenerator class >> generate [ 
	^self new generate.
]

{ #category : #visiting }
ASTCGenerator >> addAccessors: aSymbol isMany: aBoolean [

	self addAccessors: aSymbol on:currentClass isMany: aBoolean. 
	

]

{ #category : #visiting }
ASTCGenerator >> addAccessors: aSymbol on: aClass isMany: aBoolean [
	| methodBody propertyName |
	
	propertyName:=aSymbol asString.
	"getter"
	methodBody :=propertyName,'
	^',propertyName.
		
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	"setter"	
	methodBody :=propertyName,': ', (aBoolean ifFalse:['anObject'] ifTrue:['aCollection']),'
	',propertyName,':=',(aBoolean ifFalse:['anObject'] ifTrue:['aCollection']).
	
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
]

{ #category : #visiting }
ASTCGenerator >> addCurrentClassAbstractVisitor [
	| methodName |
	methodName:='visit',currentClass asString,':'.
	self addMethod: methodName,'a',currentClass asString on: astVisitorClass withProtocol:'visit'.
]

{ #category : #visiting }
ASTCGenerator >> addMethod: aBodyAsString on: aClass withProtocol: aProtocolAsString [

	aClass compile: aBodyAsString classified: aProtocolAsString
]

{ #category : #visiting }
ASTCGenerator >> addProperty: aString isMany: aBoolean [
"	self haltOnCount:24. self flag:#wat."
	(currentClass allSlots
		anySatisfy: [ :each | each name = aString ])
		ifTrue: [ ^ self ].	"we check if the slot already exists"

	currentClass addInstVarNamed: aString.
	self addAccessors: aString isMany: aBoolean
]

{ #category : #visiting }
ASTCGenerator >> addVisitor [
	|compiledMethod|

	self addCurrentClassAbstractVisitor.
	self addVisitor:currentClass.
]

{ #category : #visiting }
ASTCGenerator >> addVisitor:aClass [

	self addMethod:(
		'acceptVisitor: aVisitor
		aVisitor visit',currentClass asString,':self.'
		)
		on: aClass
		withProtocol:'visit'.
	
]

{ #category : #actions }
ASTCGenerator >> clean [
	"remove the package created by a previous generation, and the contained classes"
	
	self removePackageNamed:packageName.
]

{ #category : #visiting }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString [
	^(ShSmalltalkGlobalsEnvironment new classNamed: superclassAsString ifAbsent:Object)
		subclass: classNameAsSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: self packageName
		
]

{ #category : #actions }
ASTCGenerator >> generate [
	"recreate a clean package, and generate the classes"
	self clean.
	self makePackage.

	astVisitorClass := self createClass: (self prefix,'Visitor') asSymbol superclass:'Object'.

	builder acceptVisitor:self.
	
]

{ #category : #initialization }
ASTCGenerator >> initialize [
	| builderClass |
	self flag:#ModularityNeeded. "ASTCBuilder shouldn't be hardcoded, but an argument. Stays that way for developpement speed."
	self flag:#todo. "Modularity on collections used"
	self flag:#toRemove. "remove the Transcript clear, it's just for development."
	
	Transcript clear.
	super initialize.
	
	self initializeDefault.
	builderClass:=ASTCBuilder.
	
	builder:=builderClass builderWithDefinitions.	
	prefix:= builderClass prefix.
	packageName:=builderClass packageName.

	
	
]

{ #category : #initialization }
ASTCGenerator >> initializeDefault [
	self flag:#addConfig.
	self flag:#Fun. "to remove"
	parentPropertyName:='mommy'.
	
]

{ #category : #actions }
ASTCGenerator >> makePackage [
	"Create the package of the builder"
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

{ #category : #visiting }
ASTCGenerator >> parentPropertyName [
	^parentPropertyName
	
]

{ #category : #visiting }
ASTCGenerator >> parentPropertyName: aString [
	parentPropertyName:=aString.
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
	"Visit a class, build it, and deploy it on the system."
	| superclass className |
	
	superclass := (aClass classGeneralization ifNotNil:[ :class| prefix,class name ] ifNil:['Object']) asSymbol. "we get a symbol of the Superclass"
	className := (prefix,aClass name) asSymbol."we get the new class name and format it"
	
	"And we create it"
	currentClass:=self createClass: className superclass: superclass.
	
	currentClass crLog.
	super visitClass:aClass."fill up with property and properties methods, such as accessors"
	
	self addCurrentClassAbstractVisitor.
	self addVisitor.

]

{ #category : #visiting }
ASTCGenerator >> visitRelationSide: aRelationSide [
"	self log: aRelationSide propertyName ; log:' '  ;logCr: aRelationSide  isContainer."
	| oppositeRelationSide |	

	oppositeRelationSide:= aRelationSide otherSide.	
	
	Transcript cr;
	show:aRelationSide name;
	space;
	show:((aRelationSide isMany) ifTrue:['*']ifFalse:[ aRelationSide isContainer ifTrue:['<>']ifFalse:['']]); 
	show: '-';  
	show:((oppositeRelationSide isMany) ifTrue:['*']ifFalse:[ oppositeRelationSide isContainer ifTrue:['<>']ifFalse:['']]);
	space ;
	show: oppositeRelationSide name.
	

	aRelationSide isContainer 
	ifTrue:[
		self addProperty: self parentPropertyName isMany: false.
		]
	ifFalse:[
		self addProperty: aRelationSide name asString isMany: aRelationSide isMany.
	].
]

{ #category : #visiting }
ASTCGenerator >> visitTrait: aTrait [
]

{ #category : #visiting }
ASTCGenerator >> visitTypedProperty: aTypedProperty [
	"self add:aTypedProperty."
]
