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
	self flag:#rename.
	^(aClassNameAsString first isVowel ifTrue:['an']ifFalse:['a']),aClassNameAsString capitalized.
]

{ #category : #'generating-visitor' }
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
	| methodBody propertyName variableName |
	
	propertyName:=aSymbol asString.
	"getter"
	methodBody :=
propertyName,'
	^',propertyName.
		
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	"setter"	
	variableName:=isManyBoolean ifFalse:['anObject'] ifTrue:['aCollection'].
	methodBody :=
propertyName,': ', variableName,'
	',propertyName,':=',variableName,'.
	',((isPropertyBoolean or:['parent' match:propertyName]) ifFalse:[
		variableName,' parent:self.
	'
		]ifTrue:['']
	),
	'^',variableName,'.'.
	
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	isManyBoolean ifTrue:[
		self addPropertyInitialize: aSymbol .
		].
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addClassInitialize [
	self addClassInitializeOn:currentClass
	
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addClassInitializeOn: aClass [
	| methodBody methodstoCall|
	self flag:#duplication."duplication with printer/walker"
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

{ #category : #'generating-visitor' }
ASTCGenerator >> addCurrentClassVisitToAbstractVisitor [
	^self addMethod: (self methodClassSignatureFor: currentClass asString withPrefix: 'visit' ) 
		  on: astVisitorClass 
		  withProtocol:'visiting'
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addCurrentClassVisitToPrinterVisitor [
	self addCurrentClassVisitToPrinterVisitorOn: currentClass.
	
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addCurrentClassVisitToPrinterVisitorOn: aClass [
	| methodBody |
	methodBody:=(self methodClassSignatureFor: aClass asString withPrefix: 'visit'),'
	stream nextPutAll:''
''.
	self printTabCount: currentDepth.
	stream nextPutAll:''(', (self aClassAsVariable: aClass asString),'''.
	stream <<(',(self aClassAsVariable: aClass asString),' printProperties).
	currentDepth:=currentDepth+1.
	
	super visit',aClass asString,':', (self aClassAsVariable:aClass asString),'.
	
	currentDepth:=currentDepth-1.
	stream nextPutAll:'')''.
'.
	self addMethod: methodBody on: astPrinterVisitor withProtocol: 'visiting'.	
	
]

{ #category : #'creation-system' }
ASTCGenerator >> addMethod: aBodyAsString on: aClass withProtocol: aProtocolAsString [

	aClass compile: aBodyAsString classified: aProtocolAsString
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrintPropertiesOn: aClass [
	| methodBody methodstoCall|
	self flag:#duplication."duplication with initialize/walker"
	methodstoCall := aClass selectors select:[:selector| '*AsString' match:selector ]. 

	methodBody:='printProperties
	'.	

	methodBody := methodBody,
		(methodstoCall 
			ifEmpty:['^''''']
			ifNotEmpty:[	
			(String streamContents: [:s | 
		s <<'^String streamContents:[:s |
	'.
	methodstoCall do: [:method | s <<'s << '' '' << self ' ;<< method; <<'.'. ] separatedBy:[s cr;tab.].
	s<<'].'.
		]).
	]).
	
	self addMethod: methodBody on: aClass withProtocol: 'print'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterProperties [
	self addPrintPropertiesOn: currentClass.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterProperty: aProperty [
	^self addPrinterProperty: aProperty on: currentClass.
	
	
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterProperty: aProperty on: aClass [
	| methodBody |
	methodBody:=
aProperty,'AsString
	^',aProperty asString,' asString.'.
	
	self addMethod: methodBody on: aClass withProtocol: 'printing'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterVisitorsMethods [
	self addMethod: 'initialize
	stream := String new writeStream.
	currentDepth:=0.' on: astPrinterVisitor withProtocol: 'initialization'.
	self addMethod: 'printTabCount: aNumber
		1 to: aNumber do:[:i| stream tab.]' on: astPrinterVisitor withProtocol:'printing'.
	self addMethod: 'stream
	^stream' on:astPrinterVisitor  withProtocol: 'accessing'.
	self addMethod:'printOn:aStream
	^aStream nextPutAll: self stream contents.' on:astPrinterVisitor withProtocol:'printing'.
	self addMethod:'toTranscript
	Transcript show:self ;cr.' on:astPrinterVisitor withProtocol:'printing'.
	
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
	self addWalkerProperty: aString for: currentClass  isMany: isManyBoolean isProperty:isPropertyBoolean.
	isPropertyBoolean ifTrue:[
		self addPrinterProperty: aString.
	]
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addPropertyInitialize: aPropertyAsSymbol [
	self addPropertyInitialize:  aPropertyAsSymbol On: currentClass.
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addPropertyInitialize: aSymbol On: aClass [
	| methodBody propertyName |
	
	propertyName:= aSymbol asString.
	
	methodBody :=
'initialize',propertyName asCamelCase ,'
	',propertyName,':=',collectionsType asString,' new parent:self; yourself.'.

	
	self addMethod: methodBody on: aClass withProtocol: 'initialize'.
]

{ #category : #'generating-visitor' }
ASTCGenerator >> addVisitor [
	self addCurrentClassVisitToAbstractVisitor.
	self addAcceptMethodOn:currentClass.
]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkerMethodFor: aClass [ 
	| methodBody methodstoCall pattern className|
	self flag:#duplication."duplication with initialize/printer"
	
	className:=aClass asString.
	pattern:='walk',className,'*'.
	methodstoCall := astWalkerVisitorClass selectors select:[:selector| pattern match:selector ]. 
	
	methodstoCall ifEmpty:[^self].

	methodBody :=String streamContents: [:s | 
		s nextPutAll:(self methodClassSignatureFor: className withPrefix:'walk'); nextPutAll:'
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

{ #category : #'generating-visitor-walker' }
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

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkingOverride [
	self addWalkingOverrideFor:currentClass.
]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkingOverrideFor: aClass [
	| methodBody className|
	
	className:=aClass asString.

	methodBody :=String streamContents: [:s | 
		s nextPutAll:(self methodClassSignatureFor: className withPrefix:'visit'); nextPutAll:'
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

{ #category : #'generating-visitor' }
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
	astPrinterVisitor := self createClass: classSymbol superclass:previousClassSymbol withIVs: 'currentDepth stream'.
	self addPrinterVisitorsMethods.
	
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

{ #category : #'name-formating' }
ASTCGenerator >> methodClassSignatureFor: aClassNameAsString withPrefix: aPrefix [
	^String streamContents:[:s|
		s nextPutAll:aPrefix;
		nextPutAll: aClassNameAsString capitalized;
		nextPutAll:': ';
		nextPutAll: (self aClassAsVariable: aClassNameAsString).
		].
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
	self addPrinterProperties.

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
