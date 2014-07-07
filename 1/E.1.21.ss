(define (smallest-divisor n)
    (find-divisor n 2))

(define (divides? a b)
    (zero? (remainder b a)))

(define (square a) (* a a))

(define (find-divisor n test)
    (cond [(> (square test) n) n]
          [(divides? test n) test]
          [else (find-divisor n (add1 test))]))

