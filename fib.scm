#|
csi311 Factorial example
|#

#lang racket

; define a factorial function 
(define (factorial n) 
  (if (= n 0) 1 
    (* n (factorial (- n 1)))
  )
)


; call function 
(factorial 5)






