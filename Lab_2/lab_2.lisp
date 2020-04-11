;3. Что будет в результате вычисления выражений
(caadr '((blue cube) (red pyramid)))
;red:	((red pyramid)) -> (red pyramid) -> red

(cdar '((abc) (def) (ghi)))
;():	(abc nil) -> ()

(cadr '((abc) (def) (ghi)))
;(def):	((def) (ghi)) -> (def)

(caddr '((abc) (def) (ghi)))
;(ghi): ((def) (ghi)) -> ((ghi)) -> (ghi)



;4. Напишите результат вычисления выражений:
	(list 'Fred 'and Wilma)				(cons 'Fred '(and Wilma))
;		WILMA unbound						(FRED AND WILMA)
	(list 'Fred '(and Wilma))			(cons 'Fred '(Wilma))
;		(FRED (AND WILMA))					(FRED WILMA)
	(cons nil nil)						(list nil nil)
;		(NIL)								(NIL NIL)
	(cons T nil)						(list T nil)
;		(T)									(T NIL)
	(cons nil T)						(list nil T)
;		(NIL.T)								(NIL T)
	(list nil)							(cons T (list nil))
;		(NIL)								(T NIL)
	(cons (T) nil)						(list (T) nil)
;		func T undefined					func T undefined
	(list '(one two) '(free temp))		(cons '(one two) '(free temp))
;		((ONE TWO) (FREE TEMP))			((ONE TWO) FREE TEMP)


;5. Написать функции
;(f ar1 ar2 ar3 ar4) -> ((ar1 ar2) (ar3 ar4))
(defun f (ar1 ar2 ar3 ar4)
	(list
		(list ar1 ar2)
		(list ar3 ar4)
	)
)

;или
 (defun f (a1 a2 a3 a4)
	`((,a1 ,a2) (,a3 ,a4))
)

(f 1 2 3 4)


;(f ar1 ar2) ->	((ar1) (ar2))
(defun f (ar1 ar2)
	(list
		(list ar1)
		(list ar2)
	)
) 

;или 
(defun f (a1 a2)
`((,a1) (,a2)))

(f 1 2)


;(f ar1) ->	(((ar1)))
(defun f (ar1)
	(list (list (list ar1)))
)

;или 
(defun f (a1)
`(((,a1)))

(f 1)
