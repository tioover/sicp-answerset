#lang r5rs
(define (cont-frac n d k)
  (define (frac i) 
    (if
     (= i k)
     (/ (n i) (d i))
     (/ (n i) (+ (d i) (frac (+ 1 i))))))
  (frac 1))

(display (cont-frac 
 (lambda (i) 1.0)
 (lambda (i) 1.0)
 100))