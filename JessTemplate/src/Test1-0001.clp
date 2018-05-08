(deftemplate patient
	(slot temp)
	(slot age)
)
(defrule is_one_year_old
	(patient (age 1))
	=>
	(printout t "Hello little one!" crlf)
)

(defrule has_fever
	(patient {temp > 38.0})
	=>
	(printout t "Your have fever" crlf)
	(assert (fever))
)

(reset)
(assert (patient (age 1)(temp 39.9)))
(run)
(facts)