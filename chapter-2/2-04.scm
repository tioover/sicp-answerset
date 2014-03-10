#lang r5rs
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))
; (z (lambda (p q) p)
; ((lambda (p q) p) x y)
; x


(define (cdr z)
  (z (lambda (p q) q)))
