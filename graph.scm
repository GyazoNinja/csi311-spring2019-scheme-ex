
#lang racket

; use the racket graph library
; see here: https://docs.racket-lang.org/graph/index.html#%28part._top%29
; first you must install the libary:
; raco pkg install graph
; see here: https://stackoverflow.com/questions/34852667/installing-packages-in-racket

; provides us the weighted-graph/undirected object and the algorithms bfs and dijkstra
(require graph)

; define a weighted graph
(define relations (weighted-graph/undirected '() ))
; add some weighted edges 
(add-edge! relations 'a 'b 10)
(add-edge! relations 'b 'c 20)
(add-edge! relations 'c 'a 10)
(add-edge! relations 'd 'a 10)
(add-edge! relations 'e 'd 10)
(add-edge! relations 'a 'c 10)
(add-edge! relations 'c 'f 20)
(add-edge! relations 'f 'g 30)


; In the below, the (first second) construct is because the bfs and dijkstra algorithms return more than one result.
; (A function that returns more than one thing... well.. think of it like returning a struct.)
; We're only interested generally in the "first" result.
; See the documentation for the graph library.  
 

; Do a breadth first search to count hops from a source node.  Display the number of hops of the source node to each other node.
(let-values ( [ (first second) (bfs relations 'd) ] )
  (hash-for-each first (lambda (k v) (display k) (display "-->") (display v) (display "\n"))))

(display "\n")

; Run the Dijkstra algorithm to find the weight of the path from the source node to each other node.
(let-values ( [ (first second) (dijkstra relations 'd) ] )
  (hash-for-each first (lambda (k v) (display k) (display "-->") (display v) (display "\n"))))










