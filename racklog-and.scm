
#lang racket

(require racklog)

(%which (x)
    (%and (%member x '(1 2 3))
          (%< x 3)))

(%more)
(%more)



