(defrule suspect_menigitis
"Suggest menigitis as potential diagnosis"
(and
    (fever)
	(headache)
    (neck_stiffness))
		
=>
(printout t "Suspect menigitis" crlf)
)
;(clear)
;initilizing working memory
(reset)
(assert (headache))
(run)
(facts)
