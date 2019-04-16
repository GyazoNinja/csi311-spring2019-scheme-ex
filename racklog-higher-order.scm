
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

(define %parent %empty-rel)
(%assert! %parent ()
  [('Odysseus 'Telemachus)]    ; more parent-child assertions 
  [('Penelope 'Telemachus)]
  [('Ozzy     'Bud)])

(define %computer-literate
  (%rel (person)
    [(person)
      (%knows person 'TeX)
      (%knows person 'Racket)]
    [(person)
      (%knows person 'TeX)
      (%knows person 'Prolog)]))

(define (%odyssean p)
  (p 'Odysseus))

(%which () (%odyssean %computer-literate))




