(define (pascal-triangle row col)
    (cond [(< row 0) 0]
          [(< col 0) 0]
          [(= col 1) 1]
          [else (+ (pascal-triangle (sub1 row) col) (pascal-triangle (sub1 row) (sub1 col)))]))
