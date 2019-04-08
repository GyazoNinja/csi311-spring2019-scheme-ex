
#lang racket

(require racklog)


; x is a member of xs if there exists an x on the front of the list xs, or if there exists some other element "_" on the
; front of the list of which x is a member 
(define %member
  (%rel (x xs)
    [(x (cons x (_)))]    ; for any x, x is a member of the list if x is on the front of the list 
    [(x (cons (_) xs))    ; x is a member of a list if we can show that it is a member of the tail of that list
      (%member x xs)]))

; will bind x to each element of the list in turn 
(begin (display " --> ") (%which (x) (%member x '(1 2 3))))
(begin (display " --> ") (%more))
(begin (display " --> ") (%more))
(begin (display " --> ") (%more))  ; returns #f, no more






