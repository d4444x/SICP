(define (double a) (* a 2))
(define (halve a) (/ a 2))

(define (mult a b)
    (cond [(zero? b) 0]
          [(even? b) (mult (double a) (halve b))]
          [(odd? b) (+ a (mult a (- b 1)))]))
