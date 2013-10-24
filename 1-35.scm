#lang r5rs
(define tolerance 0.000000000000000001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2) (< (abs (- v1 v2) ) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next) next (try next))))
  (try first-guess)
)

(define (average x y) (/ (+ x y) 2))

(define (avgdr f) (lambda (x) (average x (f x))))

(define (sqrt n guess) (fixed-point (avgdr (lambda (x) (/ n x)) ) guess))

(define golden (fixed-point (lambda (x) (+ 1 (/ 1 x))) 10.0))