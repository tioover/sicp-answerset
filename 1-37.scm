#lang r5rs
(#%provide (all-defined))
(define (cont-frac-recu n d k)
  (define end (/ (n k) (d k)))
  (define (frac i) 
    (if
     (= i k)
     end
     (/ (n i) (+ (d i) (frac (+ 1 i))))))
  (frac 1)
)

(define (cont-frac-iter n d k)
  (define end (/ (n k) (d k)))
  (define (frac i numerator) 
    (if 
     (= i 0) 
     numerator 
     (frac (- i 1) (/ (n i) (+ (d i) numerator)))))
  (frac (- k 1) end)
)

(define (d i) 1.0)
(define n d)

(define k 11)
(display (+ 2 (cont-frac-iter n d k)))
(newline)
(display (+ 2 (cont-frac-recu n d k)))