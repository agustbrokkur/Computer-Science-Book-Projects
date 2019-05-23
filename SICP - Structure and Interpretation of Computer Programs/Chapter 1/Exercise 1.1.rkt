#lang sicp
; Exercise 1.1

(define (correct-answer? x y) (= x y))
(define a 3)
(define b (+ a 1))

(correct-answer? 10 10)
(correct-answer? 12 (+ 5 3 4))
(correct-answer? 8 (- 9 1))
(correct-answer? 3 (/ 6 2))
(correct-answer? 6 (+ (* 2 4) (- 4 6)))
(correct-answer? 19 (+ a b (* a b)))
(not (and #f (= a b)))
(correct-answer? b
                 (if (and (> b a) (< b (* a b)))
                     b
                     a))

(correct-answer? 16
                 (cond ((= a 4) 6)
                       ((= b 4) (+ 6 7 a))
                       (else 25)))

(correct-answer? 6
                 (+ 2 (if (> b a) b  a)))

(correct-answer? 16
                 (* (cond ((> a b) a)
                          ((< a b) b)
                          (else -1))
                    (+ a 1)))