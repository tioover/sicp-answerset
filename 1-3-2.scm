#lang racket

(define (max-of-three a b c)
  (if (and (> a b) (> a c)) a (max-of-three b c a))
)
