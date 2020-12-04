(print (+ 1 1))

(print ((lambda (x)
  (+ x x)) 22))

(define addWithLambda (lambda (x)
  (+ x x)))

(define (add x)
  (+ x x))

(define (addAll . numbers)
  (apply + numbers))


(print (addWithLambda 2223))
(print (add 2223))
(print (addAll 2 2 2 2))