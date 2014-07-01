(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))
(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enoug? guess x)
    (< (abs (- (square guess) x)) x*.0001))

(define (average x y)
    (/ (+ x y) 2))
