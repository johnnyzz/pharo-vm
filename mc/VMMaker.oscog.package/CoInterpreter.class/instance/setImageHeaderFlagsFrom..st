image save/restore
setImageHeaderFlagsFrom: headerFlags
	"Set the flags that are contained in the 7th long of the image header."
	imageHeaderFlags := headerFlags. "so as to preserve unrecognised flags."
	fullScreenFlag := headerFlags bitAnd: 1.
	imageFloatsBigEndian := (headerFlags bitAnd: 2) = 0 ifTrue: [1] ifFalse: [0].
	flagInterpretedMethods := (headerFlags bitAnd: 8) ~= 0.
	preemptionYields := (headerFlags bitAnd: 16) = 0.
	newFinalization := (headerFlags bitAnd: 64) ~= 0.

	(SistaVM and: [flagInterpretedMethods]) ifTrue:
		[self print: 'warning, flagInterpretedMethods inoperable in Sista VMs.'; cr]