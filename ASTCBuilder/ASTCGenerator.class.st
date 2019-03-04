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
		'astVisitorClass',
		'astVisitorWalkerClass',
		'collectionsType'
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
	methodBody :=
propertyName,'
	^',propertyName.
		
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	"setter"	
	methodBody :=
propertyName,': ', (aBoolean ifFalse:['anObject'] ifTrue:['aCollection']),'
	',propertyName,':=',(aBoolean ifFalse:['anObject'] ifTrue:['aCollection']).
	
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	aBoolean ifTrue:[
		self addInitialize: aSymbol .
		].
]

{ #category : #visiting }
ASTCGenerator >> addCurrentClassAbstractVisitor [
	| methodBody className |
	className := currentClass asString.
	methodBody:='visit',className asString,':',(className first isVowel ifTrue:['an']ifFalse:['a']),className.
	self addMethod: methodBody on: astVisitorClass withProtocol:'visit'.
]

{ #category : #visiting }
ASTCGenerator >> addInitialize [
	self flag:#refactorName.
	self addInitializeOn:currentClass
	
]

{ #category : #visiting }
ASTCGenerator >> addInitialize: aSymbol [ 
	self flag:#refactorName.
	self addInitialize:  aSymbol On: currentClass.
]

{ #category : #visiting }
ASTCGenerator >> addInitialize: aSymbol On: aClass [
	| methodBody propertyName |
	
	self flag:#refactorName.
	
	propertyName:= aSymbol asString.
	
	methodBody :=
('initialize ',propertyName) asCamelCase ,'
	',propertyName,':=',collectionsType asString,' new.'.

	
	self addMethod: methodBody on: aClass withProtocol: 'initialize'.
]

{ #category : #visiting }
ASTCGenerator >> addInitializeOn: aClass [
	| methodBody methodstoLaunch|
	self flag:#refactorName.
	methodstoLaunch := aClass selectors select:[:selector| 'initialize*' match:selector ]. 
	
	methodstoLaunch ifEmpty:[^self].
	
	methodBody :=String streamContents: [:s | 
		s nextPutAll:'initialize
	super initialize.
'.
		methodstoLaunch do: [:method | s nextPutAll:'	self ' ;nextPutAll: method; nextPutAll:'.' ] 
	].
	
	self addMethod: methodBody on: aClass withProtocol: 'initialize'.
	
]

{ #category : #visiting }
ASTCGenerator >> addMethod: aBodyAsString on: aClass withProtocol: aProtocolAsString [

	aClass compile: aBodyAsString classified: aProtocolAsString
]

{ #category : #visiting }
ASTCGenerator >> addProperty: aString isMany: isManyBoolean [
"	self haltOnCount:24. self flag:#wat."
	(currentClass allSlots
		anySatisfy: [ :each | each name = aString ])
		ifTrue: [ ^ self ].	"we check if the slot already exists"

	currentClass addInstVarNamed: aString.
	self addAccessors: aString isMany: isManyBoolean.
	self addWalkerProperty:aString for:currentClass isMany: isManyBoolean.
	
]

{ #category : #visiting }
ASTCGenerator >> addVisitor [
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

{ #category : #visiting }
ASTCGenerator >> addWalkerProperty:aPropertyName for: aClass isMany:isManyBoolean [
	| methodBody variableName |
	self flag:#changeName."change the name of the iterator to feel less generic"

	variableName:=(aClass asString first isVowel ifTrue:['an']ifFalse:['a']),aClass asString.
	methodBody:=
	'walk',(aClass asString,' ',aPropertyName) asCamelCase,': ',variableName,'
	',variableName,' ',aPropertyName.
	
	methodBody:=methodBody,(isManyBoolean ifTrue:[' do:[:child| child acceptVisitor:self].']
				     ifFalse:[' acceptVisitor:self.']).
	
	self addMethod: methodBody on: astVisitorWalkerClass withProtocol: 'walking'
	
]

{ #category : #visiting }
ASTCGenerator >> addWalkingOverride [
	self addWalkingOverrideFor:currentClass.
]

{ #category : #visiting }
ASTCGenerator >> addWalkingOverrideFor: aClass [
	| methodBody methodstoLaunch pattern className|
	
	self flag:#refactorName.
	className:=aClass asString.
	pattern:='walk',className,'*'.
	methodstoLaunch := astVisitorWalkerClass  selectors select:[:selector| pattern match:selector ]. 
	
	methodstoLaunch ifEmpty:[^self].
	

	
	methodBody :=String streamContents: [:s | 
		s nextPutAll:'visit'; nextPutAll:className ; nextPutAll:':'; nextPutAll: (className first isVowel ifTrue:['an']ifFalse:['a']); nextPutAll:className ; nextPutAll:'
'.
		methodstoLaunch do: [:method | s nextPutAll:'	self ' ;nextPutAll: method; nextPutAll:(className first isVowel ifTrue:['an']ifFalse:['a']); nextPutAll:className; nextPutAll:'.
' ] 
	].
	
	self addMethod: methodBody on: astVisitorWalkerClass  withProtocol: 'visit'.
	
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
	|visitorClassSymbol|
	self clean.
	self makePackage.
	
	visitorClassSymbol:=(self prefix,'Visitor') asSymbol.
	astVisitorClass := self createClass:  visitorClassSymbol superclass:'Object'.
	astVisitorWalkerClass := self createClass: (self prefix,'VisitorWalker') asSymbol superclass:visitorClassSymbol.
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
	parentPropertyName:='parent'.
	collectionsType:=ASTCContainer.
	
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
	self addInitialize.
	self addWalkingOverride.

]

{ #category : #visiting }
ASTCGenerator >> visitRelationSide: aRelationSide [
"	self log: aRelationSide propertyName ; log:' '  ;logCr: aRelationSide  isContainer."
	| oppositeRelationSide |	

	oppositeRelationSide:= aRelationSide otherSide.	
	
"	Transcript cr;
	show:aRelationSide name;
	space;
	show:((aRelationSide isMany) ifTrue:['*']ifFalse:[ aRelationSide isContainer ifTrue:['<>']ifFalse:['']]); 
	show: '-';  
	show:((oppositeRelationSide isMany) ifTrue:['*']ifFalse:[ oppositeRelationSide isContainer ifTrue:['<>']ifFalse:['']]);
	space ;
	show: oppositeRelationSide name."
	

	aRelationSide isContainer 
	ifTrue:[
		self addProperty: self parentPropertyName isMany: false.
		]
	ifFalse:[
		self addProperty: aRelationSide name asString isMany: aRelationSide isMany.
	].
]

{ #category : #visiting }
ASTCGenerator >> visitTypedProperty: aTypedProperty [
	self addProperty:aTypedProperty name isMany: false.
	
]
