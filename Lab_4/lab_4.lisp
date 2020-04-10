;8. Написать функцию, которая переводит температуру в системе Фаренгейта в температуру по Цельсию (Формулы: c = 5/9*(f-32.0))
	(defun f-to-c (temp)
		(*	(/ 5 9)
			(- temp 32.0)
		)
	)
	
	(f-to-c 451)
;		232.777777777778


	
;9. Что получится при вычислении каждого из выражений:
	(list 'cons t NIL)	
;	(CONS T NIL) 

	(eval (list 'cons t NIL))
;	(T)

	(eval (eval (list 'cons t NIL)))
;	function T undefined	

	(apply #'cons '(t NIL))	
;	(T)		

	(eval NIL)
;	 NIL	

	(list 'eval NIL)
;	(EVAL NIL)	

	(eval (list 'eval NIL))
;	NIL		