(define tolerance 0.00001)
(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
          (< (abs (- v1 v2)) tolerance))
      (define (try guess)
        (display "Current guess  ")
        (display (+ (- guess .01) .01))
        (newline)
            (let ((next (f guess)))
                    (if (close-enough? guess next)
                                next
                                          (try next))))
        (try first-guess))
(define (golden-ratio)
  (fixed-point (lambda (y) (+ 1 (/ 1 y)))
               1))

(define (solution)
  (fixed-point (lambda (y) (/ (log 1000) (log y))) 10))


