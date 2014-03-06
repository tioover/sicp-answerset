#lang r5rs
(#%require "1-35.scm")
(define (fixed-point-new f first-guess)
  (define (close-enough? v1 v2) (< (abs (- v1 v2) ) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (begin 
        (display guess)
        (newline)
        (if (close-enough? guess next) next (try next)))))
  (try first-guess)
)

(define (root x) (/ (log 1000) (log x)))

(define (p1 guess) (fixed-point-new root guess))
(define (p2 guess) (fixed-point-new (avgdr root) guess))
(p1 10)
(p2 10)