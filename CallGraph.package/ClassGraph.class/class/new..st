instance creation
new: aClass
	^ self new
		representedClass: aClass;
		methods: (aClass methods , aClass class methods);
		buildGraph;
		yourself