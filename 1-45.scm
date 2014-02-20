#lang r5rs
(define (square x) (* x x))

(define (fast-expt b n)
  (define (expt b n a)
    (cond
      ((= n 1) (* a b))
      ((even? n) (expt (square b) (/ n 2) a))
      (else (expt b (- n 1) (* a b)))))
  (expt b n 1))

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2) (< (abs (- v1 v2) ) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next) next (try next))))
  (try first-guess)
)
(define (average a b) (/ (+ a b) 2))
(define  (average-damp f)
  (lambda (x) (average x (f x))))
(define (compose f g) (lambda (x) (f (g x))))
(define (repeated f n) (if (= n 1) f (compose f (repeated f (- n 1)))))

(define (lg n)
  (cond 
    ((> (/ n 2) 1) (+ 1 (lg (/ n 2))))
    ((< (/ n 2) 1) 0)
    (else 1)))

(define 
  (power-root n k)
  (fixed-point 
   ((repeated average-damp (lg k))
    (lambda (x) (/ n (fast-expt x (- k 1))))) 1.0))