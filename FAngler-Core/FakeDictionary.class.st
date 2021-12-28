Class {
	#name : #FakeDictionary,
	#superclass : #Object,
	#category : #'FAngler-Core'
}

{ #category : #'instance creation' }
FakeDictionary class >> newFrom: aDict [ 
	"Answer an instance of me containing the same associations as aDict.
	 Error if any key appears twice."
	| newDictionary |
	newDictionary := self new: aDict size.
	aDict associationsDo:
		[:x |
		(newDictionary includesKey: x key)
			ifTrue: [self error: 'Duplicate key: ', x key printString]
			ifFalse: [newDictionary add: x]].
	^ newDictionary

"	NewDictionary newFrom: {1->#a. 2->#b. 3->#c}
	{1->#a. 2->#b. 3->#c} as: NewDictionary
	NewDictionary newFrom: {1->#a. 2->#b. 1->#c}
	{1->#a. 2->#b. 1->#c} as: NewDictionary
"
]

{ #category : #'instance creation' }
FakeDictionary class >> newFromKeys: keys andValues: values [
	"Create a dictionary from the keys and values arguments which should have the same length."
	"(Dictionary newFromKeys: #(#x #y) andValues: #(3 6)) >>> (Dictionary new at: #x put: 3; at: #y put: 6 ;yourself)"
	
	| dict |
	dict := self new.
	keys with: values do: [ :k :v | dict at: k put: v ].
	^ dict
]

{ #category : #'instance creation' }
FakeDictionary class >> newFromPairs: anArray [
	"Answer an instance of me associating (anArray at: i) to (anArray at: i+1)
	 for each odd i.  anArray must have an even number of entries."

	"Dictionary newFromPairs: {'Red' . Color red . 'Blue' . Color blue . 'Green' . Color green}."

	| newDictionary |
	newDictionary := self new: anArray size / 2.
	1 to: anArray size - 1 by: 2 do: [ :i | newDictionary at: (anArray at: i) put: (anArray at: i + 1) ].
	^ newDictionary
]

{ #category : #comparing }
FakeDictionary >> = aDictionary [
	"Two dictionaries are equal if
	 (a) they are the same 'kind' of thing.
	 (b) they have the same set of keys.
	 (c) for each (common) key, they have the same value.
	See issue 16760 before changing"

	self == aDictionary ifTrue: [^true].
	self species == aDictionary species ifFalse: [^false].
	self size = aDictionary size ifFalse: [^false].
	self associationsDo: [:assoc|
		(aDictionary at: assoc key ifAbsent: [^false]) = assoc value
			ifFalse: [^false]].
	^true
]

{ #category : #adding }
FakeDictionary >> add: anAssociation [
	^ self 
]

{ #category : #adding }
FakeDictionary >> addAll: aKeyedCollection [
	^ self
]

{ #category : #accessing }
FakeDictionary >> associationAt: key [ 
	"Returns the association for the given key."

	^ self associationAt: key ifAbsent: [self errorKeyNotFound: key]
]

{ #category : #accessing }
FakeDictionary >> associationAt: key ifAbsent: aBlock [
	"Answer the association with the given key.
	If the key is not found, return the result of evaluating aBlock."

	^ aBlock value
]

{ #category : #accessing }
FakeDictionary >> associationAt: key ifPresent: aBlock [
	"Answer the value of evaluating aBlock optionally with the association
	for the given key. If the key is not found, return nil."

	^ nil
]

{ #category : #accessing }
FakeDictionary >> associationAt: key ifPresent: aPresentBlock ifAbsent: anAbsentBlock [
	"Lookup the given key in the receiver. If it is present, answer the
	value of evaluating the first block optionally with the association for the key.
	Otherwise answer the value of the second block."

	self associationAt: key ifPresent: [:assoc | ^ aPresentBlock cull: assoc].
	^ anAbsentBlock value
]

{ #category : #accessing }
FakeDictionary >> associations [
	"Answer a collection containing the receiver's associations."
	"Suggested by l. Uzonyi"
	
	^Array new: self size streamContents: [ :stream |
		self associationsDo: [ :each | stream nextPut: each ] ]
]

{ #category : #enumerating }
FakeDictionary >> associationsDo: aBlock [ 
	"Evaluate aBlock for each of the receiver's elements (key/value 
	associations)."

	^ self
]

{ #category : #enumerating }
FakeDictionary >> associationsSelect: aBlock [ 
	"Evaluate aBlock with each of my associations as the argument. Collect
	into a new dictionary, only those associations for which aBlock evaluates
	to true."

	| newCollection |
	newCollection := self species new.
	self associationsDo: 
		[:each | 
		(aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection
]

{ #category : #accessing }
FakeDictionary >> at: key [ 
	"Answer the value associated with the key."

	^ self at: key ifAbsent: [self errorKeyNotFound: key]
]

{ #category : #'nested dictionaries' }
FakeDictionary >> at: firstKey at: secondKey [
	"Return the object stored in the second dictionary at secondKey. The second dictionary is accessed via the key firstKey."

	"
	(Dictionary new
		at: #top at: #below1 put: 1;
		at: #top at: #below1 put: 2;
		at: #top at: #below1)
	>>>
	2"

	^ self at: firstKey at: secondKey ifAbsent: [self errorKeyNotFound: secondKey]
]

{ #category : #'nested dictionaries' }
FakeDictionary >> at: firstKey at: secondKey ifAbsent: aZeroArgBlock [
		"Return the object stored in the second dictionary at secondKey. The second dictionary is accessed via the key firstKey. Execute aZeroArgBlock in case one of the key is wrong."
		
	| subDictionary |
	subDictionary := self at: firstKey ifAbsent: [ ^ aZeroArgBlock value ].
	^ subDictionary at: secondKey ifAbsent: aZeroArgBlock
]

{ #category : #'nested dictionaries' }
FakeDictionary >> at: firstKey at: secondKey ifAbsentPut: aZeroArgBlock [
	"Return the object stored in the second dictionary at secondKey. The second dictionary is accessed via the key firstKey. If firstKey is not defined, set a new dictionary for the second key and set the value of aZeroArgBlock execution. If firstKey is defined and not second key set the value of aZeroArgBlock execution. See NestedDictionaryTest for examples."

	| subDictionary |
	subDictionary := self at: firstKey ifAbsentPut: [ self species new ].
	^ subDictionary at: secondKey ifAbsentPut: aZeroArgBlock
]

{ #category : #'nested dictionaries' }
FakeDictionary >> at: firstKey at: secondKey put: aValue [
	"Set a value at secondKey in the dictionary returned by firstKey."

	| subDictionary |
	subDictionary := self at: firstKey ifAbsentPut: [ self species new ].
	^ subDictionary at: secondKey put: aValue
]

{ #category : #accessing }
FakeDictionary >> at: key ifAbsent: aBlock [ 
	"Answer the value associated with the key or, if key isn't found,
	answer the result of evaluating aBlock."

	^ aBlock value 
]

{ #category : #accessing }
FakeDictionary >> at: key ifAbsentPut: aBlock [
	"Return the value at the given key.
	If the key is not included in the receiver store and return the result 
	of evaluating aBlock as the new value."

	^ self at: key ifAbsent: [self at: key put: aBlock value]
]

{ #category : #accessing }
FakeDictionary >> at: key ifPresent: aBlock [
	"Lookup the given key in the receiver. If it is present, answer the
	value of evaluating the given block optionally with the value associated
	with the key.
	Otherwise, answer nil."

	^nil
]

{ #category : #accessing }
FakeDictionary >> at: key ifPresent: aPresentBlock ifAbsent: anAbsentBlock [
	"Lookup the given key in the receiver. If it is present, answer the
	value of evaluating the first block optionally with the value associated
	with the key.
	Otherwise answer the value of the second block."

	self at: key ifPresent: [:v | ^ aPresentBlock cull: v].
	^ anAbsentBlock value
]

{ #category : #accessing }
FakeDictionary >> at: key ifPresent: aPresentBlock ifAbsentPut: anAbsentBlock [
	"Lookup the given key in the receiver. If it is present, answer the
	value of evaluating the first block optionally with the value associated
	with the key.
	Otherwise store and return the result of evaluating the second block as the
	new value of the key."

	^ self
		at: key
		ifPresent: aPresentBlock
		ifAbsent: [self at: key put: anAbsentBlock value]
]

{ #category : #accessing }
FakeDictionary >> at: key put: anObject [ 
	"Set the value at key to be anObject.  If key is not found, create a
	new entry for key and set is value to anObject. Answer anObject."

	| index assoc |
	^ anObject
]

{ #category : #accessing }
FakeDictionary >> at: key update: updateBlock [ 
	"I am used to update the value at a given key, or if the key does not exist, to throw an error"
	self at: key update: updateBlock initial: [ self errorKeyNotFound: key ].
]

{ #category : #accessing }
FakeDictionary >> bindingOf: varName [
	^self associationAt: varName ifAbsent:[nil]
]

{ #category : #enumerating }
FakeDictionary >> bindingsDo: aBlock [
	self associationsDo: aBlock
]

{ #category : #enumerating }
FakeDictionary >> collect: aBlock [ 
	"Evaluate aBlock with each of my values as the argument.  Collect the
	resulting values into a collection that is like me. Answer with the new
	collection."
	| newCollection |
	newCollection := self species new.
	self associationsDo:[:each |
		newCollection at: each key put: (aBlock value: each value).
	].
	^newCollection
]

{ #category : #adding }
FakeDictionary >> declare: key from: aDictionary [ 
	"Add key to the receiver. If key already exists, do nothing. If aDictionary 
	includes key, then remove it from aDictionary and use its association as 
	the element of the receiver."

	(self includesKey: key) ifTrue: [^ self].
	(aDictionary includesKey: key)
		ifTrue: 
			[self add: (aDictionary associationAt: key).
			aDictionary removeKey: key]
		ifFalse: 
			[self add: key -> nil]
]

{ #category : #enumerating }
FakeDictionary >> difference: aCollection [
	"Answer the set theoretic difference of two collections. This is a specialized version for Dictionaries keeping the keys of the objects. At a slightly higher price of an additional Set to track duplicates."

	| other result duplicates |
	
	other := aCollection asSet.
	duplicates := Set new.
	result := self class new: self size.
	
	self keysAndValuesDo: [ :key :value|
		((other includes: value) not and: [ (duplicates includes: value) not ])
			ifTrue: [ 
				duplicates add: value.
				result at: key put: value]].
	
	^ result
]

{ #category : #enumerating }
FakeDictionary >> do: aBlock [

	^self valuesDo: aBlock
]

{ #category : #private }
FakeDictionary >> errorKeyNotFound: aKey [

	KeyNotFound signalFor: aKey
]

{ #category : #private }
FakeDictionary >> errorValueNotFound: value [

	ValueNotFound signalFor: value
]

{ #category : #private }
FakeDictionary >> fixCollisionsFrom: start [
	"The element at start has been removed and replaced by nil.
	This method moves forward from there, relocating any entries
	that had been placed below due to collisions with this one."
	| element index |
	^ self
]

{ #category : #'flat collect' }
FakeDictionary >> flatCollect: aBlock [ 
	"Evaluate aBlock for each of the receiver's values (by opposition to keys) and answer the
	list of all resulting values flatten one level. Assumes that aBlock returns some kind
	of collection for each element. Equivalent to the lisp's mapcan"
	"If you want to have keys use associations collect: or associations flatCollect: "
	
	^ self flatCollect: aBlock as: OrderedCollection
]

{ #category : #testing }
FakeDictionary >> hasBindingThatBeginsWith: aString [
	"Answer true if the receiver has a key that begins with aString, false otherwise"
	
	self keysDo:[:each | 
		(each beginsWith: aString)
			ifTrue:[^true]].
	^false
]

{ #category : #testing }
FakeDictionary >> includes: anObject [

	self do: [:each | anObject = each ifTrue: [^true]].
	^false
]

{ #category : #testing }
FakeDictionary >> includesAssociation: anAssociation [
  ^ (self   
      associationAt: anAssociation key
      ifAbsent: [ ^ false ]) value = anAssociation value

]

{ #category : #testing }
FakeDictionary >> includesIdentity: anObject [
	"Answer whether anObject is one of the values of the receiver.  Contrast #includes: in which there is only an equality check, here there is an identity check"

	self do: [:each | anObject == each ifTrue: [^ true]].
	^ false
]

{ #category : #testing }
FakeDictionary >> includesKey: key [ 
	"Answer whether the receiver has a key equal to the argument, key."
	
	^ false
	"We could use #notNil here, but ProtoObject doesn't understand it."
]

{ #category : #testing }
FakeDictionary >> isDictionary [
	^true
]

{ #category : #testing }
FakeDictionary >> isHealthy [
	"Test that object hashes match their positions stored in set's array,
	answer true if everything ok, false otherwise
	
	Dictionary allInstances select: [:dict |
		dict isHealthy not ]
	Dictionary allSubInstances select: [:dict |
		dict isHealthy not ]
	"
	^ true
]

{ #category : #accessing }
FakeDictionary >> keyAtIdentityValue: value [ 
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer nil.
	Note: There can be multiple keys with the same value. Only one is returned."

	^self keyAtIdentityValue: value ifAbsent: [self errorValueNotFound: value]
]

{ #category : #accessing }
FakeDictionary >> keyAtIdentityValue: value ifAbsent: exceptionBlock [
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer the result of evaluating exceptionBlock.
	Note: There can be multiple keys with the same value. Only one is returned."
 
	self associationsDo: 
		[:association | value == association value ifTrue: [^association key]].
	^exceptionBlock value
]

{ #category : #accessing }
FakeDictionary >> keyAtValue: value [ 
	"Answer the key that is the external name for the argument, value. If 
	there is none, signal an error."

	^self keyAtValue: value ifAbsent: [self errorValueNotFound: value]
]

{ #category : #accessing }
FakeDictionary >> keyAtValue: value ifAbsent: exceptionBlock [
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer the result of evaluating exceptionBlock.
	: Use =, not ==, so stings like 'this' can be found.  Note that MethodDictionary continues to use == so it will be fast."
 
	self associationsDo: 
		[:association | value = association value ifTrue: [^association key]].
	^exceptionBlock value
]

{ #category : #accessing }
FakeDictionary >> keyForIdentity: anObject [
	"If anObject is one of the values of the receive, return its key, else return nil.  Contrast #keyAtValue: in which there is only an equality check, here there is an identity check"

	self associationsDo: [:assoc | assoc value == anObject ifTrue: [^ assoc key]].
	^ nil
]

{ #category : #accessing }
FakeDictionary >> keys [
	"Answer an Array containing the receiver's keys."
	
	^Array new: self size streamContents: [:s| self keysDo: [:key| s nextPut: key]]
]

{ #category : #enumerating }
FakeDictionary >> keysAndValuesDo: aBlock [
	^self associationsDo:[:assoc|
		aBlock value: assoc key value: assoc value].
]

{ #category : #removing }
FakeDictionary >> keysAndValuesRemove: keyValueBlock [
	"Removes all entries for which keyValueBlock returns true."
	"When removing many items, you must not do it while iterating over the dictionary, since it may be changing.  This method takes care of tallying the removals in a first pass, and then performing all the deletions afterward.  Many places in the sytem could be simplified by using this method."

	| removals |
	removals := OrderedCollection new.
	self associationsDo:
		[:assoc | (keyValueBlock value: assoc key value: assoc value)
			ifTrue: [removals add: assoc key]].
 	removals do:
		[:aKey | self removeKey: aKey]
]

{ #category : #enumerating }
FakeDictionary >> keysDo: aBlock [ 
	"Evaluate aBlock for each of the receiver's keys."

	self associationsDo: [:association | aBlock value: association key]
]

{ #category : #accessing }
FakeDictionary >> keysSortedSafely [
	"Answer an Array containing the receiver's keys."
 	"Suggested by l. Uzonyi"
	
 	| sortedKeys |
 	sortedKeys := Array 
						new: self size 
						streamContents: [ :stream |
 								self keysDo: [ :each | stream nextPut: each ] ].
 	sortedKeys sort: [ :x :y |
 		"Should really be use <obj, string, num> compareSafely..."
 		((x isString and: [ y isString ])
 			or: [ x isNumber and: [ y isNumber ] ])
 			ifTrue: [ x < y ]
 			ifFalse: [ x class == y class
 				ifTrue: [ x printString < y printString ]
 				ifFalse: [ x class name < y class name ] ] ].
 	^sortedKeys
]

{ #category : #private }
FakeDictionary >> noCheckAdd: anObject [
	"Must be defined separately for Dictionary because (self findElementOrNil:) expects a key, not an association."

	^ anObject
]

{ #category : #private }
FakeDictionary >> noCheckNoGrowFillFrom: anArray [
	"Add the elements of anArray except nils to me assuming that I don't contain any of them, they are unique and I have more free space than they require."

	^ self
]

{ #category : #copying }
FakeDictionary >> postCopy [
	"Must copy the associations, or later store will affect both the
original and the copy"
	^ self
]

{ #category : #printing }
FakeDictionary >> printElementsOn: aStream [ 
	aStream nextPut: $(.
	self size > 100
		ifTrue: [aStream nextPutAll: 'size '.
			self size printOn: aStream]
		ifFalse: [self keysSortedSafely
				do: [:key | aStream print: key;
						 nextPutAll: '->';				
						 print: (self at: key);
						 space]].
	aStream nextPut: $)
]

{ #category : #private }
FakeDictionary >> rehash [
	"Smalltalk rehash."
	| newSelf |
	^ self
]

{ #category : #removing }
FakeDictionary >> remove: anObject [

	self shouldNotImplement
]

{ #category : #removing }
FakeDictionary >> remove: anObject ifAbsent: exceptionBlock [

	self shouldNotImplement
]

{ #category : #removing }
FakeDictionary >> removeKey: key [ 
	"Remove key from the receiver.
	If key is not in the receiver, notify an error."

	^ self removeKey: key ifAbsent: [self errorKeyNotFound: key]
]

{ #category : #removing }
FakeDictionary >> removeKey: key ifAbsent: aBlock [ 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."

	| index assoc |
	^ self
]

{ #category : #undeclared }
FakeDictionary >> removeUnreferencedKeys [
	"This is private code for the Undeclared handling, not a general API." 
	"Undeclared removeUnreferencedKeys"

	^ self unreferencedKeys do: [ :key | self removeKey: key ]
]

{ #category : #private }
FakeDictionary >> scanFor: anObject [
	"Scan the key array for the first slot containing either a nil (indicating an empty slot) or an element that matches anObject. Answer the index of that slot or zero if no slot is found. This method will be overridden in various subclasses that have different interpretations for matching elements."

	^ 0  "No match AND no empty slot"
]

{ #category : #enumerating }
FakeDictionary >> select: aBlock [ 
	"Evaluate aBlock with each of my values as the argument. Collect into a new dictionary, only those associations for which aBlock evaluates to true."

	| newCollection |
	newCollection := self copyEmpty.
	self associationsDo: [ :each |
		(aBlock value: each value) ifTrue: [
			newCollection add: each copy ] ].
	^newCollection
]

{ #category : #printing }
FakeDictionary >> storeOn: aStream [
	| noneYet |
	aStream nextPutAll: '(('.
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' new)'.
	noneYet := true.
	self associationsDo: 
			[:each | 
			noneYet
				ifTrue: [noneYet := false]
				ifFalse: [aStream nextPut: $;].
			aStream nextPutAll: ' add: '.
			aStream store: each].
	noneYet ifFalse: [aStream nextPutAll: '; yourself'].
	aStream nextPut: $)
]

{ #category : #undeclared }
FakeDictionary >> unreferencedKeys [
	"This is private code for the Undeclared handling"

	^self keys select: [ :key | 
			(self systemNavigation allReferencesTo: (self associationAt: key)) isEmpty ]
]

{ #category : #private }
FakeDictionary >> valueAtNewKey: aKey put: anObject atIndex: index declareFrom: aDictionary [ 
	"Support for coordinating class variable and global declarations
	with variables that have been put in Undeclared so as to
	redirect all references to the undeclared variable."

	(aDictionary includesKey: aKey)
		ifTrue: 
			[self atNewIndex: index 
				put: ((aDictionary associationAt: aKey) value: anObject).
			aDictionary removeKey: aKey]
		ifFalse: 
			[self atNewIndex: index put: (Association key: aKey value: anObject)]
]

{ #category : #accessing }
FakeDictionary >> values [
	"Answer a Collection containing the receiver's values."
	^Array 
		new: self size 
		streamContents: [ :out | self valuesDo: [:value | out nextPut: value]]
]

{ #category : #enumerating }
FakeDictionary >> valuesDo: aBlock [ 
	"Evaluate aBlock for each of the receiver's values.  Implemented with == checks
	merely for the sake of maximum efficiency"

	^ self
]
