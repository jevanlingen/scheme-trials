;-- HELPER FUCNTIONS --
(define (delist . ls) (apply values ls))
; values seems to work different then told in the book :(

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

(define (isNegativeOrGreaterThanHundred number)
  (or (negative? number) (> number 100)))

; not ready yet...
(define (allAreNegativeOrGreaterThanHundred . numbers)
  (map (lambda (number) (or (negative? number) (> number 100))) numbers))
  ; becaue 'and' and 'or' are not fucntions, (apply and (map ...)) does not work
  ; need to find a way to fix this...

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

(print (isNegativeOrGreaterThanHundred -3))
(print (isNegativeOrGreaterThanHundred 3))
(print (isNegativeOrGreaterThanHundred 300))

(print (allAreNegativeOrGreaterThanHundred 22 223))

 
(print (apply + (map (lambda (x) (+ x x)) (list 1 2 3))))
;(print (apply add (delist (map (lambda (x) (+ x x)) (list 1 2 3)))))