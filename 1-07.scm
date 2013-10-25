#lang r5rs

(define (good-enough? guess x)
  (<
    (abs (- 1 (/ guess (improve guess x))))
    0.0001
  )
)

(define (average a b)
  (/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(display (sqrt-iter 1 2))
