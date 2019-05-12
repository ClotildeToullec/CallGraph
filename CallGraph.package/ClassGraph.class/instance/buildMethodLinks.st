building
buildMethodLinks
	methodLinks := Dictionary new.
	methods
		do:
			[ :meth | methodLinks at: meth put: (MethodLink new compiledMethod: meth) ]