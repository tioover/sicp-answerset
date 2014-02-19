#lang r5rs

(define (square x) (* x x))
(define (cube x) (* x x x))
(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
         next
         (try next))))
  (try first-guess))

(define (deriv g)
  (define  dx 0.00001)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess) 
  (fixed-point (newton-transform g) guess))

(define (sqrt x)
  (define guess 1.0)
  (newtons-method (lambda (y) (- (square y) x)) guess))

(define (cubic a b c) (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))

