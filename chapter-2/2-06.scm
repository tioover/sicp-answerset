#lang r5rs
(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

; (add-1 zero)
; (lambda (f) (lambda (x) (f ((zero f) x))))
; (lambda (f) (lambda (x) (f ((lambda (x) x) x))))
(define one (lambda (f) (lambda (x) (f x))))

(define (add a b)
  (lambda (f) (lambda (x) ((b f) ((a f) x)))))

; (add one one)
; (lambda (f) (lambda (x) ((one f) ((one f) x))))
; (lambda (f) (lambda (x) ((lambda (x) (f x)) ((lambda (x) (f x)) x))))
; (lambda (f) (lambda (x) ((lambda (x) (f x)) (f x))))
; (lambda (f) (lambda (x) (f (f x))))
