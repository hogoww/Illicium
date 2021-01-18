Extension { #name : #VMSpurMemoryManagerTest }

{ #category : #'*Illicium-Tools' }
VMSpurMemoryManagerTest class >> slotsNamesToIgnore [
	^ #( memory interpreter nextIndex zeroSizedObjectClassIndex methodCacheSize rumpCStackSize stackBuilder methodBuilder wordSize initialAddress stackSpaceSize oldSpaceSize )
]
