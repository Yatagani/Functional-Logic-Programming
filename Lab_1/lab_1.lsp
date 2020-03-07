5. Написать функции

(f ar1 ar2 ar3 ar4) -> ((ar1 ar2) (ar3 ar4))
(defun f (ar1 ar2 ar3 ar4)
	(list
		(list ar1 ar2)
		(list ar3 ar4)
	)
)

 (defun f (a1 a2 a3 a4)
	`((,a1 ,a2) (,a3 ,a4))
)

(f 1 2 3 4)




(f ar1 ar2) ->	((ar1) (ar2))
(defun f (ar1 ar2)
	(list
		(list ar1)
		(list ar2)
	)
) 

(defun f (a1 a2)
`((,a1) (,a2)))

(f 1 2)




(f ar1) ->	(((ar1)))
(defun f (ar1)
	(list (list (list ar1)))
)

(defun f (a1)
`(((,a1)))

(f 1)

