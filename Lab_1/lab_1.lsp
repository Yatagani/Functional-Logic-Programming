;1.	 Представить следующие списки в виде списочных ячеек:
	'(open close halph)						
	'((open1) (close2) (halph3))	
	'((one) for all (and (me (for you))))		
	'((TOOL) (call))		
	'((TOOL1) (call2)) ((sell))
	'(((TOOL) (call)) ((sell)))


;2. Используя только функции car и cdr, написать выражения, возвращающие
;	1) второй	
;	2) третий	 
;	3) четвертый элементы заданного списка.

(car (cdr '(1 2 3 4 5)))				; second element
(car (cdr (cdr '(1 2 3 4 5))))			; third element
(car (cdr (cdr (cdr '(1 2 3 4 5)))))	; fourth element



Защита: Написать функции

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

