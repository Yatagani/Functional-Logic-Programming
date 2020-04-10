;1. Представить следующие списки в виде списочных ячеек:
'(open close halph)						
'((open1) (close2) (halph3))	
'((one) for all (and (me (for you))))		
'((TOOL) (call))		
'((TOOL1) (call2)) ((sell))
'(((TOOL) (call)) ((sell)))


;2. Используя только функции car и cdr, написать выражения, возвращающие
;  1) второй	
;  2) третий	 
;  3) четвертый элементы заданного списка.

(car (cdr '(1 2 3 4 5)))		; second element
(car (cdr (cdr '(1 2 3 4 5))))		; third element
(car (cdr (cdr (cdr '(1 2 3 4 5)))))	; fourth element
