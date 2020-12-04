;-- NONSENSE FUNCTIONS --
(define addWithLambda (lambda (x)
  (+ x x)))

(define (add x)
  (+ x x))

(define (addAll . numbers)
  (apply + numbers))

(define (addAtLeastThree a b c . numbers)
  (+ a b c (apply + numbers)))

(define (isOdd number)
  (odd? number))

(define (isAlsoOdd number)
  (not (even? number)))

(define (allAreNegativeOrGreaterThanHundred number)
  (or (negative? number) (> number 100)))

; not ready yet...
;(define (allAreNegativeOrGreaterThanHundredK . numbers)
;  (apply (or (negative? numbers) (> numbers 100)) ))

;(define (allAreNegativeOrGreaterThanHundredK . numbers)
; (or (apply negative? numbers) (apply > numbers 100)))

;-- PRINT --
(print ((lambda (x)
  (+ x x)) 22))

(print (addWithLambda 2223))
(print (add 2223))
(print (addAll 2 2 2 2))
(print (addAtLeastThree 1 2 3 4 5))

(print (odd? 3))
(print (isOdd 3))
(print (isAlsoOdd 3))
(print (equal? isOdd isAlsoOdd))

(print (allAreNegativeOrGreaterThanHundred -3))
(print (allAreNegativeOrGreaterThanHundred 3))
(print (allAreNegativeOrGreaterThanHundred 300))

;(print (allAreNegativeOrGreaterThanHundredK 22))