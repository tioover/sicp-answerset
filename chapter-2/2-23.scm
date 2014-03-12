#lang r5rs

(define (print item)
  (display item)
  (newline))

;(define (for-each proc items)
;  (if (null? items)
;      (begin (print "end") items) ; why?
;      (begin (proc (car items)) (for-each proc (cdr items)))))

(define (for-each proc items)
  (cond
    ((null? items) (display "end") items) ; why??
    (else (proc (car items)) (for-each proc (cdr items)))))
