#lang r5rs
(#%require "1-37.scm")

(define (d i) 
  (define a (+ i 1))
  (if (= (modulo a 3) 0) (* (/ a 3) 2) 1))


(define k 25)
(display (+ 2 (cont-frac-iter (lambda (i) 1.0) d k)))
(newline)
(display (+ 2 (cont-frac-recu (lambda (i) 1.0) d k)))