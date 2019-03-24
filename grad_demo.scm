; Andrew Pulver

#lang racket

(require racket/match)
(require plot)

(define (grad formula v)
  (cond [(symbol? formula)
         (if (equal? formula v) 1 0)]
        [(number? formula) 0]
        [(list? formula)
         (cond [(equal? (car formula) '+)
                `(+ ,@(map (lambda (e) (grad e v)) (cdr formula)))]
               [(and (equal? (car formula) '*) (equal? (length formula) 3))
                (let [[x (list-ref formula 1)]
                      [y (list-ref formula 2)]]
                  `(+ (* ,(grad x v) ,y) (* ,x ,(grad y v))))]
               [(and (equal? (car formula) '*) (> (length formula) 3))
                (let [[first-factor (list-ref formula 1)]
                      [rest (cddr formula)]]
                  `(+ (* ,(grad first-factor v) ,@rest) (* ,first-factor ,(grad (cons '* rest) v))))])]))
          

(define some-polynomial '(+ (* 3.4 x x x) (* -.01 x x) (* 1.5 x) -4))
(define its-derivative (grad some-polynomial 'x))

(define spf (eval `(lambda (x) ,some-polynomial)))
(define idf (eval `(lambda (x) ,its-derivative)))

(plot (list (function spf -10 10) (function idf -10 10)))




