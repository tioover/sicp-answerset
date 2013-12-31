#lang r5rs

(define (filterd-accumulate combiner pass? null-value term a next b)
  (define (iter a result)
    (if (> a b) result 
        (iter (next a) (if (pass? a) (combiner (term a) result) result))))
  (iter a null-value))

;(filterd-accumulate + prime? 0 (lambda (x) x) a (lambda (x) (+ x 1)) b)
;(filterd-accumulate * (lambda (x) (= (gcd x n) 1)) 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) (- n 1))
