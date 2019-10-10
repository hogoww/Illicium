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
		
		ifFalse:[[ aPropertyName parent: self ]]) + 
		[:anInstance | propertyName := aPropertyName ])
		withArguments:{ #anInstance -> aPropertyName } asDictionary.
	self addMethod: method asString on: aClass withProtocol: 'accessing'.
	
	(aProperty isRelationSide and: [ aProperty isMany ])
	ifFalse:[ ^self ].

	self flag:#improvement. "Needs to be better to go from plural to singular"
	anElement := ((propertyName first isVowel ifTrue:[ 'an' ] ifFalse:[ 'a' ]) , propertyName capitalized) removeSuffix:'s'. "aProperty from propertys (not a typo..)"
	methodName := 'add' , (propertyName capitalized removeSuffix:'s') , ':'. " addProperty: "
	method :=	 methodName asMethodWithBody: 
		[:anElem| propertyName add: anElem ] 
		withArguments: { #anElem -> anElement } asDictionary.
	self addMethod: method asString on: aClass withProtocol: 'accessing'.

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

	self addInstancesVariablesTo: aFMXClass.
	
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

{ #category : #'generation-visitor-classes' }
ASTCGeneratorNew >> generatePrinterVisitorClass [
	"Printer --|> Walker"
	printerVisitorClass  :=  walkerVisitorClass subclass: (self fullNameOf: #PrinterVisitor)
		instanceVariableNames: 'currentDepth stream'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addPrinterVisitorsMethods.
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
ASTCGeneratorNew >> generateVisitsFor: aClass [
	self generateAbstractVisitOf: aClass.
		self generateSuperclassVisitOf: aClass.
			self generateWalkVisitOf: aClass.
]

{ #category : #'generation-visit' }
ASTCGeneratorNew >> generateWalkVisitOf: aFMXClass [
	"add an empty behavior visit method"

	| method body aClass visitClass |
	aClass := aFMXClass name asAnInstance.

	visitClass :=  aFMXClass name asVisitClassSelector.
	body := [ :anInstance | super visitClass: {aClass} ] asPlainCodeBC.

	aFMXClass relations
		do: [ :aRelation | |propertyName|
				propertyName:= aRelation side name.
				(aRelation side otherSide isContainer)
					ifTrue:[
						(aRelation side isMany
							ifTrue:[ 
								body add: 
									[:anInstance| anInstance propertyName 
										ifNotNil:[:aCollection| aCollection 
											do:[:aMember| aMember acceptVisitor: self ]]]
									withArguments: {#aCollection -> propertyName . #aMember -> propertyName asAnInstance } asDictionary ]
							ifFalse:[ 
								body add: 
									[:anInstance| anInstance propertyName 
										ifNotNil:[:aMember| aMember acceptVisitor: self ] ] 
									withArguments: {#aMember -> propertyName asAnInstance } asDictionary ])]].
						
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
ASTCGeneratorNew >> makePackageNameWith: aTag [
	^ String
		streamContents: [ :s | 
			s << packageName.
			aTag ifNotEmpty: [ :tag | s << $- << aTag ] ]
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
	
	icebergRepo := IceRepository registry detect:[:aRepository| aRepository name uncapitalized = 'astc' ].

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
