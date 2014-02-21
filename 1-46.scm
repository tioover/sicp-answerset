#lang r5rs
(define (iterative-improve improve enough?)
  (lambda (guess) 
    (let ((next (improve guess)))
      (if (enough? guess next)
         next
         ((iterative-improve improve enough?) next)))))

(define (sqrt guess x)
  (define (good-enough? a b)
    (< (abs (- a b)) 0.001))
  (define (improve y)
    (/ (+ y (/ x y)) 2))
  ((iterative-improve improve good-enough?) guess))

(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2) (< (abs (- v1 v2) ) tolerance))
  ((iterative-improve f close-enough?) first-guess))