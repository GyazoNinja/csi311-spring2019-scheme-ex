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

(display "\n")
(memq 'a '(b c a b d))
(member 'a '(b c a b d))

(eq? 'a 'a)
(equal? "a" "a") 

(memq "b" '("a" "b" "c"))
(member "b" '("a" "b" "c"))

(define msg 'push!)
(eq? msg 'push!)
(eqv? msg 'push!)
(equal? msg 'push!)

(display "\n")
(define list1 (cons 'a (cons 'b '())))
(define list2 (cons 'a (cons 'b '())))
(eq? list1 list2)
(eqv? list1 list2)
(equal? list1 list2)



