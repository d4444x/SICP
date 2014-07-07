(define (count-change amount)
    (cc amount 5))
(define (kinds-of-coins n)
   (cond [(= n 1) 1]
         [(= n 2) 5]
         [(= n 3) 10]
         [(= n 4) 25]
         [(= n 5) 50]))

(define (cc amount n-coins)
    (cond [(= amount 0) 1]
          [(or (< amount 0) (= n-coins 0)) 0]
          [else (+ (cc amount
                       (- n-coins 1))
                   (cc (- amount (kinds-of-coins n-coins))
                        n-coins))]))
