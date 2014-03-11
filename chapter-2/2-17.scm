#lang r5rs
(define (last-pair li)
  (if (null? (cdr li)) li (last-pair (cdr li))))
