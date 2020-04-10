;1. Напишите результаты всех выражений и постройте диаграммы для второго и последнего выражений:
	(equal (+ 1 2) 3)
;		T
	(equal (* 4 7) (- 7 3))
;		nil
	(equal (abs (- 2 4)) 3)
;		nil
	(equal (abs (- 2 4)) 2)
;		T
	(eql (abs (- 2 4)) 2.0)
;		nil
	(eql (abs (- 2 4)) 2)
;		T
	(equal (abs (- 2 4)) 2)
;		T
	(eql (list (abs (- 2 4))) '(2.0))
;		nil
	(equal (list (abs (- 2 4))) '(2))
;		T
	(equalp (list (abs (- 2 4))) '(2.0))
;		T

;2. Написать функцию, вычисляющую гипотенузу прямоугольного треугольника по заданным катетам и составить диаграмму её вычисления.
	(defun hyp (a b)
		(sqrt (+ (* a a)(* b b))))

	(hyp 3 4) 
;	5.0



;3. Написать функцию, вычисляющую объем параллелепипеда по 3-м его сторонам,  и составить диаграмму ее вычисления.
	(defun volume (a b c)
		(* a b c))

	(volume 1 2 3)



;4. Каковы результаты вычисления следующих выражений:
	(list 'a 'b c)				
;	C unbound	

	(cons 'a 'b 'c)
;	CONS requires less than 3 args

	(cons 'a (b c))				
;	func B undefined	

	(list 'a (b c))
;	func B undefined

	(cons 'a '(b c))
;	(A B C)			

	(list a '(b c))	
;	A unbound

	(caddr (1 2 3 4 5))			
;	1 is invalid as func	

	(list (+ 1 '(length '(1 2 3))))
; 	(length (quote (1 2 3))) is not NUMBER



;5. Напишите функцию longer_than от двух списков-аргументов, которая возвращает Т, если первый аргумент имеет большую длину. 
;Проверьте работу функции на одноуровневом и структурированном списке. Допускается использовать (length список)
	(defun longer_than(a b)
		(cond
			((> (length a) (length b))
			T)
		)
	)
	(longer_than '(1 2 3) '(1 2))				
	; T
	(longer_than '(1 (2 (3 (4)))) '(1 (2 (3))))	
	; NIL



;6. Каковы результаты вычисления следующих выражений:
	(cons 3 (list 5 6))			
;	(3 5 6)

	(cons 3 '(list 5 6))
;	(3 LIST 5 6)

	(list 3 'from 9 'gives (- 9 3))
;	(3 FROM 9 GIVES 6)

	(+ (length '(1 foo 2 too)) (car '(21 22 23)))
;	25	{car -> 21, length -> 4, + -> 25}

	(cdr '(cons is short for ans))
;	(IS SHORT FOR ANS)

	(car (list one two))
;	ONE unbound

	(car (list 'one 'two))
;	ONE



;7. Дана функция "defun mystery (x)". 
	(defun mystery (x) 
		(list 
			(second x) (first x)
		))

; 	Какие результаты вычисления следующих выражений:
	(mystery '(one two))	
;	(TWO ONE)

	(mystery 'one 'two)	
;	requires less than 2 args

	(mystery 'free)
;	FREE is not of type LIST

	(mystery (last 'one 'two))
;	ONE is not of type LIST

