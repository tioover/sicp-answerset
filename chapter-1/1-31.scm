#lang r5rs

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b) result (iter (next a) (* (term a) result)))        )
  (iter a 1))

(define (product-recu term a next b) 
  (if (> a b) 1 (* (term a) (product-recu term (next a) next b))))

(define product product-iter)

(define (square n) (* n n))

(define (pi)
  (define m 1000000)
  (define (term n) 
    (cond ((even? n) (/ (+ n 2) (+ n 1)))
          (else (/ (+ n 1) (+ n 2)))))
  (define (next n) (+ n 1))
  (* (product term 1.0 next m) 4))
