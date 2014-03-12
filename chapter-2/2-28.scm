#lang racket

(define nil `())

(define (reverse items)
  (define (reverse-iter items reversed)
    (if (null? items)
        reversed
        (reverse-iter (cdr items) (cons (car items) reversed))))
  (reverse-iter items nil))

(define (list-link a b)
  (define (list-link-iter a b)
    (if (null? a) b (list-link-iter (cdr a) (cons (car a) b))))
  (list-link-iter (reverse a) b))

(define (fringe tree)
  (define (fringe-iter tree items)
    (cond ((null? tree) items)
          ((pair? (car tree))
           (fringe-iter (cdr tree) (list-link (fringe (car tree)) items)))
          (else (fringe-iter (cdr tree) (cons (car tree) items)))))
  (fringe-iter (reverse tree) nil))
  
