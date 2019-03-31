
#lang racket

(require racklog)


(define %member
  (%rel (x xs)
    [(x (cons x (_)))]
    [(x (cons (_) xs))
      (%member x xs)]))

(begin (display " --> ") (%which (x) (%member x '(1 2 3))))
(begin (display " --> ") (%more))
(begin (display " --> ") (%more))
(begin (display " --> ") (%more))





