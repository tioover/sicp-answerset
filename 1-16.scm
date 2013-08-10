#lang racket
(define (iter-expt b n)
  (define (iter-fast-expt b n a)
    (cond 
      ((= n 1) (* a b))
      ((= n 0) 1)
      ((even? n) (iter-expt (* b b) (/ n 2) a)) ; 我用的解释器自带even?函数。
      (else (iter-expt (* b b) (/ (- n 1) 2) (* a b))))) 
  (iter-fast-expt b n 1)
)
