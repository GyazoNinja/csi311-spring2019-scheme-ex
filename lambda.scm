
#lang racket

( (lambda (n) (+ n 1))   ; define it 
  5                      ; use it, then its gone...
)



( (lambda (x) (+ x x))
  (* 3 4)
)


(define (quadruple x)                    ; define a function "quadruple" 
  (let ((double (lambda (y) (+ y y))))   ; let "double" be a lambda function (+ y y) 
    (double (double x))))                ; within the let, "double" has meaning - use it 

(display "(quadruple 4) = ")
(quadruple 4) 


(let ((h (lambda (x y . z) (list (list x y) z))))
  (h 'a 'b 'c 'd))




