(define (s a) (* a a))

(define (s-o-s a b)
    (+ (s a) (s b)))

(define (l-sos a b c)
    (cond [(and (> a c) (> b c)) (s-o-s a b)]
          [(and (> b a) (> c a)) (s-o-s c b)]
          [(and (> a b) (> c b)) (s-o-s a c)]
          ))
