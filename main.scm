;-- HELPER FUCNTIONS --
(define (delist . ls) (apply values ls))
; values seems to work different then told in the book :(

(define (and-l . x)
  (if (null? x) #t (if (car x) (apply and-l (cdr x)) #f)))

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

(define (allAreNegativeOrGreaterThanHundred . numbers)
  (apply and-l (map isNegativeOrGreaterThanHundred numbers)))

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

(let ((x 24) (y 23) (z 32)) (+ x y z))