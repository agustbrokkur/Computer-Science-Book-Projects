#lang sicp
; Exercise 1.7
; The good-enough? test used in computing square roots will not be very effective
; for finding the square roots of very small numbers. Also, in real computers,
; arithmetic operations are almost always performed with limited percision.
; This makes our test inadequate for very large numbers. Explain these statements,
; with examples showing how the test fails for small and large numbers. An
; alternative strategy for implement good-enough? is to watch how guess changes
; from one iteration to the next and to stop when the change is a very small
; fraction of the guess. Design a square-root procedure that uses this kind of
; end test. Does this work better for small or larger numbers?

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;(sqrt 100000000000000000000000)

; This test will fail on smaller numbers as the precision needed for numbers
; will not exist. For numbers larger than 1, a 0.001 difference might not seem
; much but is a massive difference the smaller your number is.
; On large numbers the test will also fail as a guess will never reach the abs
; difference of 0.001 and will just keep bouncing around two numbers for infinity.

; Alternative good-enough guess
(define (good-enough-alternative? guess x)
  (



