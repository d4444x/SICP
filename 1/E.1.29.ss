;Given
(define (cube x)(* x x x))
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
       dx))

(define (sum term a next b)
    (if (> a b)
            0
            (+ (term a)
               (sum term (next a) next b))))

(define inc add1)

(define (simpsons f a b n) 
  (let ([h (/ (- b a) n)])
     (define (get-y k) (* h (f (+ a (* k h)))))
     (sum get-y 0 inc n)))
(display "Calculating cube integral via simpsons method and integral approximation method")(newline)
(display "For n=100: ") (display (- (simpsons cube 0 1 100) (integral cube 0 1 .01)))(newline)
(display "For n=1000: ")(display (- (simpsons cube 0 1 1000) (integral cube 0 1 .01)))(newline)
(display "For n=10000: ")(display (- (simpsons cube 0 1 10000) (integral cube 0 1 .01)))(newline)
