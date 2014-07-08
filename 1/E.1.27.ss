(define (fermat-test n t)
  (define (try-it a)
      (= (expmod a n n) a))
    (try-it t))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
          ((even? exp)
                   (remainder (square (expmod base (/ exp 2) m))
                                       m))
                  (else
                           (remainder (* base (expmod base (- exp 1) m))
                                               m))))        

(define (square x)(* x x))

(define (check-carmichael n)
    (let loop ([a 1])
        (cond [(= n a) #t]
              [(not (fermat-test n a)) #f]
              [else (loop (+ 1 a))])))
    
