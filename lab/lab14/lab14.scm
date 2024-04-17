(define (split-at lst n)
  'YOUR-CODE-HERE
  (define (split l m)
    (cond 
      ((null? l)
       nil)
      ((= m 0)
       nil)
      (else
       (cons (car l) (split (cdr l) (- m 1))))))
  (define (remain l m)
    (cond 
      ((null? l) nil)
      ((= m 0) l)
      (else (remain (cdr l) (- m 1)))))
  (cons (split lst n) (remain lst n)))

(define (compose-all funcs)
  'YOUR-CODE-HERE
  (define (excfun funs x) (cond ((null? funs) x) (else (excfun (cdr funs) ((car funs) x)))))
  (lambda (x)
    (cond 
      ((null? funcs)
       x)
      ((null? (cdr funcs))
       ((car funcs) x))
      (else
      (excfun (cdr funcs) ((car funcs) x))))))
