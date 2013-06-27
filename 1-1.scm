#lang racket

10 ; 10
(+ 5 3 4) ; -> 12
(/ 6 2) ; -> 3
(+ (* 2 4)(- 4 6)) ; -> (+ 8 2) -> 6

(define a 3)
(define b (+ a 1))
(+ a b (* a b)) ; -> (+ 3 4 12) -> 19

(= a b) ; -> #f

(if 
  (and
    (> b a) ; #t
    (< b (* a b)) ; #t
  )
  b ; return
  a
) ; -> 4

(cond 
  ((= a 4) 6) 
  ((= b 4)(+ 6 7 a)) ; #t
  (else 25))  ; -> (+ 6 7 a) -> 16

(+ 2 
   (if (> b a) b a) ; b
) ; (+ 2 b) -> 6

(* 
  (cond 
    ((> a b) a) 
    ((< a b) b) ; b
    (else -1)
  ) ; b
  (+ a 1)
) ; -> (* b 4) -> 16
