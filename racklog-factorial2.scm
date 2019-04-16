
#lang racket

(require racklog) 

(define %factorial
  (%rel (x y x1 y1)
    [(0 1) !]
    [(x y) (%< x 0) ! %fail]
    [(x y) (%is x1 (- x 1))
           (%factorial x1 y1)
           (%is y (* y1 x))]))


(%which ()
    (%factorial 0 1))

(%more)


(%which ()
    (%factorial -1 1))

