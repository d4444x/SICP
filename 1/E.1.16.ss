;Implement iterative exponentiation in O(log(n))
(define (square a) (* a a))
(define (fast-exp n b a)
    (cond  [(zero? n) a] 
           [(zero? (modulo n 2)) (fast-exp (/ n 2) (square b) a)]
           [else (fast-exp (sub1 n) b (* a b))]))
