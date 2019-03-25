
#lang racket

(define (printwhere fn ls)
  (begin
    (if (fn (car ls )) (begin (display (car ls))(newline))
        (display ""))
    (if (not (null? (cdr ls))) (printwhere fn (cdr ls))
        (display ""))
  ))

(define myList '(1 2 3 4 5))

(define (myFn1 n)
  #t)

(define (myFn2 n)
  (if (< n 4) #t
      #f))

(printwhere myFn1 myList)
(printwhere myFn2 myList)


