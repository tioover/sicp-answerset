#lang r5rs
(define (cons x y)
  (* (expt 2 x) (expt 3 y)))

(define (car z)
  (if (= (remainder z 2) 1) 0 (+ 1 (car (/ z 2)))))

(define (cdr z)
  (if (not (= (remainder z 3) 0)) 0 (+ 1 (cdr (/ z 3)))))
