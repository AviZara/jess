(defrule suspect_menigitis
"Suggest menigitis as potential diagnosis"
(and
   	(and
    (fever)
	(headache))
    (neck_stiffness))
		
=>
(printout t "Suspect menigitis" crlf)
)
;(clear)
(reset)
(assert (headache))
(run)
(facts)