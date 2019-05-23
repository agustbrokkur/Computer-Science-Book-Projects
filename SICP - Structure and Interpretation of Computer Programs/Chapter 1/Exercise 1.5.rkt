#lang sicp
; Exercise 1.5.
; Ben Bitdiddle has invented a test to determine wheather the
; interpreter he is faced with is using applicative-order evaluation
; or normal-order evaluation. He defines the following two procedures:
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
; Then he evaluates the expression
;(test 0 (p))
; What behavior will ben observe with an interpreter that uses applicative-order
; evaluation? What behavior will he observe with an interpreter that uses
; normal-order evaluation? Explain your answer. (Assume that the evaluation
; rule for the special form if is the same wheather the interpreter is using
; normal or applicative order: The predicate expression is evaluated first,
; then the result determines whether to evaluate the consequent of the
; alternative expression.)

; Applicative-order:
; If the interpreter uses this kind of evaluation then the interpreter will be
; stuck in an endless recursive loop with no escape as every time it tries to
; determine p it is forced to determin what p is, causing an endless loop.

; Normal-order:
; As test is expanded upon first, the procedure will first check if (= x 0)
; which is true, so the procedure will stop there and return 0.
; There is no infinite loop here as the procedure (p) never gets called.