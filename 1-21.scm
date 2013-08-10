(define (smallest-divisor n)
  (define (square a) (* a a))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  (define (divides? a b) (= (remainder b a) 0))
  (find-divisor n 2))

(define (prime? n) (= n (smallest-divisor n)))


;> (smallest-divisor 199)
;199
;> (smallest-divisor 1999)
;1999
;> (smallest-divisor 19999)
;7
