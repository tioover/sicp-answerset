#lang r5rs
(define make-point cons)

(define x-point car)

(define y-point cdr)

(define make-segment cons)

(define start-segment car)

(define end-segment cdr)

(define (midpoint-segment segment)
  (define (avg a b) (/ (+ a b) 2))
  (make-point (avg (x-point start-segment) (x-point end-segment))
              (avg (y-point start-segment) (y-point end-segment))))

(define (print-point p)
  (newline)
  (display "( ")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display " )"))