#lang r5rs
(define nil `())
(define (same-parity first . li)
  (define (same-parity? n)(= (remainder first 2) (remainder n 2)))
  (define (next li) (apply same-parity (cons first li)))
  (cond ((null? li) li)
        ((same-parity? (car li))
         (cons (car li) (next (cdr li)))) ; for simple
        (else (next (cdr li)))))
