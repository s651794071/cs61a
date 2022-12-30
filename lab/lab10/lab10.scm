(define (square x)
  (* x x)
)

(square 5)

(define (over-or-under num1 num2)
  (cond 
      ((> num1 num2) 1)
      ((< num1 num2) -1)
      (else 0)
  )
)

;;; Tests
(over-or-under 1 2)
; expect -1
(over-or-under 2 1)
; expect 1
(over-or-under 1 1)
; expect 0

(define (make-adder num)
    (define (add_num x) (+ num x))
    add_num
)

;;; Tests
(define adder (make-adder 5))
(adder 8)
; expect 13

(define (composed f g)
    (lambda (x) (f (g x)))
)