internal interpreter access
methodUsesAlternateBytecodeSet: aMethodObj
	<api>
	<inline: true>
	"A negative header selects the alternate bytecode set."
	^self headerIndicatesAlternateBytecodeSet: (objectMemory methodHeaderOf: aMethodObj)