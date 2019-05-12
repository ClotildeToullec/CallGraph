*CallGraph
callGraph
	| graph b |
	graph := ClassGraph new: self.
	b := RTMondrian new title: self name , ' call graph'.
	b shape box
		size: 30;
		color: Color red.
	b interaction popup text: [ :link | link compiledMethod selector ].
	b nodes: graph methodLinks.
	b shape arrowedLine
		color: Color black;
		inverted.
	b edges
		moveBehind;
		connectToAll: #senders.
	b layout horizontalDominanceTree.
	b view @ RTZoomableView.
	b open