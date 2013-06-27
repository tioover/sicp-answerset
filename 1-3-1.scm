#lang racket

(define (>= a b)(or (> a b) (= a b)))

(define (max-of-three a b c)
  (cond
    ((and (>= a b) (>= a c)) a)
    ((and (>= b a) (>= b c)) b)
    ((and (>= c a) (>= c b)) c)
  )
)
