(define (double a) (* 2 a))
(define (halve a) (/ a 2))

(define (mult a b)
    (mult-it a b 0))

(define (mult-it a b n)
    (cond [(zero? b) n]
          [(even? b) (mult-it (double a) (halve b) n)]
          [(odd? b) (mult-it a (sub1 b) (+ n a))]))
