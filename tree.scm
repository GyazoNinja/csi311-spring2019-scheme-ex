
#lang racket

(define tree-walk
  (lambda (tr)
    (if (not (pair? tr))
        tr
        (cons (tree-walk (car tr))
              (tree-walk (cdr tr))))))

(tree-walk '((a . b) . c))


