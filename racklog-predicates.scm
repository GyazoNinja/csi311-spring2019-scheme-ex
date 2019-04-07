#lang racket

(require racklog)

; assert true - note the use of the empty list in lieu of #t 
(begin (display "true  --> ") (%which () %true))

; assert that the eval of 1 equals the eval of 1 
(begin (display "1 = 1 --> ") (%which () (%=:= 1 1)))

(begin (display "1 = 2 --> ") (%which () (%=:= 1 2)))

(begin (display "1 < 1 --> ") (%which () (%< 1 1)))

; define some facts into a symbol %knows, a set of relations "person knows topic"
(define %knows
  (%rel ()
    [('Odysseus 'TeX)]
    [('Odysseus 'Racket)]
    [('Odysseus 'Prolog)]
    [('Odysseus 'Penelope)]
    [('Penelope 'TeX)]
    [('Penelope 'Prolog)]
    [('Penelope 'Odysseus)]
    [('Telemachus 'TeX)]
    [('Telemachus 'calculus)]))

; extra assertion into %knows in addition to the set of relations above - note the "!" meaning "function has side-effects" 
(%assert! %knows ()
  [('Odysseus 'archery)])


(begin (display "Odysseus knows TeX --> ") (%which () (%knows 'Odysseus 'TeX)))


(begin (display "Telemachus knows Racket --> ") (%which () (%knows 'Telemachus 'Racket)))

; define a person who is computer literate to be someone who knows TeX and Racket *or* TeX and Prolog 
(define %computer-literate
  (%rel (person)
    [(person)
      (%knows person 'TeX)
      (%knows person 'Racket)]
    [(person)
      (%knows person 'TeX)
      (%knows person 'Prolog)]))

(begin (display "Penelope is computer literate --> ") (%which () (%computer-literate 'Penelope)))
(begin (display "Telemachus is computer literate --> ") (%which () (%computer-literate 'Telemachus)))  ; is not comp literate
(%assert! %knows ()
          [('Telemachus 'Prolog)])
(begin (display "Telemachus is computer literate --> ") (%which () (%computer-literate 'Telemachus)))  ; now he is


; output all the "what's" - the things Odysseus knows 
(begin (display "What does Odysseus know  --> ") (%which (what) (%knows 'Odysseus what)) )

; pump for more solutions, things Odysseus knows 
(%more)
(%more)
(%more)
(%more)
(%more)  ; will return #f when no more results 


; make a list "things-known" of all the topics known by any person in our fact database
; note there will be duplicates 
(%which (things-known)
    (%let (someone x)
      (%bag-of x (%knows someone x)    ; built-in function %bag-of: put the x in (%knows someone x) into the things-known set
               things-known)))
(%more)                                ; there will be only one solution, returns #f 






