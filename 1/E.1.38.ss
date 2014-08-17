(define (cont-frac-h n d k i)
  (if (= i k) 
    (/ (n i) (d i))
    (/ (n i) (- (d i) (cont-frac-h n d k (+ i 1))))))


(define (cont-frac n d k)
  (cont-frac-h n d k 1))

(define (euler-h n)
  (cond ((= n 1) 1)
        ((= n 2) 2)
        ((= (modulo (- n 2) 3) 0) 
         (* 2 (+ 1 (/ (- n 2) 3))) )
        (else 1)))

(define (euler k)
  (cont-frac (lambda (i) 1.0)
               euler-h
               k))

(define (tan-cf x k)
  (define (n i)
    (expt x i))
  (define (d i)
    (+ (* 2 (- i 1)) 1))
  (cont-frac n d k))
  
  
