#lang sicp
; Exercise 1.6
; Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
; "Why can't I just define it as an ordinary procedure in terms of cond?" she asks.
; Alyssa's friend Eva Lu Ator claims this can indeed be done, and she defines
; a new version of if:
;(define (newif predicate then-clause else-clause)
;  (cond (predicate then-clause)
;        (else else-clause)))
; Eva demonstrates the program for Alyssa:
;(new-if (= 2 3) 0 5)
;5
;(new-if (= 1 1) 0 5)
;0
; Delighted, Alyssa uses new-if to rewrite the square-root program:
;(define (sqrt-iter guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter (improve guess x) x)))

; Because new-if is not a special form, this procedure will end up in an endless
; loop as it will always expand upon both guess and sqrt-iter via applicative-order
; evaluation. If as a special case does not work that way and will stop as soon as
; soon as it sees a false value.