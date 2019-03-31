#lang racket 

(let ((h (lambda (x y . z) (list (list x y) z))))
  (h 'a 'b 'c 'd)
  (h 'a 'b 'c 'd 'e 'f 'g))
