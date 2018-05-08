(defrule suspect_flu
"Suggest flu as potential diagnosis"
(or
	(fever)
	(sore_throat))
		
=>
(printout t "Suspect Flu" crlf)
)
;(clear)
(reset)
(assert (fever))
(run)
(facts)

	