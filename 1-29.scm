#lang r5rs
(#%require "1-30.scm") ; 引入 1-30 中的迭代式sum。
(define (simpson f a b n) 
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (term x) (if (even? x) (* 2 (y x)) (* 4 (y x))))
  (* (/ h 3) (+ (y 0) (y n)
                (sum term 1 (lambda (x) (+ x 1)) (- n 1)))))

(define (cube x) (* x x x))
(define test (simpson cube 0 1 100))
(define test2 (simpson cube 0 1 1000))