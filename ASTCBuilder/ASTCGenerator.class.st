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
		'collectionsType',
		'astWalkerVisitorClass',
		'astPrinterVisitor',
		'classDictionary'
	],
	#category : #ASTCBuilder
}

{ #category : #generating }
ASTCGenerator class >> generate [ 
	^self new generate.
]

{ #category : #'name-formating' }
ASTCGenerator >> aClassAsVariable: aClassNameAsString [
	self flag:#wrongClass."should be on String, But I'm trying to do a self sustaining package."
	^(aClassNameAsString first isVowel ifTrue:['an']ifFalse:['a']),aClassNameAsString.
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addAcceptMethodOn:aClass [

	self addMethod:(
'acceptVisitor: aVisitor
	aVisitor visit',currentClass asString,':self.'
		)
		on: aClass
		withProtocol:'visiting'.
	
]

{ #category : #'generating-attributes' }
ASTCGenerator >> addAccessors: aSymbol isMany: aBoolean isProperty:isPropertyBoolean [

	self addAccessors: aSymbol on:currentClass isMany: aBoolean isProperty:isPropertyBoolean. 
	

]

{ #category : #'generating-attributes' }
ASTCGenerator >> addAccessors: aSymbol on: aClass isMany: isManyBoolean isProperty:isPropertyBoolean [
	| methodBody propertyName |
	
	propertyName:=aSymbol asString.
	"getter"
	methodBody :=
propertyName,'
	^',propertyName.
		
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	"setter"	
	methodBody :=
propertyName,': ', (isManyBoolean ifFalse:['anObject'] ifTrue:['aCollection']),'
	',propertyName,':=',(isManyBoolean ifFalse:['anObject'] ifTrue:['aCollection']).
	
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	isManyBoolean ifTrue:[
		self addPropertyInitialize: aSymbol .
		].
]

{ #category : #'generation-initialize' }
ASTCGenerator >> addClassInitialize [
	self addClassInitializeOn:currentClass
	
]

{ #category : #'generation-initialize' }
ASTCGenerator >> addClassInitializeOn: aClass [
	| methodBody methodstoCall|
	methodstoCall := aClass selectors select:[:selector| 'initialize*' match:selector ]. 
	
	methodstoCall ifEmpty:[^self].
	
	methodBody :=String streamContents: [:s | 
		s nextPutAll:'initialize
	super initialize.
'.
		methodstoCall do: [:method | s nextPutAll:'	self ' ;nextPutAll: method; nextPutAll:'.' ] 
	].
	
	self addMethod: methodBody on: aClass withProtocol: 'initialize'.
	
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addCurrentClassVisitToAbstractVisitor [
	^self addMethod: (self visitClassSignatureFor: currentClass asString withPrefix: 'visit' ) 
		  on: astVisitorClass 
		  withProtocol:'visiting'
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addCurrentClassVisitToPrinterVisitor [
	self addCurrentClassVisitToPrinterVisitorOn: currentClass.
	
	
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addCurrentClassVisitToPrinterVisitorOn: aClass [
	| methodBody |
	methodBody:=(self visitClassSignatureFor: aClass asString withPrefix: 'visit'),'
	Transcript cr.
	self printTabCount: currentDepth.
	Transcript show:''(', (self aClassAsVariable: aClass asString),'''.
	currentDepth:=currentDepth+1.
	
	super visit',aClass asString,':', (self aClassAsVariable:aClass asString),'.
	
	currentDepth:=currentDepth-1.
	Transcript show:'')''.
'.
	self addMethod: methodBody on: astPrinterVisitor withProtocol: 'visiting'.	
	
]

{ #category : #'creation-system' }
ASTCGenerator >> addMethod: aBodyAsString on: aClass withProtocol: aProtocolAsString [

	aClass compile: aBodyAsString classified: aProtocolAsString
]

{ #category : #'generating-attributes' }
ASTCGenerator >> addProperty: aString isMany: isManyBoolean [
	self addProperty:aString isMany: isManyBoolean isProperty:false.
	
]

{ #category : #'generating-attributes' }
ASTCGenerator >> addProperty: aString isMany: isManyBoolean isProperty:isPropertyBoolean [
	(currentClass allSlots
		anySatisfy: [ :each | each name = aString ])
		ifTrue: [ ^ self ].	"we check if the slot already exists"

	currentClass addInstVarNamed: aString.

	self addAccessors: aString isMany: isManyBoolean isProperty:isPropertyBoolean.
	self addWalkerProperty: aString for: currentClass  isMany: isManyBoolean isProperty:isPropertyBoolean
]

{ #category : #'generation-initialize' }
ASTCGenerator >> addPropertyInitialize: aPropertyAsSymbol [
	self addPropertyInitialize:  aPropertyAsSymbol On: currentClass.
]

{ #category : #'generation-initialize' }
ASTCGenerator >> addPropertyInitialize: aSymbol On: aClass [
	| methodBody propertyName |
	
	propertyName:= aSymbol asString.
	
	methodBody :=
'initialize',propertyName asCamelCase ,'
	',propertyName,':=',collectionsType asString,' new.'.

	
	self addMethod: methodBody on: aClass withProtocol: 'initialize'.
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addVisitor [
	self addCurrentClassVisitToAbstractVisitor.
	self addAcceptMethodOn:currentClass.
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addWalkerMethodFor: aClass [ 
	| methodBody methodstoCall pattern className|
	
	className:=aClass asString.
	pattern:='walk',className,'*'.
	methodstoCall := astWalkerVisitorClass selectors select:[:selector| pattern match:selector ]. 
	
	methodstoCall ifEmpty:[^self].

	methodBody :=String streamContents: [:s | 
		s nextPutAll:(self visitClassSignatureFor: className withPrefix:'walk'); nextPutAll:'
	'.
		methodstoCall do: [:method |
			s nextPutAll: 'self ';
			  nextPutAll:method;
			  nextPutAll: (self aClassAsVariable: aClass asString);
			nextPutAll:'.
	'.] 
	].
	
	self addMethod: methodBody on: astWalkerVisitorClass  withProtocol: 'visiting'.
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addWalkerProperty:aPropertyName for: aClass isMany:isManyBoolean isProperty: isPropertyBoolean [
	| methodBody className |
	self flag:#changeName."change the name of the iterator to feel less generic"
	
	className:=aClass asString.
	methodBody:='walk',className,aPropertyName capitalized,':',(self aClassAsVariable:className),'
  '.

	isPropertyBoolean ifFalse:[
		methodBody:=methodBody,'^',(self aClassAsVariable: className),' ',aPropertyName.
		methodBody:=methodBody,(isManyBoolean ifTrue:[' do:[:child| child acceptVisitor:self].']
				     ifFalse:[' acceptVisitor:self.']).
				].
	
	self addMethod: methodBody on: astWalkerVisitorClass withProtocol: 'walking'
	
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addWalkingOverride [
	self addWalkingOverrideFor:currentClass.
]

{ #category : #'generation-visitor' }
ASTCGenerator >> addWalkingOverrideFor: aClass [
	| methodBody className|
	
	className:=aClass asString.

	methodBody :=String streamContents: [:s | 
		s nextPutAll:(self visitClassSignatureFor: className withPrefix:'visit'); nextPutAll:'
	'.
		s 	nextPutAll:'self walk';
			nextPutAll:className;
			nextPutAll:': ';
			nextPutAll: (self aClassAsVariable: className);
			nextPutAll:'.
			'.
	].
	
	self addMethod: methodBody on: astWalkerVisitorClass  withProtocol: 'visiting'.
]

{ #category : #actions }
ASTCGenerator >> clean [
	"remove the package created by a previous generation, and the contained classes"
	
	self removePackageNamed:packageName.
]

{ #category : #'creation-system' }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString [
	^self createClass:classNameAsSymbol superclass:superclassAsString withIVs:''.
]

{ #category : #'creation-system' }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs [
	^(ShSmalltalkGlobalsEnvironment new classNamed: superclassAsString ifAbsent:Object)
		subclass: classNameAsSymbol
		instanceVariableNames: aStringOfIVs
		classVariableNames: ''
		package: self packageName
		
]

{ #category : #actions }
ASTCGenerator >> generate [
	"recreate a clean package, and generate the classes"
	self clean.
	self makePackage.
	self generateVisitorsClasses.
	
	builder acceptVisitor:self.
	
]

{ #category : #'generation-visitor' }
ASTCGenerator >> generateVisitorsClasses [
	| previousClassSymbol classSymbol |
	
	previousClassSymbol := #Object.
	classSymbol:= (self prefix,'Visitor') asSymbol.
	astVisitorClass := self createClass: classSymbol superclass:previousClassSymbol.
	
	previousClassSymbol := classSymbol.
	classSymbol:=(self prefix,'WalkerVisitor') asSymbol.	
	astWalkerVisitorClass := self createClass: classSymbol superclass:previousClassSymbol.

	previousClassSymbol := classSymbol.
	classSymbol:=(self prefix,'PrinterVisitor') asSymbol.
	astPrinterVisitor := self createClass: classSymbol superclass:previousClassSymbol withIVs: 'currentDepth'.
	self addMethod: 'initialize
	currentDepth:=0.' on: astPrinterVisitor withProtocol: 'initialization'.
	#self flag:#refactor."should go through streams"
	self addMethod: 'printTabCount: aNumber
		1 to: aNumber do:[:i| Transcript tab.]' on: astPrinterVisitor withProtocol:'printing'.
	
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

{ #category : #accessing }
ASTCGenerator >> parentPropertyName [
	^parentPropertyName
	
]

{ #category : #accessing }
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
	
	self addCurrentClassVisitToAbstractVisitor.
	self addVisitor.
	self addClassInitialize.
	self addWalkerMethodFor: currentClass.
	self addWalkingOverride.
	self addCurrentClassVisitToPrinterVisitor.

]

{ #category : #'name-formating' }
ASTCGenerator >> visitClassSignatureFor: aClassNameAsString withPrefix: aPrefix [
	^String streamContents:[:s|
		s nextPutAll:aPrefix;
		nextPutAll: aClassNameAsString;
		nextPutAll:': ';
		nextPutAll: (self aClassAsVariable: aClassNameAsString).
		].
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
	self addProperty:aTypedProperty name isMany: false isProperty:true.
	
]
