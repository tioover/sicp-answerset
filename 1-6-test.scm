#lang racket

(if #f (display "a") (display "b")) ; 结果打印b 可以看出，内置的if 是正则序正
 
(define (t a b) b)
(t (display "a") (display "b")) ; 结果打印 ab 说明在代入参数过程中是需要进行求值的。
