#lang r5rs

(define make-point cons)

(define x-point car)

(define y-point cdr)

(define make-segment cons)

(define start-segment car)

(define end-segment cdr)

(define (print-point p)
  (newline)
  (display "( ")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display " )"))

; (define make-rect cons)  ; (make-rect width height)
; (define width-rect car)
; (define height-rect cdr)

(define (make-rect diagonal)
  diagonal)

(define (width-rect rect) 
  (abs (- (x-point (car rect)) (x-point (cdr rect)))))

(define (height-rect rect)
  (abs (- (y-point (car rect)) (y-point (cdr rect)))))

(define (area-rect rect)
  (* (width-rect rect) (height-rect rect)))

(define (perimeter-rect rect)
  (* 2 (+ (width-rect rect) (height-rect))))