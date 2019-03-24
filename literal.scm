#lang racket

; a literal 
'(+ 1 10)
(quote (+ 1 10))

; evaluate the literal - this will fail "+" will be unknown!
; (eval '(+ 1 10))

(define ns (make-base-namespace))     ; make a namespace from the typical base
(eval '(+ 1 10) ns)


(equal? '(1 2 3 4 5) '(1 2 3 4 5))
(equal? '(1 2 3 4 5) (reverse '(5 4 3 2 1)))


