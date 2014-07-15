;Given
(define (cube x)(* x x x))
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum-i f (+ a (/ dx 2.0)) add-dx b)
       dx))

(define (sum term a next b)
    (if (> a b)
            0
            (+ (term a)
               (sum term (next a) next b))))

(define inc add1)

(define (sum-i term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
  (iter a 0))
