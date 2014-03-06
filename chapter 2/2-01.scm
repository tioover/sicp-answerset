#lang r5rs

(define (gcd a b)
  (if (= b 0)
     a
     (gcd b (remainder a b))))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (let ((a (/ n g))
          (b (/ d g)))
      (cond 
        ((> (* a b) 0) (cons (abs a) (abs b)))
        ((= b 0) (display "ERROR zero can not be used as the denominatoro.")) ; error can't ues.
        ((< b 0) (cons (- a) (- b)))
        (else (cons a b))))))