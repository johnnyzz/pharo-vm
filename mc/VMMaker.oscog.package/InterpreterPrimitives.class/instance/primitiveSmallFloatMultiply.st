arithmetic float primitives
primitiveSmallFloatMultiply
	<option: #Spur64BitMemoryManager>
	| rcvr arg |
	<var: #rcvr type: #double>
	<var: #arg type: #double>

	rcvr := objectMemory smallFloatValueOf: (self stackValue: 1).
	arg := self loadFloatOrIntFrom: self stackTop.
	self successful ifTrue:
		[self pop: 2 thenPushFloat: rcvr * arg]