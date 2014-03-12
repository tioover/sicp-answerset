#lang r5rs

(define nil `())

(define (reverse items)
  (define (reverse-iter items reversed)
    (if (null? items)
        reversed
        (reverse-iter (cdr items) (cons (car items) reversed))))
  (reverse-iter items nil))


(define (deep-reverse tree)
  (map
   (lambda (item)
     (if (pair? item) (deep-reverse item) item))
   (reverse tree)))