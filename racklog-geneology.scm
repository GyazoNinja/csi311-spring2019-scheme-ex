
#lang racket

(require racklog)

; make an empty "parent" db 
(define %parent %empty-rel)
 
(%assert! %parent ()
  [('Laertes 'Odysseus)])   ; Laertes is the parent of Odysseus 
 
(%assert! %parent ()
  [('Odysseus 'Telemachus)]    ; more parent-child assertions 
  [('Penelope 'Telemachus)]
  [('Ozzy     'Bud)])


(begin (display " --> ") (%which (x) (%parent x 'Telemachus)))   ; find an x which satisfies, which is a parent of Telemachus
(begin (display " --> ") (%more))  ; pump for more solutions 
(begin (display " --> ") (%more))  ; any more?  if not return #f 


; find an x & y which both satisfy that x is the parent of y and y is the parent of Telemachus 
(begin (display " grandparent of Telemachus --> ") (%which (x y) (%parent x y) (%parent y 'Telemachus)))




