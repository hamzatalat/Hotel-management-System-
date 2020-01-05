(defun manu ()
	(print  "---------------------Welcome to the Sab Pizza and pasta Shop---------------------")
	(print  "We are Offering Following packages,Please select according to your choice thanks")
	(print  "press 1 -> 1 large Pizza = 12 AUD ")
	(print  "press 2 -> 2 large Pizzas = 22 AUD  ")
	(print  "press 3 -> N large Pizzas = N*10 AUD  (Free 1 garlic Bread for every 3 pizzas) where this package is applied when pizzas are 3 or more than 3  ")
	(print  "press 4 -> 1 large Pasta = 8 AUD  ")
	(print  "press 5 -> 2 large pastas = 15 AUD  ")
	(print  "press 6 -> M Large pastas = M*7 (Free 1.25 Lite soft Drinks for every 3 pastas) where this package is applied when pizzas are 3 or more than 3 pastas  ")
	(print  "press 7 -> to exit  ")
	)

(defvar *total_pizza_price* 0) 
(defvar *total_pasta_price* 0) 
(defvar *deal1_orders* 0)
(defvar *deal2_orders* 0)
(defvar *deal3_orders* 0)
(defvar *deal4_orders* 0)
(defvar *deal5_orders* 0)
(defvar *deal6_orders* 0)

(defun choice (choices)
	(case choices
	(1
		(defvar *string1* "(DEAL 1) 1 large Pizza  ")
		(format t "~a ~%" *string1* )
		(setf *total_pizza_price* (+ *total_pizza_price* 12) )
		(setf *deal1_orders* (+ *deal1_orders* 1) )
		)

	(2
		(defvar *string2* "(DEAL 2) 2 large Pizza ")
		(format t "~a ~%" *string2*)
		(setf *total_pizza_price* (+ *total_pizza_price* 44) )
		(setf *deal2_orders* (+ *deal2_orders* 1) )
		)
	(3
		
		(defvar *string3* " (DEAL 3) N deal,N must have greater than or equal to 3 :")
		(format t " ~a ~%" *string3*)
		(setq quantity_item (read))
		(if (>= quantity_item 3)
			(progn
		(setf *total_pizza_price* (+ *total_pizza_price*  50 ) )
		(setf *deal3_orders* (+ *deal3_orders* quantity_item) )
		))
		(format t "No deal ~%")
		)

	(4
		
		(defvar *string4* "(DEAL 4) 1 large pasta ")
		(format t "~a ~%" *string4*)
		(setf *total_pasta_price* (+ *total_pasta_price* 8) )
		(setf *deal4_orders* (+ *deal4_orders* 1) )
		)

	(5
		
		(defvar *string5* "(DEAL 5) 2 large pastas ")
		(format t "~a ~%" *string5*)
		(setf *total_pasta_price* (+ *total_pasta_price* 30) )
		(setf *deal5_orders* (+ *deal5_orders* 2) )
		)


	(6
		
		(defvar *string6* "(DEAL 6) M deal,M must have greater than or equal to 3 ")
		(format t " ~a ~%" *string6*) 
		(setq quantity_item (read))
		(if (>= quantity_item 3)
			(progn
		(setf *total_pasta_price* (+ *total_pasta_price*  70 ) )
		(setf *deal6_orders* (+ *deal6_orders* quantity_item) )
		))
		(format t "NO deal ~%")
		)
	)
)

(defvar *final_price* 0)


(defun invoice_details()
	(defvar *Invoice1* "--------------------Invoice Details--------------------")
	(format t " ~a ~%" *Invoice1*)

	(unless (not(> *deal1_orders* 0))
	(progn
		(defvar *string11* "(DEAL 1) 1 large Pizza [ORDERD QUANTITY :: ")
		(format t "~a ~d ~%" *string11* *deal1_orders*)
		))


	(unless (not(> *deal2_orders* 0))
	(progn
		(defvar *string22* "(DEAL 2) 2 large Pizza [ORDERD QUANTITY ::")
		(format t "~a ~d ~%" *string22* *deal2_orders*)
		))
	(unless (not(> *deal3_orders* 0))
	(progn
		(defvar *string33* " (DEAL 3) N deal,N must have greater than or equal to 3 [ORDERD QUANTITY ::")
		(format t " ~a ~d ~%" *string33* *deal3_orders*)
		))

	(unless (not(> *deal4_orders* 0))
	(progn
		(defvar *string44* "(DEAL 4) 1 large pasta [ORDERD QUANTITY ::")
		(format t "~a ~d ~%" *string44* *deal4_orders*)
		))
	(unless (not(> *deal5_orders* 0))
	(progn
		(defvar *string55* "(DEAL 5) 2 large pastas  [ORDERD QUANTITY :: ")
		(format t "~a ~d ~%" *string55* *deal5_orders*)
		))

	(unless (not(> *deal6_orders* 0))
	(progn
		(defvar *string66* "(DEAL 6) M deal,M must have greater than or equal to 3 [ORDERD QUANTITY ::")
		(format t " ~a ~d ~%" *string66* *deal6_orders*)
		))


	(setf *final_price* (+ *final_price* *total_pizza_price* ))
	(setf *final_price* (+ *final_price* *total_pasta_price* ))

	(format t "Total Price to be paid = ~d ~%" *final_price*)

	)

(defvar *season_piza* 0)
(defvar *season_piza_price* 0)
(defvar *season_pasta_price* 0)
(defvar *season_pasta* 0)
(defvar *season_sales* 0)
(defun sasion_calculations ()
	(setf *season_piza* (+ *season_piza* *deal1_orders* ))
	(setf *season_piza* (+ *season_piza* *deal2_orders* ))
	(setf *season_piza* (+ *season_piza* *deal3_orders* ))
	(setf *season_pasta* (+ *season_pasta* *deal4_orders* ))
	(setf *season_pasta* (+ *season_pasta* *deal5_orders* ))
	(setf *season_pasta* (+ *season_pasta* *deal6_orders* ))
	(setf *season_piza_price* (+ *season_piza_price* *total_pizza_price* ))
	(setf *season_pasta_price* (+ *season_pasta_price* *total_pasta_price* ))	
	(setf *season_sales* (+ *season_sales* *total_pasta_price* ))
	(setf *season_sales* (+ *season_sales* *total_pizza_price* ))
	(setf *final_price* 0)
	(setf *total_pizza_price* 0)
	(setf *total_pasta_price* 0)
	(setf *deal1_orders* 0)
	(setf *deal2_orders* 0)
	(setf *deal3_orders* 0)
	(setf *deal4_orders* 0)
	(setf *deal5_orders* 0)
	(setf *deal6_orders* 0)

	)
(defun final_function ()
	(defvar *final_string1* "Total Pizza sold from inventory ")
	(format t "~a ~d ~%" *final_string1* *season_piza*)
	(defvar *final_string2* "Total Pasta sold from inventory ")
	(format t "~a ~d ~%" *final_string2* *season_pasta*)
	(defvar *final_string3* "Total money earned today from pizza is ")
	(format t "~a ~d ~%" *final_string3* *season_piza_price*)
	(defvar *final_string4* "Total money earned today from Pasta is ")
	(format t "~a ~d ~%" *final_string4* *season_pasta_price*)
	(format t " Total income from the season is ~d ~% "  *season_sales*)
	)


(defvar *choices* 0)
(loop
(loop
(manu)
(setq *choices* (read))
(choice *choices*)
(when (= *choices* 7)(return *choices*))
)
(invoice_details)
(defvar *fnl_stmnt* "Do you want to continue session, press 1 for yes or press 0 for no ")
(format t "~a ~%"  *fnl_stmnt* )
(setq input (read))
(sasion_calculations)
(when (= input 0)(return input))
)
(final_function)
