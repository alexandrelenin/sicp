(define (deep-reverse tree)
  (define (iter things result)
    (cond ((null? things) result)
          ((not (pair? things)) things)
          (else (iter (cdr things)
                      (cons (iter (car things) (list)) result)))))
  (iter tree (list)))