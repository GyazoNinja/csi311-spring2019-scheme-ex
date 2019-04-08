
#lang racket

(require racklog)

; a scheme definition of the factorial function 
(define factorial
  (lambda (n)
    (if (= n 0) 1
        (* n (factorial
               (- n 1))))))


; a rule which uses the above function 
(define %factorial
  (%rel (x y)
    [(x y)                            ; (x y), where y is the factorial of x 
     (%is y (factorial x))]))


(begin (display "5 factorial is 120 --> ") (%which () (%factorial 5 120)))  ; should be true i.e. '() 
(begin (display "5 factorial is 121 --> ") (%which () (%factorial 5 121)))  ; should be #f 

(begin (display "what is 5 factorial --> ") (%which (y) (%factorial 5 y)))
(%more)  ; any other solutions?


; See https://docs.racket-lang.org/racklog/racket-w-logic.html
; "A price that this efficiency comes with is that we can use %factorial only with its first argument already instantiated"
; Thus we cannot ask
(begin (display "what x factorial is 120 --> ") (%which (x) (%factorial x 120)))
