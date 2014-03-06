#lang r5rs

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b) result (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (accumulate-recu combiner null-value term a next b)
  (if (> a b) null-value 
      (combiner (term a)
                (accumulate-recu combiner null-value term (next a) next b))))

(define accumulate accumulate-iter)

(define (sum term a next b) (accumulate + 0 term a next b))

(define (product term a next b) (accumulate * 1 term a next b))

(define test (sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 100))

(define (pi)
  (define m 100000)
  (define (term n)
    (cond ((even? n) (/ (+ n 2) (+ n 1)))
          (else (/ (+ n 1) (+ n 2)))))
  (define (next n) (+ n 1))
  (* (product term 1.0 next m) 4))

(define test2 (pi))
