
#lang racket

(require racklog)

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

; make a list "things-known" of all the topics known by any person in our fact database
; note there will be duplicates 
(%which (things-known)
    (%let (someone x)
      (%bag-of x (%knows someone x)    ; built-in function %bag-of: put the x in (%knows someone x) into the things-known set
               things-known)))

; make a list "things-known" of all the topics known by any person in our fact database
; no duplicates thanks to set-of 
(%which (things-known)
    (%let (someone x)
      (%set-of x (%knows someone x)    ; built-in function %bag-of: put the x in (%knows someone x) into the things-known set
               things-known)))

