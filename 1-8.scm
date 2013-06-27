#lang racket

(define (good-enough? guess x)
  (<
    (abs (- 1 (/ guess (improve guess x))))
    0.0001
  )
)

(define (improve guess x)
  (/ 
    (+ (/ x (* guess guess)) (* 2 guess))
    3)
)

(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x) x)
  )
)

(display (cube-iter 1 8))
