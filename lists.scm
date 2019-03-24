#lang racket

(define mylist '(1 2 3 4 5))

(car mylist)
(cdr mylist)
(car (cdr mylist))


(cons (car mylist) (cdr mylist))

(caar '((a))) 
(cadr '(a b c))
(cdddr '(a b c d))
(cadadr '(a (b c)))


(memq 'a '(b c a b d))

(member "b" '("a" "b" "c"))



