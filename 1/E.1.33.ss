(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate combiner null-value term (next a) next b))))

(define (accumulate-i combiner null-value term a next b)
  (define (p a cum)
      (if (> a b)
        cum
        (p (next a) (combiner a cum))))
  (p a null-value))

(define (filtered-accumulate combiner null-value term a next b pred)
  (define (nxt n)
    (let ([n (next n)])
    (if (or (pred n) (> n b))
      n
      (nxt n))))
  (accumulate combiner null-value term a nxt b))

(define (product term a next b)
  (accumulate-i * 1 term a next b))

(define (sum term a next b)
  (accumulate * 0 term a next b))
