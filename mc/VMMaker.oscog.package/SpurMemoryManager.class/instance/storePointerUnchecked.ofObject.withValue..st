object access
storePointerUnchecked: fieldIndex ofObject: objOop withValue: valuePointer
	<api>
	self assert: (self isForwarded: objOop) not.
	^self
		longAt: objOop + self baseHeaderSize + (fieldIndex << self shiftForWord)
		put: valuePointer