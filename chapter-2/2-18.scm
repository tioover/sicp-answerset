#lang r5rs
(define nil `())
(define (reverse li)
  (define (reverse-iter li il)
    (if (null? li) il (reverse-iter (cdr li) (cons (car li) il))))
  (reverse-iter li nil))
