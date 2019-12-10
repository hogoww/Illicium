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
	#name : #ASTCGenerator,
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
		'hierarchyWalkerVisitorClass',
		'printerVisitorClass',
		'debugStructureVisitorClass',
		'structureValidatorVisitorClass',
		'superclassVisitorClass',
		'debug'
	],
	#category : #'ASTC-Builder'
}

{ #category : #generating }
ASTCGenerator class >> generate [ 
	^self new generate.
]

{ #category : #'generating-support' }
ASTCGenerator >> addAcceptVisitorOf: aFMXClass [
	| method visitClass |
	visitClass := aFMXClass name asVisitClassSelector.
	method := 'acceptVisitor:' asMethodWithBody: [:aVisitor| aVisitor visitClass: {self} ].

	aFMXClass realClass compile: method asString classified: 'testing'
]

{ #category : #'generation-testing' }
ASTCGenerator >> addAllClassTesterTo: aRootClass [
	builder classes
		do: [ :aClass |
			aClass ~= aRootClass
				ifTrue: [ self addClassTesterFor: aClass on: aRootClass returning: false ] ]
]

{ #category : #'generation-testing' }
ASTCGenerator >> addClassTesterFor: aFMXClass on: aTargetFMXClass returning: aBoolean [
	| methodBody isClass |
	isClass := aFMXClass name asTesterSelector.
	self flag: #PPCLiteral.
	methodBody := aBoolean "PlainPharoCode limitation. Should be changed when it'll work well."
		ifTrue: [ isClass asMethodWithBody: [ ^ true ] ]
		ifFalse: [ isClass asMethodWithBody: [ ^ false ] ].

	aTargetFMXClass realClass compile: methodBody asString classified: 'testing'
]

{ #category : #'generation-testing' }
ASTCGenerator >> addClassTesterOn: aFMXClass [
	self addClassTesterFor: aFMXClass on: aFMXClass returning: true
]

{ #category : #'generation-testing' }
ASTCGenerator >> addComparisonOn: aFMXClass [
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
			(#(#pharoNode) includes: propertyName) ifFalse:[
				body + [:anInstance| propertyName = anInstance propertyName ifFalse:[ ^ false ]]
			]]
		].

	aFMXClass relations do:[:aRelation| aRelation side otherSide isContainer 
		ifTrue:[
			propertyName := aRelation side name.
			(#(#parent) includes: propertyName) ifFalse: [ 
			body + [:anInstance| propertyName = anInstance propertyName ifFalse:[ ^ false ]]]
		]].
	
	body + [ ^ true ].
						
	method := '='
		asMethodWithBody: body
		withArguments: {(#anInstance -> aClass )} asDictionary.
	
	aFMXClass realClass compile: method asString classified: 'testing'
]

{ #category : #'generation-state' }
ASTCGenerator >> addInitializeTo: aFMXClass [
	| collectionsToInitialize method |
	
	collectionsToInitialize := (aFMXClass relations 
		select: [:aRelation| aRelation side otherSide isContainer and:[ aRelation side isMany ]] 
		thenCollect:[:aRelation| aRelation side name]) asArray.
	
	collectionsToInitialize ifEmpty:[ ^ self ].
	
	method := 'initialize' asMethodWithBody: [ collectionsToInitialize := collectionsType new ].
	
	aFMXClass realClass compile: method asString classified: 'accessing'
]

{ #category : #'generation-state' }
ASTCGenerator >> addInstanceVariable: aProperty to: aClass [
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
ASTCGenerator >> addInstanceVariableAccessors: aProperty to: aFMXClass [
	| propertyName  aPropertyName method methodName anElement |
	
	propertyName := aProperty name.
	aPropertyName := (aProperty isRelationSide and:[ aProperty isMany ]) 
		ifTrue: [ aProperty otherSide relatedClass name asAnInstance: aProperty isMany ]
		ifFalse: [ propertyName asAnInstance ].
	"getter"
	method := propertyName asMethodWithBody: 
				[ ^ propertyName ].
	aFMXClass realClass compile: method asString classified: 'accessing'.

	"setter"
	methodName := propertyName,':'. " aProperty: "
	method := methodName asMethodWithBody:
		(((aProperty isTypedProperty or:[ aProperty name = #parent ]) ifTrue:[[]]
		ifFalse:[
			aProperty isMany
			ifTrue:[ [ aPropertyName do:[:each| each parent: self]]]
			ifFalse:[	[ aPropertyName parent: self ]]]) +
		[:anInstance | propertyName := aPropertyName ])
		withArguments:{ #anInstance -> aPropertyName } asDictionary.
	
	aFMXClass realClass compile: method asString classified: 'accessing'.

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
	
	aFMXClass realClass compile: method asString classified: 'accessing'

]

{ #category : #'generation-state' }
ASTCGenerator >> addInstanceVariablesTo: aFMXClass [
	aFMXClass properties
		do: [ :aProperty | 
			(aProperty isTypedProperty
				or: [ aProperty isRelationSide and: [ aProperty isContainer not ] ])
				ifTrue: [ self addInstanceVariable: aProperty to: aFMXClass realClass ].
			 ]
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> addPrinterVisitorsMethods [
	"Add necessary methods for PrinterVisitor : #initialize / #printTabCount: / #stream / #toTranscript / #printOn:"
	| method 
		stream currentDepth | "instance variables of printerVisitor"
		
	method := 'initialize' asMethodWithBody: 
		[ stream := String new writeStream.
			currentDepth:=0 ].
	printerVisitorClass compile: method asString classified: 'initialization'.
	
	method := 'printTabCount:' asMethodWithBody: 
		[:aNumber| aNumber timesRepeat:[ stream tab] ].
	printerVisitorClass compile: method asString classified: 'printing'.
	
	method := 'stream' asMethodWithBody: 
		[ ^ stream ].
	printerVisitorClass compile: method asString classified: 'accessing'.

	method := 'printOn:' asMethodWithBody: [:aStream| aStream << stream contents ].
	printerVisitorClass compile: method asString classified: 'printing'.
	
	method := 'toTranscript' asMethodWithBody: 
	[ Transcript show:self ; cr ].
	printerVisitorClass compile: method asString classified: 'printing'.
	
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> addStructureValidatorVisitorMethods [	
	| errors method |
	method := 'initialize' asMethodWithBody: [ errors := 0 ].
	structureValidatorVisitorClass compile: method asString classified: 'initialization'.

	method := 'errors' asMethodWithBody: [ ^ errors ].		
	structureValidatorVisitorClass compile: method asString classified: 'accessing'.

	method := 'isValidAst' asMethodWithBody: [ ^ errors = 0 ].
	structureValidatorVisitorClass compile: method asString classified: 'testing'.

]

{ #category : #actions }
ASTCGenerator >> clean [
	"remove the package created by a previous generation, and the contained classes"
	
	self removePackageNamed:packageName.
]

{ #category : #'name-formating' }
ASTCGenerator >> fullNameOf: aSymbol [
	^ prefix , aSymbol
]

{ #category : #actions }
ASTCGenerator >> generate [
	"Warning signal: (String streamContents:[:s| s << 'You''re about to delete everything in ' << packageName << '. Make sure you saved everything depending on it (extensions, class references,  [...]) .' ])."
		
	self preGen.	
	builder classes do:[:aFMXClass| self generateClass: aFMXClass ].
	self postGen.
	
	"reload packages that depends on the generated code"
	self reloadExtentions.
]

{ #category : #'generation-visit' }
ASTCGenerator >> generateAbstractVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method className |
	className := aFMXClass name.
	method := (className asVisitClassSelector)
		asMethodWithBody: [ :anInstance | ]
		withArguments:
			{#anInstance ->
			className asAnInstance} asDictionary.
	abstractVisitorClass compile: method asString classified:  'visiting'
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generateAbstractVisitorClass [
	"Abstract --> Object"
	abstractVisitorClass := Object subclass: (self fullNameOf: #Visitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
]

{ #category : #'generation-system' }
ASTCGenerator >> generateClass: aFMXClass [

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
ASTCGenerator >> generateDebugStructureVisitorClass [
	"DebugStructure --|> HierarchyWalker"
	debugStructureVisitorClass :=  hierarchyWalkerVisitorClass subclass: (self fullNameOf: #DebugStructureVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	

]

{ #category : #'generation-visit' }
ASTCGenerator >> generateDebugVisitOf: aFMXClass [
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
	
	(collections isEmpty and:[singleElements isEmpty]) ifTrue:[ ^ self ].
	
	collections do:[:relationSide|
		propertyName := relationSide name.
		isType := String streamContents:[:s| s << 'is' << relationSide otherSide relatedClass name ].
		body add: [:aClass | aClass propertyName 
			ifNotNil:[:aCollection | 
				aCollection do:[:aMember| self assert: aMember isType ]]]
		withArguments: {#aCollection -> propertyName. #aMember -> (propertyName asAnInstance) } asDictionary ].
	"Extended dictionary because of limitation of plainCode."
	singleElements do:[:relationSide|
		propertyName := relationSide name.
		isType := String streamContents:[:s| s << 'is' << relationSide otherSide relatedClass name ].
		body add: [:aClass| aClass propertyName ifNotNil:[:aPropertyName| self assert: aPropertyName isType ]] 
			withArguments: {#aPropertyName -> relationSide name asAnInstance } asDictionary ].

	method 
	:= visitClass
		asMethodWithBody: body
		withArguments: {(#aClass -> anInstance )} asDictionary.
		
	debugStructureVisitorClass compile: method asString classified: 'visiting'  
]

{ #category : #'generation-visit' }
ASTCGenerator >> generateHierarchyWalkVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method body aClass visitClass |
	
	aClass := aFMXClass name.
	visitClass := aClass asVisitClassSelector.
	
	body := [:anInstance| super visitClass:{anInstance} ].
	body := body + (self visitSuperClassBody: aFMXClass).

	method := visitClass
		asMethodWithBody: body
		withArguments: {(#anInstance -> aClass asAnInstance )} asDictionary.

	hierarchyWalkerVisitorClass compile: method asString classified: 'visiting'
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generateHierarchyWalkerVisitorClass [
	"HierarchyWalker --> Walker"
	hierarchyWalkerVisitorClass := walkerVisitorClass subclass: (self fullNameOf: #HierarchyWalkerVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)

]

{ #category : #'generation-system' }
ASTCGenerator >> generateMethodsFor: aFMXClass [
	self addClassTesterOn: aFMXClass.
	self addComparisonOn: aFMXClass.
	self addAcceptVisitorOf: aFMXClass
]

{ #category : #'generation-visit' }
ASTCGenerator >> generatePrinterVisit: aFMXClass [
	"generate a #printProperties selector that will call every property asString"
	"The result will keep the order of the definitions in the metamodel"
	| method visitSomething stream currentDepth aClassWithQuotes aClass propertiesNames |
	aClass := aFMXClass name asAnInstance.
	aClassWithQuotes:= '''',aClass,''''.
	visitSomething := aFMXClass name asVisitClassSelector.

	propertiesNames := aFMXClass properties select: [:aProp| aProp isTypedProperty and:[ aProp name ~= #pharoNode] ] thenCollect:#name.

	method := visitSomething asMethodWithBody:[:anInstance|
		stream cr.

		self printTabCount: currentDepth.
		stream << $( ;
			<< aClassWithQuotes ;
			space ;
			print: anInstance propertiesNames.
		
		currentDepth := currentDepth+1.
		super visitSomething:{aClass}.
		currentDepth := currentDepth-1.
		stream << ')'.
	] withArguments: {#anInstance -> aClass} asDictionary.
	printerVisitorClass compile: method asString classified:  'visiting'.	
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generatePrinterVisitorClass [
	"Printer --|> Walker"
	printerVisitorClass  :=  walkerVisitorClass subclass: (self fullNameOf: #PrinterVisitor)
		instanceVariableNames: 'currentDepth stream'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addPrinterVisitorsMethods.
]

{ #category : #'generation-state' }
ASTCGenerator >> generateStateFor: aFMXClass [
	self addInstanceVariablesTo: aFMXClass.
	self addInitializeTo: aFMXClass.
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generateStructureValidatorVisitorClass [
	"StructureValidator --|> DebugStructure"
	structureValidatorVisitorClass := debugStructureVisitorClass subclass: (self fullNameOf: #StructureValidatorVisitor)
		instanceVariableNames: 'errors'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addStructureValidatorVisitorMethods

]

{ #category : #'generation-visit' }
ASTCGenerator >> generateSuperclassVisitOf: aFMXClass [

	| method className |
	
	className := aFMXClass name.
	
	method := className asVisitClassSelector
		asMethodWithBody: (self visitSuperClassBody: aFMXClass)
		withArguments: {#anInstance -> className asAnInstance} asDictionary.
			
	superclassVisitorClass compile: method asString classified: #visiting
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generateSuperclassVisitorClass [
	"Superclass --> Abstract"
	superclassVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #SuperclassVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)
]

{ #category : #'generation-visit' }
ASTCGenerator >> generateValidatorVisitOf: aFMXClass [
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
		
	structureValidatorVisitorClass compile: method asString classified: 'visiting'  
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generateVisitorsClasses [
	self generateAbstractVisitorClass.
		self generateSuperclassVisitorClass.
		self generateWalkerVisitorClass.
			self generatePrinterVisitorClass.
			self generateHierarchyWalkerVisitorClass.
				self generateDebugStructureVisitorClass.
					self generateStructureValidatorVisitorClass.





]

{ #category : #'generation-visit' }
ASTCGenerator >> generateVisitsFor: aFMXClass [
	self generateAbstractVisitOf: aFMXClass.
		self generateSuperclassVisitOf: aFMXClass.
		self generateWalkVisitOf: aFMXClass.
			self generatePrinterVisit: aFMXClass.
			self generateHierarchyWalkVisitOf: aFMXClass.
				self generateDebugVisitOf: aFMXClass.
					self generateValidatorVisitOf: aFMXClass.

]

{ #category : #'generation-visit' }
ASTCGenerator >> generateWalkVisitOf: aFMXClass [
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

	walkerVisitorClass compile: method asString classified: 'visiting'
]

{ #category : #'generation-visitor-classes' }
ASTCGenerator >> generateWalkerVisitorClass [
	"Walker --> Superclass"
	walkerVisitorClass := abstractVisitorClass subclass: (self fullNameOf: #WalkerVisitor)
		instanceVariableNames: ''
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors)

]

{ #category : #initialization }
ASTCGenerator >> initialize [
	| builderClass |
	self flag:#ModularityNeeded. "ASTCBuilder shouldn't be hardcoded, but an argument. Stays that way for developpement speed."
	self flag:#todo. "Modularity on collections used"
	self flag:#toRemove. "remove the Transcript clear, it's just for development."
	
	super initialize.
	
	Transcript clear.
	debug := false.
		
	self initializeDefault.
	builderClass:=ASTCBuilder.
	
	builder:=builderClass builderWithDefinitions.	
	prefix:= builderClass prefix.
	packageName:=builderClass packageName.
]

{ #category : #initialization }
ASTCGenerator >> initializeDefault [
	parentPropertyName := 'parent'.
	collectionsType := #OrderedCollection.
]

{ #category : #actions }
ASTCGenerator >> makePackage [
	"Create the package for the generated classes"
	self addPackageNamed: packageName.
]

{ #category : #'creation-system' }
ASTCGenerator >> makePackageNameWith: aTag [
	^ String
		streamContents: [ :s | 
			s << packageName.
			aTag ifNotEmpty: [ :tag | s << $- << aTag ] ]
]

{ #category : #accessing }
ASTCGenerator >> packageName [
	"simple accessor"
	^packageName
	
]

{ #category : #accessing }
ASTCGenerator >> packageName: aString [
	"simple accessor"
	packageName:=aString.
	^aString
	
]

{ #category : #accessing }
ASTCGenerator >> parentPropertyName [
	"simple accessor"
	^parentPropertyName
	
]

{ #category : #accessing }
ASTCGenerator >> parentPropertyName: aString [
	"simple accessor"
	parentPropertyName:=aString.
	^aString
	
]

{ #category : #actions }
ASTCGenerator >> postGen [
	| rootClass |
	rootClass := builder classes detect: [:aClass| aClass name = #Node ]."pretty bad, but it'll do for now."
	self addAllClassTesterTo: rootClass .
]

{ #category : #actions }
ASTCGenerator >> preGen [
	"recreate a clean package, and generate the classes"
	self clean.
	self makePackage.
	self generateVisitorsClasses.

]

{ #category : #accessing }
ASTCGenerator >> prefix [
	"simple accessor"
	^prefix
	
	
]

{ #category : #accessing }
ASTCGenerator >> prefix: aString [
	"simple accessor"
	prefix:=aString.
	^aString
	
]

{ #category : #actions }
ASTCGenerator >> reloadExtentions [
	| icebergRepo listOfPackageNameToReload listOfPackageToReload |
	
	icebergRepo := Iceberg repositoryForPackage: self class package.
	
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

{ #category : #'generation-visit' }
ASTCGenerator >> visitSuperClassBody: aFMXClass [

	| superclassName superMethodSelector |
	superclassName := aFMXClass classGeneralization 
		ifNotNil:[:aSuperClass| aSuperClass name] 
		ifNil:[ ^ [:anInstance | ] ]."No need to override"
	superMethodSelector := superclassName asVisitClassSelector.
	
	^ [ :anInstance | ^ self superMethodSelector: {anInstance} ] asPCBlock
]
