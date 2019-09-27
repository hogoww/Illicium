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
		'astVisitorClass',
		'collectionsType',
		'astWalkerVisitorClass',
		'astPrinterVisitor',
		'astDebugStructureVisitor',
		'astStructureValidatorVisitor',
		'debug'
	],
	#category : #'ASTC-Builder'
}

{ #category : #generating }
ASTCGeneratorNew class >> generate [ 
	^self new generate.
]

{ #category : #'name-formating' }
ASTCGeneratorNew >> aClassAsVariableName: aClassNameAsString [
	"returns a string (given as a String) with the following format to the classic arguments names: aClass, anObject [...]"
	"ASTCGenerator new aClassAsVariableName: self class asString>>>'anASTCGenerator'" 
	self flag:#testInComment.
	self flag:#wrongClass."should be on String, But I'm trying to do a self sustaining package."
	self flag:#rename. "Not explicit enough.."
	^(aClassNameAsString first isVowel ifTrue:['an']ifFalse:['a']),aClassNameAsString capitalized.
]

{ #category : #'generating-visitor' }
ASTCGeneratorNew >> addAcceptMethod [
	"shortcut for currentClass iv."
	self addAcceptMethodOn:currentClass.
]

{ #category : #'generating-visitor' }
ASTCGeneratorNew >> addAcceptMethodOn:aClass [
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
ASTCGeneratorNew >> addAccessors: aSymbol isMany: aBoolean isProperty:isPropertyBoolean [
	"shortcut for the currentClass Instance Variable"
	self addAccessors: aSymbol on:currentClass isMany: aBoolean isProperty:isPropertyBoolean. 
	

]

{ #category : #'generating-attributes' }
ASTCGeneratorNew >> addAccessors: aSymbol on: aClass isMany: isManyBoolean isProperty:isPropertyBoolean [
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
ASTCGeneratorNew >> addAllClassTesterOn:aClass [
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
ASTCGeneratorNew >> addAllClassTesterOnNode [
	self flag:#modularity.
	self addAllClassTesterOn: ASTCNode.
]

{ #category : #'generating-initialize' }
ASTCGeneratorNew >> addClassInitialize [
	"shortcut for the currentClass Instance Variable"
	self addClassInitializeOn:currentClass forProperties: self allInitializedPropertiesOfCurrentClass.
	
]

{ #category : #'generating-initialize' }
ASTCGeneratorNew >> addClassInitializeOn: aClass forProperties: aCollection [
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
ASTCGeneratorNew >> addClassTester [
	"shortcut on currentClass"
	self addClassTesterOn: currentClass.
]

{ #category : #'generating-class-testing' }
ASTCGeneratorNew >> addClassTesterOn:aClass [
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
ASTCGeneratorNew >> addCurrentClassVisitToAbstractVisitor [
	"add an empty behavior visit method for the current class on the (prefix,Visitor) class."
	^self addMethod: (self methodClassSignatureFor: currentClass asString withPrefix: 'visit' ) 
		  on: astVisitorClass 
		  withProtocol:'visiting'
]

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addCurrentClassVisitToPrinterVisitor [
	"indirection on the currentClass Instance Variable"
	self addCurrentClassVisitToPrinterVisitorOn: currentClass.
	
]

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addCurrentClassVisitToPrinterVisitorOn: aClass [
	"Add the printer method for aClass on the PrinterVisitor class"
	| methodBody |
	methodBody:=(self methodClassSignatureFor: aClass asString withPrefix: 'visit'),'
	stream << ''
''.
	self printTabCount: currentDepth.
	stream << ''(', (self aClassAsVariableName: aClass asString),'''.
	stream << (',(self aClassAsVariableName: aClass asString),' printProperties).
	currentDepth := currentDepth+1.
	
	super visit',aClass asString,':', (self aClassAsVariableName:aClass asString),'.
	
	currentDepth := currentDepth-1.
	stream << '')''.
'.
	self addMethod: methodBody on: astPrinterVisitor withProtocol: 'visiting'.	
	
]

{ #category : #'generating-visitor-structure-validation' }
ASTCGeneratorNew >> addDebugStructureForCurrentClass [
	| aClass visitSuperclass visitAClass bodyOfMethod |
	aClass:= self aClassAsVariableName: currentClass asString.
	
	currentSuperclass = #Object ifFalse:[	visitSuperclass:='visit',currentSuperclass asString,':'.].

	visitAClass:='visit',currentClass asString,':'.
	
	bodyOfMethod:= String streamContents:[:s|
	s << visitAClass << aClass.
	s cr.
	visitSuperclass ifNotNil:[s << '	self ' << visitSuperclass << aClass << '.'. 
	s cr cr.].
	
	
	currentRelationshipSides do:[:aProperty| 
		aProperty isContainer ifFalse:[
			aProperty isMany "if true, it should ALWAYS have a ASTCContainer, so no need to check if it's nil"
			ifTrue:[ s << '	' << aClass << ' ' << aProperty name << ' do:[:each| self assert: each is' << prefix << aProperty otherSide relatedClass name  << '].' ]"ifFalse, we can't express it in famix, so we have to check every time"
			ifFalse:[ s << '	' << aClass << ' ' << aProperty name << ' ifNotNil:[ self assert:' << aClass << ' ' << aProperty name << ' is' << prefix << aProperty otherSide relatedClass name  << ' ].'].
		s cr.].
		].
	s cr.
	s << '	' <<'super '<< visitAClass << aClass ].

	self addMethod: bodyOfMethod  on: astDebugStructureVisitor withProtocol: 'check'

]

{ #category : #'generating-equality' }
ASTCGeneratorNew >> addEqualityMethods [

	| properties |
	properties := self allPropertiesOfClass: currentClass.
	self addEqualsOn: currentClass withPropertiesNamed: properties.
	self addHashOn: currentClass withPropertiesNamed: properties.
]

{ #category : #'generating-equality' }
ASTCGeneratorNew >> addEqualsOn: aClass withPropertiesNamed: properties [
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
ASTCGeneratorNew >> addHashOn: aClass withPropertiesNamed: properties [
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

{ #category : #'generation-attribute' }
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

{ #category : #'generation-attribute' }
ASTCGeneratorNew >> addInstanceVariableAccessors: aProperty to: aClass [
	| propertyName  aPropertyName method |
	
	propertyName := aProperty name.
	aPropertyName :=  self aClassAsVariableName: propertyName.
	
	"getter"
	method := propertyName asMethodWithBody: 
				[ ^ propertyName ].
	self addMethod: method asString on: aClass withProtocol: 'accessors'.
	
	"setter"
	method := propertyName asMethodWithBody:
		([ aPropertyName parent: self ] + 
		[:asClass | ^ propertyName := aPropertyName ])
		withArgs:{ #asClass -> aPropertyName } asDictionary.
	self addMethod: method asString on: aClass withProtocol: 'accessors'.
	self halt.
	self flag:#bug. "parent needs to be changed only when it's a property"
]

{ #category : #'generation-attribute' }
ASTCGeneratorNew >> addInstancesVariablesTo: aFMXClass [
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

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addPrintPropertiesOn: aClass [
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
	
	self addMethod: methodBody on: aClass withProtocol: 'print'.
]

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addPrintPropertiesOn: aClass forAttributes:aCollectionOfProperties [
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
ASTCGeneratorNew >> addPrinterProperties [
	"shortcut for currentClass Instance Variable"
	self addPrintPropertiesOn: currentClass.
]

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addPrinterProperty: aProperty [
	"shortcut for currentClass Instance Variable"
	^self addPrinterProperty: aProperty on: currentClass.
	
	
]

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addPrinterProperty: aProperty on: aClass [
	"add a method on aClass that stringify a property. Used in the generated PrinterVisitor"
	| methodBody |
	methodBody:=
aProperty,'AsString
	^',aProperty asString,' asString.'.
	
	self addMethod: methodBody on: aClass withProtocol: 'printing'.
]

{ #category : #'generating-visitor-printer' }
ASTCGeneratorNew >> addPrinterVisitorsMethods [
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
ASTCGeneratorNew >> addProperty: aString isMany: isManyBoolean [
	"shortcut for properties"
	self addProperty:aString isMany: isManyBoolean isProperty:false.
	
]

{ #category : #'generating-attributes' }
ASTCGeneratorNew >> addProperty: aString isMany: isManyBoolean isProperty:isPropertyBoolean [
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
ASTCGeneratorNew >> addPropertyInitialize: aPropertyAsSymbol [
	"shortcut for the currentClass Instance Variable"
	self addPropertyInitialize:  aPropertyAsSymbol On: currentClass.
]

{ #category : #'generating-initialize' }
ASTCGeneratorNew >> addPropertyInitialize: aSymbol On: aClass [
	"Add initialisation for aSymbol (which is a property) on aClass"
	| methodBody propertyName |
	
	propertyName:= aSymbol asString.
	methodBody :=
'initialize',propertyName asCamelCase ,'
	',propertyName,':=',collectionsType asString,' new parent:self; yourself.'.

	
	self addMethod: methodBody on: aClass withProtocol: 'initialization'.
]

{ #category : #'generating-visitor-structure-validation' }
ASTCGeneratorNew >> addStructureValidationFor:aClass [
	| visitAClass instanceOfAClass argumentReplacement errors bodyOfMethod |
	visitAClass := ('visit',aClass asString,':') asSymbol.
	instanceOfAClass := self aClassAsVariableName: aClass asString.
	
	argumentReplacement:=Dictionary new add: #anInstanceOfAClass -> instanceOfAClass ; yourself.	
	bodyOfMethod:=[:anInstanceOfAClass|
		[ super visitAClass:{anInstanceOfAClass} ]
		on: AssertionFailure do:[ errors:= errors + 1 ]
	] asMethod: visitAClass withArgs:argumentReplacement.
	
	self addMethod: bodyOfMethod asString on: astStructureValidatorVisitor  withProtocol: 'check'
]

{ #category : #'generating-visitor-structure-validation' }
ASTCGeneratorNew >> addStructureValidatorVisitorMethods [	
	self addMethod: 'initialize
	errors:=0.' on: astStructureValidatorVisitor  withProtocol: 'initialization'.
	
	self addMethod:'errors
	^errors' on: astStructureValidatorVisitor withProtocol: 'accessing'.

	self addMethod:'isValidAst
	^errors=0' on: astStructureValidatorVisitor withProtocol: 'testing'.

]

{ #category : #'generating-visitor' }
ASTCGeneratorNew >> addVisitor [
	self addCurrentClassVisitToAbstractVisitor.
	self addAcceptMethod.
	self addWalkerMethod.
	self addWalkingOverride.
	self addCurrentClassVisitToPrinterVisitor.

]

{ #category : #'generating-visitor-walker' }
ASTCGeneratorNew >> addWalkerMethod [
	"shortcut for the currentClass IV"
	self addWalkerMethodFor:currentClass forProperties: (self allPropertiesOfClass: currentClass).
]

{ #category : #'generating-visitor-walker' }
ASTCGeneratorNew >> addWalkerMethodFor: aClass forProperties: aCollectionOfProperties [
	| methodBody className |
	className := aClass asString.
	methodBody := String
		streamContents: [ :s | 
			s	<< (self methodClassSignatureFor: className withPrefix: 'walk');
				cr.
			currentSuperclass = #Object ifFalse:[
			s  tab << 'self ' << (self methodSuperclassSignatureFor: className withPrefix: 'walk') ;
				<< '.';
			cr.
			].
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
ASTCGeneratorNew >> addWalkerProperty:aPropertyName for: aClass isMany:isManyBoolean isProperty: isPropertyBoolean [
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
				stream << Character tab << Character tab << Character tab << 'do:[ :' << propertyIteratorName << ' | ' << Character cr << propertyIteratorName << ' acceptVisitor:self ]']
			ifFalse:[ stream << ' acceptVisitor:self.']).
			stream << Character cr << Character tab << Character tab << $].
		]].


	self addMethod: methodBody on: astWalkerVisitorClass withProtocol: 'walking'
	
]

{ #category : #'generating-visitor-walker' }
ASTCGeneratorNew >> addWalkingOverride [
	"indirection on the currentClass Instance Variable"
	self addWalkingOverrideFor:currentClass.
]

{ #category : #'generating-visitor-walker' }
ASTCGeneratorNew >> addWalkingOverrideFor: aClass [
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
ASTCGeneratorNew >> allInitializedPropertiesOfCurrentClass [
	| res |
	res := LinkedList new.
	currentRelationshipSides do:[:aRelationSide |
		aRelationSide isMany 
		ifTrue:[ res add:aRelationSide name asString ]
	].
	^res
]

{ #category : #generating }
ASTCGeneratorNew >> allPropertiesOfClass: aClass [
	| res |
	res := LinkedList new.
	currentRelationshipSides do:[:aRelationSide |
		aRelationSide isContainer 
		ifFalse:[ res add: aRelationSide name asString ]].

	currentTypedProperties collect:[:aTypedProperty | aTypedProperty name] into: res.
	
	^res
]

{ #category : #generating }
ASTCGeneratorNew >> allTypedProperties: aClass [
	| res |
	res := LinkedList new.

	currentTypedProperties collect:[:aTypedProperty | aTypedProperty name] into: res.
	
	^res
]

{ #category : #generating }
ASTCGeneratorNew >> classStuffOnCurrentClass [
	"dispatcher for everything that needs to be added on currentClass"
	self addCurrentClassVisitToAbstractVisitor.
	self addVisitor.
	self addClassInitialize.
	self addPrinterProperties.
	self addClassTester.
	self addEqualityMethods.
	self addStructureValidationFor: currentClass.
	self addDebugStructureForCurrentClass 
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

{ #category : #actions }
ASTCGeneratorNew >> generate [
	"Warning signal: (String streamContents:[:s| s << 'You''re about to delete everything in ' << packageName << '. Make sure you saved everything depending on it (extensions, class references,  [...]) .' ])."
		
	self preGen.	
	builder classes do:[:aFMXClass| self generateClass: aFMXClass ].
	self postGen.
	
	"reload packages that depends on the generated code"
	self reloadExtentions.
]

{ #category : #actions }
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

	self addInstancesVariablesTo: aFMXClass.
	
]

{ #category : #'generating-visitor' }
ASTCGeneratorNew >> generateVisitorsClasses [
	| superclass classSymbol |
	"AbstractVisitor"
	superclass := #Object.
	classSymbol := (self prefix , 'Visitor') asSymbol.
	astVisitorClass := self
		createClass: classSymbol
		superclass: superclass
		withTag: 'visitor'.

		"CallSuperVisitor --|> abstractVisitor"

		"WalkerVisitor --|> AbstractVisitor"
		superclass := classSymbol.
		classSymbol := (self prefix , 'WalkerVisitor') asSymbol.
		astWalkerVisitorClass := self
			createClass: classSymbol
			superclass: superclass
			withTag: 'visitor'.

			"Printer visitor --|> WalkerVisitor"
			superclass := classSymbol.
			classSymbol := (self prefix , 'PrinterVisitor') asSymbol.
			astPrinterVisitor := self
				createClass: classSymbol
				superclass: superclass
				withIVs: 'currentDepth stream'
				withTag: 'visitor'.
			self addPrinterVisitorsMethods.

		"DebugStructureVisitor --|> WalkerVisitor"
		classSymbol := (self prefix , 'DebugStructureVisitor') asSymbol.
		astDebugStructureVisitor := self
			createClass: classSymbol
			superclass: superclass
			withTag: 'visitor'.

			"StructureValidatorVisitor --|> DebugStructureVisitor"
			superclass := classSymbol.
			classSymbol := (self prefix , 'StructureValidatorVisitor') asSymbol.
			astStructureValidatorVisitor := self
				createClass: classSymbol
				superclass: superclass
				withIVs:'errors'
				withTag: 'visitor'.
			self addStructureValidatorVisitorMethods.
]

{ #category : #initialization }
ASTCGeneratorNew >> initialize [
	| builderClass |
	self flag:#ModularityNeeded. "ASTCBuilder shouldn't be hardcoded, but an argument. Stays that way for developpement speed."
	self flag:#todo. "Modularity on collections used"
	self flag:#toRemove. "remove the Transcript clear, it's just for development."
	
	Transcript clear.
	debug := true.
	super initialize.
	
	self initializeDefault.
	builderClass:=ASTCBuilder.
	
	builder:=builderClass builderWithDefinitions.	
	prefix:= builderClass prefix.
	packageName:=builderClass packageName.
]

{ #category : #initialization }
ASTCGeneratorNew >> initializeDefault [
	self flag:#modularty.
	parentPropertyName:='parent'.
	collectionsType:=ASTCContainer.
	
]

{ #category : #actions }
ASTCGeneratorNew >> makePackage [
	"Create the package for the generated classes"
	self addPackageNamed: packageName.
]

{ #category : #'creation-system' }
ASTCGeneratorNew >> makePackageNameWith:aTag [
	^String streamContents:[:s| 
		s << packageName. 
		aTag ifNotEmpty:[:tag| s << $- << aTag ]
		]
		
]

{ #category : #'name-formating' }
ASTCGeneratorNew >> methodClassSignatureFor: aClassNameAsString withPrefix: aPrefix [
	^String streamContents:[:s|
		s nextPutAll:aPrefix;
		nextPutAll: aClassNameAsString capitalized;
		nextPutAll:': ';
		nextPutAll: (self aClassAsVariableName: aClassNameAsString).
		].
]

{ #category : #'name-formating' }
ASTCGeneratorNew >> methodSuperclassSignatureFor: aClassNameAsString withPrefix: aPrefix [
	self flag:#refactor."horrific, needs a big refactor. The whole class, not just this"
	^String streamContents:[:s|
		s nextPutAll:aPrefix;
		nextPutAll: currentSuperclass asString capitalized;
		nextPutAll:': ';
		nextPutAll: (self aClassAsVariableName: aClassNameAsString).
		].
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
	self halt.
	self addAllClassTesterOnNode.
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

{ #category : #generating }
ASTCGeneratorNew >> relationSideStuff [
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
ASTCGeneratorNew >> reloadExtentions [
	| icebergRepo listOfPackageNameToReload listOfPackageToReload |
	
	icebergRepo := IceRepository registry detect:[:aRepository| aRepository name = 'ASTC' or:[aRepository name ='astc']].

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
ASTCGeneratorNew >> typedPropertiesStuff [
	currentTypedProperties do:[:aTypedProperty| self addProperty:aTypedProperty name isMany: false isProperty:true ].
]

{ #category : #visiting }
ASTCGeneratorNew >> visitClass: aClass [
	"Visit a class, build it, and deploy it on the system."
	| className |
	
	currentSuperclass := (aClass classGeneralization ifNotNil:[ :class| prefix,class name ] ifNil:['Object']) asSymbol. "we get a symbol of the Superclass"
	className := (prefix,aClass name) asSymbol."we get the new class name and format it"
	
	"And we create it"
	currentClass := self createClass: className superclass: currentSuperclass withTag: 'Node'.
	currentRelationshipSides := LinkedList new.
	currentTypedProperties := LinkedList new.
	
	currentClass crLog.
	super visitClass:aClass."fill up with property and properties methods, such as accessors"
	
	self typedPropertiesStuff.	
	self relationSideStuff.
	self classStuffOnCurrentClass.


]

{ #category : #visiting }
ASTCGeneratorNew >> visitRelationSide: aRelationSide [
	aRelationSide isContainer ifTrue:[
		self addInstanceVariable: aRelationSide to: aRelationSide relatedClass realClass ]
]

{ #category : #visiting }
ASTCGeneratorNew >> visitTypedProperty: aTypedProperty [
	self addInstanceVariable: aTypedProperty to: aTypedProperty realClass
]
