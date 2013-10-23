#lang scheme

(define (square x) (* x x))

(define (fast-expt b n)
  (define (expt b n a)
    (cond
      ((= n 1) (* a b))
      ((even? n) (expt (square b) (/ n 2) a))
      (else (expt b (- n 1) (* a b)))))
  (expt b n 1
