
#lang racket

(require racklog)


(define %parent %empty-rel)
 
(%assert! %parent ()
  [('Laertes 'Odysseus)])
 
(%assert! %parent ()
  [('Odysseus 'Telemachus)]
  [('Penelope 'Telemachus)]
  [('Ozzy     'Bud)])


(begin (display " --> ") (%which (x) (%parent x 'Telemachus)))
(begin (display " --> ") (%more))
(begin (display " --> ") (%more))


(begin (display " grandparent of Telemachus --> ") (%which (x y) (%parent x y) (%parent y 'Telemachus)))




