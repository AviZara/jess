(deftemplate patient

    (slot temp)

    (slot age)

    (slot gender)

    (slot weight)

    (slot height)

    (slot name)

    )
 

(defrule BMI_Screening

  ?x<-(patient {age > 10}(gender "m"))
   

    =>

     (printout t ?x.name ", please check BMI! You are" (/ ?x.weight(* ?x.height ?x.height))  crlf)

    )

(defrule has_fever

    (patient {temp > 38.0})

    =>

    (printout t "you have fever" crlf)

    (assert (fever))

    ) 

(defrule gender_is_male

  (patient (gender "male"))

  =>

   (printout t "hello Mr." crlf)

)

 

(reset)

(assert(patient (age 12)(name "Smith")(temp 3)(gender "m")(height 1.86)(weight 70)))

(run)