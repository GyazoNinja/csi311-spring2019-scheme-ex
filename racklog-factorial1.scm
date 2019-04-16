
#lang racket

(require racklog) 

(define %factorial
  (%rel (x y x1 y1)
    [(0 1)]
    [(x y) (%is x1 (- x 1))
           (%factorial x1 y1)
           (%is y (* y1 x))]))

(%which ()
    (%factorial 0 1))

(%which (n)
        (%factorial 0 n))

; down the rathole we go! 
(%more)

