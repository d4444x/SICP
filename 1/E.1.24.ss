;GIVEN
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
          ((even? exp)
                   (remainder (* (expmod base (/ exp 2) m)
                                          (expmod base (/ exp 2) m))
                                       m))
                  (else
                           (remainder (* base (expmod base (- exp 1) m))
                                               m))))

(define (timed-prime-test n)
  (newline)
    (display n)
      (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (fast-prime? n 100)
        (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
    (display elapsed-time))
;Not given

(define (next a)
    (if (= 2 a)
        3
        (+ 2 a)))

(define (find-prime-above n)
    (if (prime? n)
        n
        (find-prime-above (+ 1 n))))

(define (fermat-test n)
  (define (try-it a)
      (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
          ((fermat-test n) (fast-prime? n (- times 1)))
                  (else false)))

(timed-prime-test 1009) 
(timed-prime-test 1013) 
(timed-prime-test 1019) 
(timed-prime-test 10007) 
(timed-prime-test 10009) 
(timed-prime-test 10037) 
(timed-prime-test 100003) 
(timed-prime-test 100019) 
(timed-prime-test 100043) 
(timed-prime-test 1000003) 
(timed-prime-test 1000033) 
(timed-prime-test 1000037) 
(timed-prime-test 1000000007) 
(timed-prime-test 1000000009) 
(timed-prime-test 1000000021) 
(timed-prime-test 10000000019) 
(timed-prime-test 10000000033) 
(timed-prime-test 10000000061) 
(timed-prime-test 100000000003) 
(timed-prime-test 100000000019) 
(timed-prime-test 100000000057) 
(timed-prime-test 1000000000039) 
(timed-prime-test 1000000000061) 
(timed-prime-test 1000000000063) 

