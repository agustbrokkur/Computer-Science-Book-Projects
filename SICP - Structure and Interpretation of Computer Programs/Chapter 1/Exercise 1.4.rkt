#lang sicp
; Exercise 1.4
; Observe that our model of evaluation allows for combinations whose
; operators are compound expressions. Use this obeservation to describe
; the behavior of the following prosedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; What is happing here we can select the operator based on the value of b
; If b is larger than 0 then we always do (+ a b), else if b is less or equal
; to 0 then we change the operator to a minus and the operation becomes (- a b)
; This procedure always adds the absolute value of b to a.