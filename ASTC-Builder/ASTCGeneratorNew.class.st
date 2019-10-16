"
I represent a generator for an AST (for the C language)

I visit a FamixMetamodelGenerator and generate classes and their content.

I interact with an AST Builder (here ASTCBuilder), and use it's informations for my generation.



For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- #generate  ""Generate the project described in ASTCBuilder'
- #generate (Class Side) ""shortcut for previous message""

-For developers:
	#visitSomething: ""Walked visit by the order defined in FmxMBWalkerVisitor. Everything starts from there.""

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	astPrinterVisitor:		<Class> ""keep a reference for the astPrinterVisitor class we're generating throughout the visit""
	astVisitorClass:		<Class> ""keep a reference for the astVisitorClass class we're generating throughout the visit""
	astWalkerVisitorClass:		<Class> ""keep a reference for the astWalkerVisitor class we're generating throughout the visit""
	builder:		<FamixMetamodelGenerator> ""refer to the visited builder""
	collectionsType:		<Class> ""Configuration attributes. Defines what class of collections the aggregations will be transformed to.""
	currentClass:		<Class> ""Which class we're currently visinting, while visiting properties and relationShipSide""
	packageName:		<String>	""package defined in the builder""
	parentPropertyName:		<String> ""configuration attribute. Name of the attribute parent in #Node in the generation""
	prefix:		<String> ""prefix defined in the builder""


    Implementation Points
"
Class {
	#name : #ASTCGeneratorNew,
	#superclass : #Object,
	#traits : 'PackageManagementTrait',
	#classTraits : 'PackageManagementTrait classTrait',
	#instVars : [
		'packageName',
		'prefix',
		'builder',
		'parentPropertyName',
		'abstractVisitorClass',
		'collectionsType',
		'walkerVisitorClass',
		'printerVisitorClass',
		'debugStructureVisitorClass',
		'structureValidatorVisitorClass',
		'superclassVisitorClass',
		'debug'
	],
	#category : #'ASTC-Builder'
}

{ #category : #generating }
ASTCGeneratorNew class >> generate [ 
	^self new generate.
]

{ #category : #'generating-support' }
ASTCGeneratorNew >> addAcceptVisitorOf: aFMXClass [
	| method visitClass |
	visitClass := aFMXClass name asVisitClassSelector.
	method := 'acceptVisitor:' asMethodWithBody: [:aVisitor| aVisitor visitClass: {self} ].

	self
		addMethod: method asString
		on: aFMXClass realClass
		withProtocol: 'testing'
]

{ #category : #'generation-testing' }
ASTCGeneratorNew >> addAllClassTesterTo: aRootClass [
	builder classes
		do: [ :aClass | 
			aClass ~= aRootClass
				ifTrue: [ self addClassTesterFor: aClass on: aRootClass returning: false ] ]
]

{ #category : #'generation-testing' }
ASTCGeneratorNew >> addClassTesterFor: aFMXClass on: aTargetFMXClass returning: aBoolean [
	| methodBody isClass |
	isClass := aFMXClass name asTesterSelector.
	methodBody := aBoolean "PlainPharoCode limitation. Should be changed when it'll work well."
		ifTrue: [ isClass asMethodWithBody: [ ^ true ] ]
		ifFalse: [ isClass asMethodWithBody: [ ^ false ] ].
	self
		addMethod: methodBody asString
		on: aTargetFMXClass realClass
		withProtocol: 'testing'
]

{ #category : #'generation-testing' }
ASTCGeneratorNew >> addClassTesterOn: aFMXClass [
	self addClassTesterFor: aFMXClass on: aFMXClass returning: true
]

{ #category : #'generation-testing' }
ASTCGeneratorNew >> addComparisonOn: aFMXClass [
	| method body aClass visitClass propertyName |
	aClass := aFMXClass name asAnInstance.

	visitClass :=  aFMXClass name asVisitClassSelector.
	body :=[:anInstance| ] asPlainCodeBC.
	
	aFMXClass classGeneralization ifNotNil:[:aSuper|
		body + [ :anInstance | super = anInstance  ifFalse:[ ^ false ] ].
		].

	aFMXClass properties do:[:aProperty|
		aProperty isTypedProperty ifTrue:[
			propertyName := aProperty name.
			body + [:anInstance| propertyName = anInstance propertyName ifFalse:[ ^ false ]]
			]
		].

	aFMXClass relations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[ 
			propertyName := aRelation side name.
			body + [:anInstance| propertyName = anInstance propertyName ifFalse:[ ^ false ]]
		]].
	
	body + [ ^true ].
						
	method := '='
		asMethodWithBody: body
		withArguments: {(#anInstance -> aClass )} asDictionary.
	
	^ self
		addMethod: method asString
		on: aFMXClass realClass
		withProtocol: 'testing'
]

{ #category : #'generation-state' }
ASTCGeneratorNew >> addInitializeTo: aFMXClass [
	| collectionsToInitialize method |
	
	collectionsToInitialize := (aFMXClass relations 
		select: [:aRelation| aRelation side otherSide isContainer and:[ aRelation side isMany ]] 
		thenCollect:[:aRelation| aRelation side name]) asArray.
	
	collectionsToInitialize ifEmpty:[ ^ self ].
	
	method := 'initialize' asMethodWithBody: [ collectionsToInitialize := collectionsType new ].
	
	self addMethod: method asString on: aFMXClass realClass withProtocol: 'accessing'.
]

{ #category : #'generation-state' }
ASTCGeneratorNew >> addInstanceVariable: aProperty to: aClass [
	(aClass allSlots anySatisfy: [ :each | each name = aProperty name ])
		ifTrue: [ ^ self ].	"we check if the slot already exists"

	debug
		ifTrue: [ Transcript
				show: 'property: ';
				show: aProperty;
				cr ].

	aClass addInstVarNamed: aProperty name.
	self addInstanceVariableAccessors: aProperty to: aClass
]

{ #category : #'generation-state' }
ASTCGeneratorNew >> addInstanceVariableAccessors: aProperty to: aClass [
	| propertyName  aPropertyName method methodName anElement |
	
	propertyName := aProperty name.
	aPropertyName := (aProperty isRelationSide and:[ aProperty isMany ]) 
		ifTrue: [ aProperty otherSide relatedClass name asAnInstance: aProperty isMany ]
		ifFalse: [ propertyName asAnInstance ].
	"getter"
	method := propertyName asMethodWithBody: 
				[ ^ propertyName ].
	self addMethod: method asString on: aClass withProtocol: 'accessing'.

	"setter"
	methodName := propertyName,':'. " aProperty: "
	method := methodName asMethodWithBody:
		((aProperty isTypedProperty ifTrue:[[]]
		ifFalse:[
			aProperty isMany
			ifTrue:[ [ aPropertyName do:[:each| each parent: self]]]
			ifFalse:[	[ aPropertyName parent: self ]]]) +
		[:anInstance | propertyName := aPropertyName ])
		withArguments:{ #anInstance -> aPropertyName } asDictionary.
	self addMethod: method asString on: aClass withProtocol: 'accessing'.

	(aProperty isRelationSide and: [ aProperty isMany ])
	ifFalse:[ ^self ].

	self flag:#improvement. "Needs to be better to go from plural to singular"
	anElement := ((propertyName first isVowel ifTrue:[ 'an' ] ifFalse:[ 'a' ]) , propertyName capitalized) removeSuffix:'s'. "aProperty from propertys (not a typo..)"
	methodName := 'add' , (propertyName capitalized removeSuffix:'s') , ':'. " addProperty: "
	method :=	 methodName asMethodWithBody: 
		[:anElem| 
		anElem parent: self.
		propertyName add: anElem ] 
		withArguments: { #anElem -> anElement } asDictionary.
	self addMethod: method asString on: aClass withProtocol: 'accessing'.

]

{ #category : #'generation-state' }
ASTCGeneratorNew >> addInstanceVariablesTo: aFMXClass [
	aFMXClass properties
		do: [ :aProperty | 
			(aProperty isTypedProperty
				or: [ aProperty isRelationSide and: [ aProperty isContainer not ] ])
				ifTrue: [ self addInstanceVariable: aProperty to: aFMXClass realClass ].
			 ]
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> addMethod: aBodyAsString on: aClass withProtocol: aProtocolAsString [
	"Shortcut to a system method, in case it changes."
	aClass compile: aBodyAsString classified: aProtocolAsString
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> addPrinterVisitorsMethods [
	"Add necessary methods for PrinterVisitor : #initialize / #printTabCount: / #stream / #toTranscript / #printOn:"
	| method 
		stream currentDepth | "instance variables of printerVisitor"
		
	method := 'initialize' asMethodWithBody: 
		[ stream := String new writeStream.
			currentDepth:=0 ].
	self addMethod: method asString on: printerVisitorClass withProtocol: 'initialization'.
	
			
	method := 'printTabCount:' asMethodWithBody: 
		[:aNumber| aNumber timesRepeat:[:i| stream tab.] ].
	self addMethod: method asString on: printerVisitorClass withProtocol:'printing'.
	
	method := 'printTabCount:' asMethodWithBody: 
		[:aNumber| aNumber timesRepeat:[:i| stream tab.] ].
	self addMethod: method asString on: printerVisitorClass withProtocol:'printing'.

	method := 'stream' asMethodWithBody: 
		[ ^ stream ].
	self addMethod: method asString on: printerVisitorClass  withProtocol: 'accessing'.

	method := 'printOn:' asMethodWithBody: [:aStream| aStream << stream contents ].
	self addMethod: method asString on: printerVisitorClass withProtocol:'printing'.
	
	method := 'toTranscript' asMethodWithBody: 
	[ Transcript show:self ; cr ].
	self addMethod: method asString on: printerVisitorClass withProtocol:'printing'.
	
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> addStructureValidatorVisitorMethods [	
	| errors method |
	method := 'initialize' asMethodWithBody: [ errors := 0 ].
	self addMethod: method asString on: structureValidatorVisitorClass  withProtocol: 'initialization'.

	method := 'errors' asMethodWithBody: [ ^errors ].		
	self addMethod:'errors
	^errors' on: structureValidatorVisitorClass withProtocol: 'accessing'.

	method := 'isValidAst' asMethodWithBody: [ ^errors=0 ].
	self addMethod: method asString on: structureValidatorVisitorClass withProtocol: 'testing'.

]

{ #category : #actions }
ASTCGeneratorNew >> clean [
	"remove the package created by a previous generation, and the contained classes"
	
	self removePackageNamed:packageName.
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> createClass: classNameAsSymbol superclass: superclassAsString [
	"shortcut for classes with no IVs."
	^self createClass:classNameAsSymbol superclass:superclassAsString withIVs:'' withTag: ''.
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs [
	self createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs	withTag:''.
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs withTag: aTag [
	"indirection for class creation, in case that changes."
	^(self class environment classNamed: superclassAsString)
		subclass: classNameAsSymbol
		instanceVariableNames: aStringOfIVs
		classVariableNames: ''
		package: (self makePackageNameWith:aTag)
		
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> createClass: classNameAsSymbol superclass: superclassAsString withTag: aTag [
	"shortcut for classes with no IVs."
	^self createClass:classNameAsSymbol superclass:superclassAsString withIVs:'' withTag: aTag.
]

{ #category : #'name-formating' }
ASTCGeneratorNew >> fullNameOf: aSymbol [
	^ prefix , aSymbol
]

{ #category : #actions }
ASTCGeneratorNew >> generate [
	"Warning signal: (String streamContents:[:s| s << 'You''re about to delete everything in ' << packageName << '. Make sure you saved everything depending on it (extensions, class references,  [...]) .' ])."
		
	self preGen.	
	builder classes do:[:aFMXClass| self generateClass: aFMXClass ].
	self postGen.
	
	"reload packages that depends on the generated code"
	self reloadExtentions.
]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateAbstractVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method className |
	className := aFMXClass name.
	method := (className asVisitClassSelector)
		asMethodWithBody: [ :anInstance | ]
		withArguments:
			{#anInstance ->
			className asAnInstance} asDictionary.
	^ self addMethod: method asString on: abstractVisitorClass withProtocol: 'visiting'
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generateAbstractVisitorClass [
	"Abstract --> Object"
	abstractVisitorClass := Object subclass: (self fullNameOf: #Visitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
]

{ #category : #'generation-system' }
ASTCGeneratorNew >> generateClass: aFMXClass [

	| superClass |
	debug ifTrue:[
		(aFMXClass fullName asString , ' --|> ' , (aFMXClass classGeneralization ifNotNil:[:aCg| aCg fullName] ifNil:['Object'])) logCr.
		].

	superClass := aFMXClass classGeneralization ifNil: Object ifNotNil:[:aFMXSuperClass| aFMXSuperClass realClass ]. "we get a symbol of the Superclass"	

	superClass subclass: aFMXClass fullName
	instanceVariableNames: ''
	classVariableNames: ''
	package: packageName , '-Nodes' .

	self generateStateFor: aFMXClass.
	self generateMethodsFor: aFMXClass.
	self generateVisitsFor: aFMXClass.

]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generateDebugStructureVisitorClass [
	"DebugStructure --|> Walker"
	debugStructureVisitorClass :=  walkerVisitorClass subclass: (self fullNameOf: #DebugStructureVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	

]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateDebugVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method body anInstance visitClass collections singleElements propertyName isType |
	anInstance := aFMXClass name asAnInstance.

	visitClass :=  aFMXClass name asVisitClassSelector.
	body := [ :aClass | super visitClass: {aClass} ] asPlainCodeBC.

	collections := OrderedCollection new.
	singleElements := OrderedCollection new.
	
	aFMXClass relations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[ aRelation side isMany 
			ifTrue:[ collections add: aRelation side ] 
			ifFalse: [ singleElements add: aRelation side ]]].
	
	(collections isEmpty and:[singleElements isEmpty]) ifTrue:[ ^ self].
	
	collections do:[:relationSide|
		propertyName := relationSide name.
		isType := String streamContents:[:s| s << 'is' << relationSide otherSide relatedClass name ].
		body add: [:aClass | aClass propertyName 
			ifNotNil:[:aCollection | 
				aCollection do:[:aMember| self assert: aMember isType]]]
		withArguments: {#aCollection -> propertyName. #aMember -> (propertyName asAnInstance) } asDictionary ].
	"Extended dictionary because of limitation of plainCode."
	singleElements do:[:relationSide|
		propertyName := relationSide name.
		isType := String streamContents:[:s| s << 'is' << relationSide otherSide relatedClass name ].
		body add: [:aClass| aClass propertyName ifNotNil:[:aPropertyName| self assert: aPropertyName isType ]] 
			withArguments: {#aPropertyName -> relationSide name asAnInstance } asDictionary ].
						
	method := visitClass
		asMethodWithBody: body
		withArguments: {(#aClass -> anInstance )} asDictionary.
		
	^ self
		addMethod: method asString
		on: debugStructureVisitorClass
		withProtocol: 'visiting'  
]

{ #category : #'generation-system' }
ASTCGeneratorNew >> generateMethodsFor: aFMXClass [
	self addClassTesterOn: aFMXClass.
	self addComparisonOn: aFMXClass.
	self addAcceptVisitorOf: aFMXClass
]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generatePrinterVisit: aFMXClass [
	"generate a #printProperties selector that will call every property asString"
	"The result will keep the order of the definitions in the metamodel"
	| methodBody visitSomething stream currentDepth aClassWithQuotes aClass propertiesNames |
	aClass := aFMXClass name asAnInstance.
	aClassWithQuotes:= '''',aClass,''''.
	visitSomething := aFMXClass name asVisitClassSelector.

	propertiesNames := aFMXClass properties select: [:aProp| aProp isTypedProperty ] thenCollect:#name.

	methodBody := visitSomething asMethodWithBody:[:anInstance|
		stream cr.

		self printTabCount: currentDepth.
		stream << $( << aClassWithQuotes .
		stream << anInstance propertiesNames.
		
		currentDepth := currentDepth+1.
		super visitSomething:{aClass}.
		currentDepth := currentDepth-1.
		stream << ')'.
	] withArguments: {#anInstance -> aClass} asDictionary.
	self addMethod: methodBody asString on: printerVisitorClass withProtocol: 'visiting'.	
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generatePrinterVisitorClass [
	"Printer --|> Walker"
	printerVisitorClass  :=  walkerVisitorClass subclass: (self fullNameOf: #PrinterVisitor)
		instanceVariableNames: 'currentDepth stream'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addPrinterVisitorsMethods.
]

{ #category : #'generation-state' }
ASTCGeneratorNew >> generateStateFor: aFMXClass [
	self addInstanceVariablesTo: aFMXClass.
	self addInitializeTo: aFMXClass.
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generateStructureValidatorVisitorClass [
	"StructureValidator --|> DebugStructure"
	structureValidatorVisitorClass := debugStructureVisitorClass subclass: (self fullNameOf: #StructureValidatorVisitor)
		instanceVariableNames: 'errors'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addStructureValidatorVisitorMethods

]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateSuperclassVisitOf: aFMXClass [
	"add an empty behavior visit method"
	| method className superclassName methodSelector superMethodSelector |
	
	superclassName := aFMXClass classGeneralization ifNotNil:[:aSuperClass| aSuperClass name] ifNil:[ ^self ]."No need to override"
	superMethodSelector := superclassName asVisitClassSelector.
	
	className := aFMXClass name.
	methodSelector := (className asVisitClassSelector).
		
	method := methodSelector
		asMethodWithBody: [ :anInstance | ^ self superMethodSelector: {anInstance}  ]
		withArguments:
			{#anInstance ->
			className asAnInstance} asDictionary.
	^ self addMethod: method asString on: superclassVisitorClass withProtocol: 'visiting'
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generateSuperclassVisitorClass [
	"superclass --> Abstract"
	superclassVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #SuperclassVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateValidatorVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method body anInstance visitClass 
	errors | "IV of the visitor"
	anInstance := aFMXClass name asAnInstance.


	visitClass :=  aFMXClass name asVisitClassSelector.
	body := [ :aClass | 
		[ super visitClass: {aClass} ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]
		].
	
			
		method := visitClass
		asMethodWithBody: body
		withArguments: {(#aClass -> anInstance )} asDictionary.
		
	^ self
		addMethod: method asString
		on: structureValidatorVisitorClass
		withProtocol: 'visiting'  
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generateVisitorsClasses [
	self generateAbstractVisitorClass.
		self generateSuperclassVisitorClass.
			self generateWalkerVisitorClass.
				self generatePrinterVisitorClass.
				self generateDebugStructureVisitorClass.
					self generateStructureValidatorVisitorClass.

]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateVisitsFor: aFMXClass [
	self generateAbstractVisitOf: aFMXClass.
		self generateSuperclassVisitOf: aFMXClass.
			self generateWalkVisitOf: aFMXClass.
				self generateDebugVisitOf: aFMXClass.
					self generateValidatorVisitOf: aFMXClass.
				self generatePrinterVisit: aFMXClass.

]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateWalkVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method body aClass visitClass collections singleElements |
	aClass := aFMXClass name asAnInstance.

	visitClass :=  aFMXClass name asVisitClassSelector.
	body := [ :anInstance | super visitClass: {aClass} ] asPlainCodeBC.
	
	collections := OrderedCollection new.
	singleElements := OrderedCollection new.
	aFMXClass relations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[ aRelation side isMany 
			ifTrue:[ collections add: aRelation side name ] 
			ifFalse: [ singleElements add: aRelation side name ]]].
	
	collections do:[:propertyName|
		body add: [:anInstance| anInstance propertyName
			ifNotNil:[:aCollection| aCollection 
				do:[:aMember| aMember acceptVisitor: self ]]]
		withArguments: {#aCollection -> propertyName . #aMember -> propertyName asAnInstance } asDictionary ].
	
	singleElements do:[:propertyName|
		body add: [:anInstance| anInstance propertyName 
					ifNotNil:[:aPropertyName| aPropertyName acceptVisitor: self ] ] 
			withArguments: {#aPropertyName -> propertyName asAnInstance } asDictionary ].


						
	method := visitClass
		asMethodWithBody: body
		withArguments: {(#anInstance -> aClass )} asDictionary.

	^ self
		addMethod: method asString
		on: walkerVisitorClass
		withProtocol: 'visiting'
]

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generateWalkerVisitorClass [
	"Walker --> Superclass"
	walkerVisitorClass := superclassVisitorClass subclass: (self fullNameOf: #WalkerVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)

]

{ #category : #initialization }
ASTCGeneratorNew >> initialize [
	| builderClass |
	self flag:#ModularityNeeded. "ASTCBuilder shouldn't be hardcoded, but an argument. Stays that way for developpement speed."
	self flag:#todo. "Modularity on collections used"
	self flag:#toRemove. "remove the Transcript clear, it's just for development."
	
	Transcript clear.
	debug := false.
	super initialize.
	
	self initializeDefault.
	builderClass:=ASTCBuilder.
	
	builder:=builderClass builderWithDefinitions.	
	prefix:= builderClass prefix.
	packageName:=builderClass packageName.
]

{ #category : #initialization }
ASTCGeneratorNew >> initializeDefault [
	parentPropertyName := 'parent'.
	collectionsType := #OrderedCollection.
]

{ #category : #actions }
ASTCGeneratorNew >> makePackage [
	"Create the package for the generated classes"
	self addPackageNamed: packageName.
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> makePackageNameWith: aTag [
	^ String
		streamContents: [ :s | 
			s << packageName.
			aTag ifNotEmpty: [ :tag | s << $- << aTag ] ]
]

{ #category : #accessing }
ASTCGeneratorNew >> packageName [
	"simple accessor"
	^packageName
	
]

{ #category : #accessing }
ASTCGeneratorNew >> packageName: aString [
	"simple accessor"
	packageName:=aString.
	^aString
	
]

{ #category : #accessing }
ASTCGeneratorNew >> parentPropertyName [
	"simple accessor"
	^parentPropertyName
	
]

{ #category : #accessing }
ASTCGeneratorNew >> parentPropertyName: aString [
	"simple accessor"
	parentPropertyName:=aString.
	^aString
	
]

{ #category : #actions }
ASTCGeneratorNew >> postGen [
	| rootClass |
	rootClass := builder classes detect: [:aClass| aClass name = #Node ]."pretty bad, but it'll do for now."
	self addAllClassTesterTo: rootClass .
]

{ #category : #actions }
ASTCGeneratorNew >> preGen [
	"recreate a clean package, and generate the classes"
	self clean.
	self makePackage.
	self generateVisitorsClasses.

]

{ #category : #accessing }
ASTCGeneratorNew >> prefix [
	"simple accessor"
	^prefix
	
	
]

{ #category : #accessing }
ASTCGeneratorNew >> prefix: aString [
	"simple accessor"
	prefix:=aString.
	^aString
	
]

{ #category : #actions }
ASTCGeneratorNew >> reloadExtentions [
	| icebergRepo listOfPackageNameToReload listOfPackageToReload |
	
	icebergRepo := IceRepository registry detect:[:aRepository| aRepository name uncapitalized = 'astc' or:[aRepository name uncapitalized = 'illicium'] ].

	listOfPackageNameToReload:= OrderedCollection new.
	listOfPackageNameToReload 
		add: 'ASTC-Gen-Extensions';
		add: 'ASTC-Kernel';
		add: 'ASTC-Translation';
		add: 'ASTC-Translation-Tests';
		add: 'ASTC-VisitorsASTC' ;
		add: 'ASTC-VisitorsASTC-Tests';
		add: 'ASTC-VisitorsRB' ;
		add: 'ASTC-VisitorsRB-Tests'.
		
	listOfPackageToReload:= OrderedCollection new.

	listOfPackageNameToReload do:[:aPackageName| 
		icebergRepo loadedPackages do:[:aPackage|
			aPackageName = aPackage name ifTrue:[listOfPackageToReload add: aPackage] ]
		].

	listOfPackageToReload do:[:aPackage| aPackage reload.].
]
