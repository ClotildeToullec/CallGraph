building
buildGraph
	methodLinks
		keysAndValuesDo: [ :meth :link | 
			| senders |
			senders := meth senders collect: [ :sender | sender method ].
			link
				senders:
					(methods
						select: [ :m | senders includes: m ]
						thenCollect: [ :s | methodLinks at: s ]) ]