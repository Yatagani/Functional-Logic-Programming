Part 1

Вычисляет сумму четных чисел от a до b
(defun get_sum_helper (lst a b sum)
	(cond
		(
			(null lst) 
			sum
		)
		(
			(listp (car lst))
			(get_sum_helper (cdr lst) a b (get_sum_helper (car lst) a b sum))
		)
		(
			(and
				(numberp (car lst))
				(evenp (car lst))
				(or
					(and (>= a (car lst))(<= b (car lst)))
					(and (<= a (car lst))(>= b (car lst)))
				)
			)
			(get_sum_helper (cdr lst) a b (+ sum (car lst)))
		)
		(
		(get_sum_helper (cdr lst) a b sum)
		)
	)
)


Вспомогательная функция-обертка для вычисления суммы
(defun get_sum (lst a b)
	(get_sum_helper lst a b 0))


Проверяет, что в списке есть числа
(defun check_nums_helper (lst check)
	(cond
		(
			(or (null lst) check)
			check
		)
		(
			(numberp (car lst))
		)
		(
			(listp (car lst))
			(check_nums_helper (cdr lst) (check_nums_helper (car lst) check))
		)
		(
			(check_nums_helper (cdr lst) check)
		)
	)
)


Вспомогательная функция обертка для проверки, что в списке есть числа
(defun check_nums (lst)
	(check_nums_helper lst nil))


Функция вставки элемента на k-ую позицию:
(defun insert_element_helper (lst k element new_lst)
	(cond
		(
			(null lst)
			new_lst
		)
		(
			(= k 0)
			(insert_element_helper (cdr lst) (- k 1) element (cons (car lst) (cons element new_lst)))
		)
		(
			(insert_element_helper (cdr lst) (- k 1) element (cons (car lst) new_lst))
		)
	)
)


Вспомогательная функция-обертка для вставки элемента на k-ую позицию:
(defun insert_element (lst k element)
	(reverse (insert_element_helper lst k element nil)))


Функция, которая определяет, есть ли в списке числа, если есть, 
то она вычисляет сумму четных чисел между a и b и вставляет на k-ую позицию списка, 
иначе выводит сообщение, что чисел нет:
(defun task (lst a b k)
	(cond
		(
			(check_nums lst)
			(insert_element lst k (get_sum lst a b))
		)
		((princ "There are no numbers in the list"))
	)
)

Part 2 - Functional

Функция, возвращающая список четных чисел между a и b:
(defun get_between (lst a b)
	(mapcan #'(lambda (x)
		(cond
			(
				(and
					(numberp x)
					(evenp x)
					(or
						(and (>= a x)(<= b x))
						(and (<= a x)(>= b x))
					)
				)
				(cons x nil)
			)
			(
				(listp x)
				(get_between x a b)
			)
		)
		) lst
	)
)


Функция, возвращающая сумму четных чисел между a и b:
(defun get_sum (lst a b)
	(reduce #'+ (get_between lst a b)))


Функция, возвращающая список из t и nil, соответствующих проверке каждого элемента на число:
(defun is_nums (lst)
	(mapcan #'(lambda (x)
		(cond
			(
				(numberp x)
				(cons t nil)
			)
			(
				(listp x)
				(is_nums x)
			)
			(
				(cons nil nil)
			)
		)
	) lst )
)


Функция, проверяющая, есть ли в списке числа:
(defun check_nums (lst)
	(and lst (reduce #'(lambda (a b)
		(or a b)
		)
		(is_nums lst)
		)
	)
)


Функция, которая определяет, есть ли в списке числа, если есть, 
то она вычисляет сумму четных чисел между a и b и вставляет ее в конец списка, 
иначе выводит сообщение, что чисел нет:
(defun task (lst a b)
	(cond
		(
			(check_nums lst)
			(nconc lst (cons (get_sum lst a b) nil))
		)
			(pr
		(inc "There are no numbers in the list")
		)
	)
)
