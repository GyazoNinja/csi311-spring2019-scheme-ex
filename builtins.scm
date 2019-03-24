
#lang racket

(define (countdown n)
  (display n) (display "\n")  
  (cond
   ((= n 0) "launch")
   ((negative? n) (countdown (abs n)))
   (#t (countdown (- n 1)))))

   
(countdown -10)



