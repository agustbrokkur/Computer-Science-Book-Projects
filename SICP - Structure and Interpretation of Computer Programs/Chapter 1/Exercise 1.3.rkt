#lang sicp
; Exercise 1.3
; Define a procedure that takes three numbers as
; arguments and returns the sum of the squares of the
; two larger numbers

(define (squared x) (* x x))

(define (squared-sum x y)
  (+ (squared x) (squared y)))

(define (two-largest-sum x y z)
  (cond ((> x y)
         (if (> y z)
             (squared-sum x y)
             (squared-sum x z)))
        ((> x z) (squared-sum x y))
        (else (squared-sum y z))))

(two-largest-sum 5 3 4)