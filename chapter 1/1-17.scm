#lang r5rs
(define (x a b)
  (define (double a) (* a 2))
  (define (halve a) (/ a 2))
  (define (new* a b n)
    (cond
      ((or (= a 0) (= b 0)) 0)
      ((= b 1) (+ a n))
      ((even? b)(new* (double a) (halve b) n))
      (else (new* (double a) (halve (- b 1)) (+ n a)))))
  (new* a b 0)
)

(define test (lambda (a b) (= (x a b) (* a b))))
