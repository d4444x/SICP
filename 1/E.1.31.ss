(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))
(define (product-i term a next b)
  (define (p a cum)
    (if (> a b)
      cum
      (p (next a) (* cum (term a)))))
  (p a 1))

(define (factorial n)
  (product values 1 add1 n))

(define (pi4 n)
  (define (term a)
    (if (even? a)
      (/ (+ a 2) (+ a 1))
      (/ (+ a 1) (+ a 2)))
    )
  (product-i term 1 add1 n))
