#lang racket

(require racklog)

(begin (display "true  --> ") (%which () %true))

(begin (display "1 = 1 --> ") (%which () (%=:= 1 1)))

(begin (display "1 = 2 --> ") (%which () (%=:= 1 2)))

(begin (display "1 < 1 --> ") (%which () (%< 1 1)))

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

; extra assert 
(%assert! %knows ()
  [('Odysseus 'archery)])


(begin (display "Odysseus knows TeX --> ") (%which () (%knows 'Odysseus 'TeX)))


(begin (display "Telemachus knows Racket --> ") (%which () (%knows 'Telemachus 'Racket)))

(define %computer-literate
  (%rel (person)
    [(person)
      (%knows person 'TeX)
      (%knows person 'Racket)]
    [(person)
      (%knows person 'TeX)
      (%knows person 'Prolog)]))

(begin (display "Penelope is computer literate --> ") (%which () (%computer-literate 'Penelope)))

(begin (display "What does Odysseus know  --> ") (%which (what) (%knows 'Odysseus what)) '((what . TeX)))

; pump for more
(%more)
(%more)
(%more)
(%more)
(%more)








