#lang racket

(define (recu_f n)
  (cond ((< n 3) n)
         (else (+ 
                 (recu_f (- n 1))
                 (* 2 (recu_f (- n 2)))
                 (* 3 (recu_f (- n 3)))))))

(define (iter_f x)
  (define (f a b c n)
    (if (= n x)
      a
      (f (+ a (* b 2) (* 3 c)) a b (+ n 1))
    )
  )
  (f 2 1 0 2)
)
