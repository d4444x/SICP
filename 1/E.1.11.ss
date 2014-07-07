(define (f-rec n)
    (if (> 3 n)
        n
        (+ (f-rec (sub1 n))
           (* 2 (f-rec (- n 2)))
           (* 3 (f-rec (- n 3))))))

(define (f-iter count)
    (if (> 3 count) 
        count
        (f-iter-helper (- count 3) 2 1 0)))

(define (f-iter-helper count n-1 n-2 n-3)
    (if (< count 0)
        n-1
        (f-iter-helper (sub1 count) 
            (+ n-1 (* 2 n-2) (* 3 n-3))
            n-1 
            n-2)))
