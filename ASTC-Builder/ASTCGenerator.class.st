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
	#superclass : #FmxMBWalkerVisitor,
	#traits : 'PackageManagementTrait',
	#classTraits : 'PackageManagementTrait classTrait',
	#instVars : [
		'packageName',
		'prefix',
		'builder',
		'currentClass',
		'currentRelationshipSides',
		'currentTypedProperties',
		'parentPropertyName',
		'astVisitorClass',
		'collectionsType',
		'astWalkerVisitorClass',
		'astPrinterVisitor'
	],
	#category : #'ASTC-Builder'
}

{ #category : #generating }
ASTCGenerator class >> generate [ 
	^self new generate.
]

{ #category : #'name-formating' }
ASTCGenerator >> aClassAsVariableName: aClassNameAsString [
	"returns a string (given as a String) with the following format to the classic arguments names: aClass, anObject [...]"
	"ASTCGenerator new aClassAsVariableName: self class asString>>>'anASTCGenerator'" 
	self flag:#testInComment.
	self flag:#wrongClass."should be on String, But I'm trying to do a self sustaining package."
	^(aClassNameAsString first isVowel ifTrue:['an']ifFalse:['a']),aClassNameAsString capitalized.
]

{ #category : #'generating-visitor' }
ASTCGenerator >> addAcceptMethod [
	"shortcut for currentClass iv."
	self addAcceptMethodOn:currentClass.
]

{ #category : #'generating-visitor' }
ASTCGenerator >> addAcceptMethodOn:aClass [
	"Add the #acceptVisitor and #acceptMultipleVisitor methods selector on aClass."	
	
	| methodBody |
	methodBody:=String streamContents:[:s| s << 'acceptVisitor: aVisitor' ; cr ;
	tab ; << '^aVisitor visit' ; << currentClass asString ; << ':self.'.].

	self addMethod: methodBody
		on: aClass
		withProtocol:'visiting'.

	methodBody:=String streamContents:[:s| s << 'acceptMultipleVisitors: aCollectionOfIndependentVisitor' ; cr ;
	tab ; << 'aCollectionOfIndependentVisitor do:[:aVisitor| aVisitor visit' ; << currentClass asString ; << ':self.].'.].

	self addMethod: methodBody
		on: aClass
		withProtocol:'visiting'.

]

{ #category : #'generating-attributes' }
ASTCGenerator >> addAccessors: aSymbol isMany: aBoolean isProperty:isPropertyBoolean [
	"shortcut for the currentClass Instance Variable"
	self addAccessors: aSymbol on:currentClass isMany: aBoolean isProperty:isPropertyBoolean. 
	

]

{ #category : #'generating-attributes' }
ASTCGenerator >> addAccessors: aSymbol on: aClass isMany: isManyBoolean isProperty:isPropertyBoolean [
	| methodBody propertyName variableName |
	"Add the accessors for the instance variable aSymbol, on aClass"
	"The isManyBoolean represent a * side of a relation in the model, and means that we have to put a collection instead of an Object in the setter."
	self flag:#improvement." isPropertyBoolean ifTrue:[We have a property which, by our semantic means that it's not a type from ASTC. Should be improved ]
															ifFalse:[It's a link with another class of the ASTC, meaning that we'll have to update the parent of the given property in the setter.]"

	self flag:#todo."aSelector should notify his parent before getting adopted by someone else." 
	
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
	',((isPropertyBoolean or:['parent' match:propertyName]) 
		ifFalse:[
				variableName,' parent:self.
	'		
	]ifTrue:['']),

	'^',variableName,'.'.
	
	self addMethod: methodBody on: aClass withProtocol: 'accessors'.
	
	isManyBoolean ifTrue:[
		self addPropertyInitialize: aSymbol.
		].
]

{ #category : #'generating-class-testing' }
ASTCGenerator >> addAllClassTesterOn:aClass [
	| generatedPackage methodBody |
	generatedPackage:=self getPackageNamed:packageName.
	(generatedPackage classTagNamed: 'Node') classes do:[:aNodeClass |
		methodBody:=String streamContents: [:s|
			s << 'is' << aNodeClass asString << Character cr.
			s << Character tab.
			aNodeClass = aClass ifFalse:[
				 s << '^false'
				]
			ifTrue:[
				s << '^true'
				].
			].
		self addMethod: methodBody on: aClass withProtocol: 'testing'
		]
]

{ #category : #'generating-class-testing' }
ASTCGenerator >> addAllClassTesterOnNode [
	self flag:#modularity.
	self addAllClassTesterOn: ASTCNode.
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addClassInitialize [
	"shortcut for the currentClass Instance Variable"
	self addClassInitializeOn:currentClass forProperties: self allInitializedPropertiesOfCurrentClass.
	
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addClassInitializeOn: aClass forProperties: aCollection [
	| methodBody |
	"Add initialization for a class with many properties (*-<>) in the metamodel)"
	"The result will keep the order of the definitions in the metamodel"
	aCollection ifEmpty:[^self]. 
	
	methodBody :=String streamContents: [:s | 
		s << 'initialize' ;cr;tab;
		  << 'super initialize.'; cr;tab.
		aCollection do: [:propertyName | s << 'self ' ; << 'initialize' ; << propertyName capitalized ; << '.' ] 
		separatedBy:[s cr tab]
		].
	
	self addMethod: methodBody on: aClass withProtocol: 'initialize'.
	
]

{ #category : #'generating-class-testing' }
ASTCGenerator >> addClassTester [
	"shortcut on currentClass"
	self addClassTesterOn: currentClass.
]

{ #category : #'generating-class-testing' }
ASTCGenerator >> addClassTesterOn:aClass [
	| methodBody |	
		"add the current class tester so it understand the selector #isAClass. it still won't understand #isAnotherClass"
	methodBody := String 
		streamContents: [:s|
			s << 'is' << aClass asString << Character cr.
			s << Character tab << '^true.'
		].
	
	self addMethod: methodBody on: aClass withProtocol: 'testing'.
]

{ #category : #'generating-visitor' }
ASTCGenerator >> addCurrentClassVisitToAbstractVisitor [
	"add an empty behavior visit method for the current class on the (prefix,Visitor) class."
	^self addMethod: (self methodClassSignatureFor: currentClass asString withPrefix: 'visit' ) 
		  on: astVisitorClass 
		  withProtocol:'visiting'
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addCurrentClassVisitToPrinterVisitor [
	"indirection on the currentClass Instance Variable"
	self addCurrentClassVisitToPrinterVisitorOn: currentClass.
	
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addCurrentClassVisitToPrinterVisitorOn: aClass [
	"Add the printer method for aClass on the PrinterVisitor class"
	| methodBody classAsVariableName visitAKindOfNode stream currentDepth stringifiedClassAsVariableName |
	classAsVariableName := (self aClassAsVariableName: aClass asString).
	stringifiedClassAsVariableName:= '''',classAsVariableName,''''.
	visitAKindOfNode := 'visit' , aClass asString,':'.
	
	
	methodBody := PlainCodeVisitor new generateCode: visitAKindOfNode withBody:[:aKindOfNode|
		stream cr.
	
		self printTabCount: currentDepth.
		stream << $( << stringifiedClassAsVariableName .
		stream << classAsVariableName printProperties.
		currentDepth := currentDepth+1.
	
		super visitAKindOfNode:{classAsVariableName}.
	
		currentDepth := currentDepth-1.
		stream << ')'.
	] andArguments: (Dictionary new add: 'aKindOfNode' -> classAsVariableName ; yourself).
	self addMethod: methodBody asString on: astPrinterVisitor withProtocol: 'visiting'.	
	
]

{ #category : #'generating-equality' }
ASTCGenerator >> addEqualityMethods [

	| properties |
	properties := self allPropertiesOfClass: currentClass.
	self addEqualsOn: currentClass withPropertiesNamed: properties.
	self addHashOn: currentClass withPropertiesNamed: properties.
]

{ #category : #'generating-equality' }
ASTCGenerator >> addEqualsOn: aClass withPropertiesNamed: properties [
	"add binary selector #= on aClass. It'll check its class and every properties"
	| methodBody |
	
	methodBody :=String streamContents: [:s | 
		s << '= anotherNode
	(anotherNode class = self class)
	ifFalse: [ ^ false ].
'.
		properties do: [ :each |
			s << '
	self ' << each << ' = anotherNode ' << each << '
		ifFalse: [ ^ false ].
'  ].

	s << '
	^ true' ].
	
	self addMethod: methodBody on: aClass withProtocol: 'comparing'.
]

{ #category : #'generating-equality' }
ASTCGenerator >> addHashOn: aClass withPropertiesNamed: properties [
	"add the #hash selector on a Class, by adding every properties hash."
	| methodBody |
	
	methodBody :=String streamContents: [:s | 
		s << 'hash
	| hash |
	hash := self identityHash.
'.
		properties do: [ :each |
			s << 
'	hash := hash + self ' << each << ' hash.' << Character cr.  ].

	s << '	^hash' ].
	
	self addMethod: methodBody on: aClass withProtocol: 'comparing'.
]

{ #category : #'creation-system' }
ASTCGenerator >> addMethod: aBodyAsString on: aClass withProtocol: aProtocolAsString [
	"Shortcut to a system method, in case it changes."
	aClass compile: aBodyAsString classified: aProtocolAsString
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrintPropertiesOn: aClass [
	| methodBody methodSelector methodsToCall method |
	self flag:#duplication."duplication with initialize/walker"
	"generate an #print that will call every property printer already on the target class."
	"The result will be UNORDERED."
	methodsToCall := aClass selectors select:[:selector| '*AsString' match:selector ]. 
	methodSelector:= #printProperties.

	methodBody:=methodsToCall isEmpty ifTrue:[
			[
			^''
		].
	]
	ifFalse:[
		[
		String streamContents:[:s|
			s << self << self methodsToCall.
			]
		].
	].

	method:=PlainCodeVisitor new generateCode: methodSelector withBody: methodBody.
	self addMethod: method asString on: aClass withProtocol: 'print'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrintPropertiesOn: aClass forAttributes:aCollectionOfProperties [
	| method body |
	"generate a #printProperties selector that will call every property asString"
	"The result will keep the order of the definitions in the metamodel"

	aCollectionOfProperties do:[:each| each,'asString'].
	body:=aCollectionOfProperties isEmpty
	ifTrue:[ [^''] ]
	ifFalse:[	
		[
		^String streamContents:[:s |
			s << ' ' << self aCollectionOfProperties.
		]]
	].

	method:=PlainCodeVisitor new generateCode: #printProperties withBody: body.	
	self addMethod: method asString on: aClass withProtocol: 'print'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrintPropertiesOnString: aClass [
	| methodBody methodstoCall|
	self flag:#duplication."duplication with initialize/walker"
	"generate an #print that will call every property printer already on the target class."
	"The result will be UNORDERED."
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
	
	self addMethod: methodBody asString on: aClass withProtocol: 'print'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrintPropertiesOnString: aClass forAttributes:aCollectionOfProperties [
	| methodBody |
	"generate a #printProperties selector that will call every property asString"
	"The result will keep the order of the definitions in the metamodel"
	methodBody:='printProperties
	'.	

	methodBody := methodBody,
		(aCollectionOfProperties
			ifEmpty:['^''''']
			ifNotEmpty:[	
			(String streamContents: [:s | 
		s <<'^String streamContents:[:s |
	'.
	aCollectionOfProperties do: [:aProperty | s <<'s << '' '' << self ' ;<< aProperty ;<< 'asString.'. ] separatedBy:[s cr;tab.].
	s<<'].'.
		]).
	]).
	
	self addMethod: methodBody on: aClass withProtocol: 'print'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterProperties [
	"shortcut for currentClass Instance Variable"
	self addPrintPropertiesOn: currentClass.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterProperty: aProperty [
	"shortcut for currentClass Instance Variable"
	^self addPrinterProperty: aProperty on: currentClass.
	
	
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterProperty: aProperty on: aClass [
	"add a method on aClass that stringify a property. Used in the generated PrinterVisitor"
	| method |

	method:=[
		^aProperty asString.
	] asMethod: aProperty,'AsString'.
	
	self addMethod: method asString on: aClass withProtocol: 'printing'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterPropertyString: aProperty on: aClass [
	"add a method on aClass that stringify a property. Used in the generated PrinterVisitor"
	| methodBody |
	methodBody:=
aProperty,'AsString
	^',aProperty asString,' asString.'.
	
	self addMethod: methodBody on: aClass withProtocol: 'printing'.
]

{ #category : #'generating-visitor-printer' }
ASTCGenerator >> addPrinterVisitorsMethods [
	"Add necessary methods for PrinterVisitor : #initialize / #printTabCount: / #stream / #toTranscript / #printOn:"
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
	"shortcut for properties"
	self addProperty:aString isMany: isManyBoolean isProperty:false.
	
]

{ #category : #'generating-attributes' }
ASTCGenerator >> addProperty: aString isMany: isManyBoolean isProperty:isPropertyBoolean [
	"isMany is a property from a Relationship, meaning that a relationship side is '*' (*-<> or *-)"
	"isPropertyBoolean true if aString represent a property, false if it's a relationshipSide"
	(currentClass allSlots "we check if the slot already exists"
		anySatisfy: [ :each | each name = aString ])
		ifTrue: [ ^ self ].	

	currentClass addInstVarNamed: aString."we create a new instance variable" 

	self addAccessors: aString isMany: isManyBoolean isProperty:isPropertyBoolean. 
	self addWalkerProperty: aString for: currentClass  isMany: isManyBoolean isProperty:isPropertyBoolean.
	isPropertyBoolean ifTrue:[
		self addPrinterProperty: aString.
	]
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addPropertyInitialize: aPropertyAsSymbol [
	"shortcut for the currentClass Instance Variable"
	self addPropertyInitialize:  aPropertyAsSymbol On: currentClass.
]

{ #category : #'generating-initialize' }
ASTCGenerator >> addPropertyInitialize: aSymbol On: aClass [
	"Add initialisation for aSymbol (which is a property) on aClass"
	| methodBody propertyName |
	
	propertyName:= aSymbol asString.
	methodBody :=
'initialize',propertyName asCamelCase ,'
	',propertyName,':=',collectionsType asString,' new parent:self; yourself.'.

	
	self addMethod: methodBody on: aClass withProtocol: 'initialization'.
]

{ #category : #'generating-visitor' }
ASTCGenerator >> addVisitor [
	self addCurrentClassVisitToAbstractVisitor.
	self addAcceptMethod.
	self addWalkerMethod.
	self addWalkingOverride.
	self addCurrentClassVisitToPrinterVisitor.

]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkerMethod [
	"shortcut for the currentClass IV"
	self addWalkerMethodFor:currentClass forProperties: (self allPropertiesOfClass: currentClass).
]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkerMethodFor: aClass forProperties: aCollectionOfProperties [
	| methodBody className |
	className := aClass asString.
	methodBody := String
		streamContents: [ :s | 
			s	<< (self methodClassSignatureFor: className withPrefix: 'walk');
				cr.
			aCollectionOfProperties
				do: [ :aProperty | 
					s tab
						<< 'self walk';
						<< className;
						<< aProperty capitalized;
						<< $:;
						space;
						<< (self aClassAsVariableName: aClass asString);
						<< '.';
						cr ] ].
	self
		addMethod: methodBody
		on: astWalkerVisitorClass
		withProtocol: 'visiting'
]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkerProperty:aPropertyName for: aClass isMany:isManyBoolean isProperty: isPropertyBoolean [
	| methodBody className propertyIteratorName |
	
	className:=aClass asString.
	methodBody:=String streamContents:[:stream | 
		stream << 'walk' << className << aPropertyName capitalized << $: << (self aClassAsVariableName:className) << Character cr.

	isPropertyBoolean ifFalse:[
		stream << Character tab << (self aClassAsVariableName: className) << Character space  << aPropertyName << Character cr.
		stream << Character tab << Character tab << 'ifNotNil:[ :'<< aPropertyName << ' | ' << aPropertyName .
		(isManyBoolean 
			ifTrue:[ 
				propertyIteratorName := self aClassAsVariableName:(aPropertyName withoutSuffix: 's').
				stream << Character cr.
				stream << Character tab << Character tab << Character tab << 'do:[ :' << propertyIteratorName << ' | ' << propertyIteratorName << ' acceptVisitor:self ]']
			ifFalse:[ stream << ' acceptVisitor:self.']).
			stream << Character cr << Character tab << Character tab << $].
		]].


	self addMethod: methodBody on: astWalkerVisitorClass withProtocol: 'walking'
	
]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkingOverride [
	"indirection on the currentClass Instance Variable"
	self addWalkingOverrideFor:currentClass.
]

{ #category : #'generating-visitor-walker' }
ASTCGenerator >> addWalkingOverrideFor: aClass [
	"add the visit method for the Walker visitor for aClass"
	| methodBody className|
	
	className:=aClass asString.

	methodBody :=String streamContents: [:s | 
		s <<(self methodClassSignatureFor: className withPrefix:'visit'); <<'
	'.
		s 	<<'self walk';
			<<className;
			<<': ';
			<< (self aClassAsVariableName: className);
			<<'.
			'.
	].
	
	self addMethod: methodBody on: astWalkerVisitorClass  withProtocol: 'visiting'.
]

{ #category : #generating }
ASTCGenerator >> allInitializedPropertiesOfCurrentClass [
	| res |
	res := LinkedList new.
	currentRelationshipSides do:[:aRelationSide |
		aRelationSide isMany 
		ifTrue:[ res add:aRelationSide name asString ]
	].
	^res
]

{ #category : #generating }
ASTCGenerator >> allPropertiesOfClass: aClass [
	| res |
	res := LinkedList new.
	currentRelationshipSides do:[:aRelationSide |
		aRelationSide isContainer 
		ifFalse:[ res add: aRelationSide name asString ]].

	currentTypedProperties collect:[:aTypedProperty | aTypedProperty name] into: res.
	
	^res
]

{ #category : #generating }
ASTCGenerator >> allTypedProperties: aClass [
	| res |
	res := LinkedList new.

	currentTypedProperties collect:[:aTypedProperty | aTypedProperty name] into: res.
	
	^res
]

{ #category : #generating }
ASTCGenerator >> classStuffOnCurrentClass [
	"dispatcher for everything that needs to be added on currentClass"
	self addCurrentClassVisitToAbstractVisitor.
	self addVisitor.
	self addClassInitialize.
	self addPrinterProperties.
	self addClassTester.
	self addEqualityMethods.
]

{ #category : #actions }
ASTCGenerator >> clean [
	"remove the package created by a previous generation, and the contained classes"
	
	self removePackageNamed:packageName.
]

{ #category : #'creation-system' }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString [
	"shortcut for classes with no IVs."
	^self createClass:classNameAsSymbol superclass:superclassAsString withIVs:'' withTag: ''.
]

{ #category : #'creation-system' }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs [
	self createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs	withTag:''.
]

{ #category : #'creation-system' }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString withIVs: aStringOfIVs withTag: aTag [
	"indirection for class creation, in case that changes."
	^(ShSmalltalkGlobalsEnvironment new classNamed: superclassAsString ifAbsent:Object)
		subclass: classNameAsSymbol
		instanceVariableNames: aStringOfIVs
		classVariableNames: ''
		package: (self makePackageNameWith:aTag)
		
]

{ #category : #'creation-system' }
ASTCGenerator >> createClass: classNameAsSymbol superclass: superclassAsString withTag: aTag [
	"shortcut for classes with no IVs."
	^self createClass:classNameAsSymbol superclass:superclassAsString withIVs:'' withTag: aTag.
]

{ #category : #actions }
ASTCGenerator >> generate [
	Warning signal: (String streamContents:[:s| s << 'You''re about to delete everything in ' << packageName << '. Make sure you saved everything depending on it (extensions, class references,  [...]) .' ]).
		
	self preGen.	
	builder acceptVisitor:self.
	self postGen.
	
	"reload packages that depends on the generated code"
	self reloadExtentions.
]

{ #category : #'generating-visitor' }
ASTCGenerator >> generateVisitorsClasses [
	| previousClassSymbol classSymbol |
	
	previousClassSymbol := #Object.
	classSymbol:= (self prefix,'Visitor') asSymbol.
	astVisitorClass := self createClass: classSymbol superclass:previousClassSymbol withTag: 'visitor'.
	
	previousClassSymbol := classSymbol.
	classSymbol:=(self prefix,'WalkerVisitor') asSymbol.	
	astWalkerVisitorClass := self createClass: classSymbol superclass:previousClassSymbol withTag: 'visitor'.

	previousClassSymbol := classSymbol.
	classSymbol:=(self prefix,'PrinterVisitor') asSymbol.
	astPrinterVisitor := self createClass: classSymbol superclass:previousClassSymbol withIVs: 'currentDepth stream' withTag: 'visitor'.
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
	self flag:#modularty.
	parentPropertyName:='parent'.
	collectionsType:=ASTCContainer.
	
]

{ #category : #actions }
ASTCGenerator >> makePackage [
	"Create the package for the generated classes"
	self addPackageNamed: packageName.
]

{ #category : #'creation-system' }
ASTCGenerator >> makePackageNameWith:aTag [
	^String streamContents:[:s| 
		s << packageName. 
		aTag ifNotEmpty:[:tag| s << $- << aTag ]
		]
		
]

{ #category : #'name-formating' }
ASTCGenerator >> methodClassSignatureFor: aClassNameAsString withPrefix: aPrefix [
	^String streamContents:[:s|
		s nextPutAll:aPrefix;
		nextPutAll: aClassNameAsString capitalized;
		nextPutAll:': ';
		nextPutAll: (self aClassAsVariableName: aClassNameAsString).
		].
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
	self addAllClassTesterOnNode.
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

{ #category : #generating }
ASTCGenerator >> relationSideStuff [
	currentRelationshipSides do:[:aRelationSide|
		aRelationSide isContainer 
		ifTrue:[
			self addProperty: self parentPropertyName isMany: false.
			]
		ifFalse:[
			self addProperty: aRelationSide name asString isMany: aRelationSide isMany.
		].
	].
]

{ #category : #actions }
ASTCGenerator >> reloadExtentions [
	| icebergRepo listOfPackageNameToReload listOfPackageToReload |
	
	icebergRepo := IceRepository registry detect:[:aRepository| aRepository name = 'ASTC'].

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

{ #category : #generating }
ASTCGenerator >> typedPropertiesStuff [
	currentTypedProperties do:[:aTypedProperty| self addProperty:aTypedProperty name isMany: false isProperty:true ].
]

{ #category : #visiting }
ASTCGenerator >> visitClass: aClass [
	"Visit a class, build it, and deploy it on the system."
	| superclass className |
	
	superclass := (aClass classGeneralization ifNotNil:[ :class| prefix,class name ] ifNil:['Object']) asSymbol. "we get a symbol of the Superclass"
	className := (prefix,aClass name) asSymbol."we get the new class name and format it"
	
	"And we create it"
	currentClass := self createClass: className superclass: superclass withTag: 'Node'.
	currentRelationshipSides := LinkedList new.
	currentTypedProperties := LinkedList new.
	
	currentClass crLog.
	super visitClass:aClass."fill up with property and properties methods, such as accessors"
	
	self typedPropertiesStuff.	
	self relationSideStuff.
	self classStuffOnCurrentClass.


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

	currentRelationshipSides add:aRelationSide.
	
	"aRelationSide isContainer 
	ifTrue:[
		self addProperty: self parentPropertyName isMany: false.
		]
	ifFalse:[
		self addProperty: aRelationSide name asString isMany: aRelationSide isMany.
	]."
]

{ #category : #visiting }
ASTCGenerator >> visitTypedProperty: aTypedProperty [
	currentTypedProperties add:aTypedProperty.
	"self addProperty:aTypedProperty name isMany: false isProperty:true."
	
]
