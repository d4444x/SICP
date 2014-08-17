(define (cont-frac-h n d k i)
  (if (= i k) 
    (/ (n i) (d i))
    (/ (n i) (+ (d i) (cont-frac-h n d k (+ i 1))))))


(define (cont-frac n d k)
  (cont-frac-h n d k 1))
