#lang racket

(let ((x 2))
  (+ x 3)) 

(let ((y 3))
  (+ 2 y)) 

(let ((x 2) (y 3))
  (+ x y))



(let ((z 1))
  (+ z 1))


; this will fail - z will be unknown 
;(+ z 1)


(let ((x 1))
  (let ((x (+ x 1)))     
    (+ x x)))             ; as expected, the inner-most defintion of x rules



(define x 1)
(set! x 20)
(display (string-append "define & set example = " (number->string x)))






