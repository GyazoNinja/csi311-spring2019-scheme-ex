#lang racket 

(define (sum s)
 (cond ((null? s) 0)
       (else (+ (car s) (sum (cdr s))))))

(define mylist  '(1 2 3 4 5)) 
(display (car mylist))
(display (cdr mylist))
(display (sum mylist))

