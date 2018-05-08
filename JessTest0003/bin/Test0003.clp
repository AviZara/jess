(defrule suspect_rubella
"Suggest rubella as potential diagnosis"
	(and
      (rash)
      (or
	  (fever)
      (swollen_glands)))	
	=>
(printout t "Suspect rubella" crlf)
)
;(clear)
(reset)
(assert (fever))
(assert (rash))
(run)
(facts)