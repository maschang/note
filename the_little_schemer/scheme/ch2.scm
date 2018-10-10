;
; Code snippets from "Scheme 手習い The Little Schemer", 1th edition, by
; Daniel P. Friedman and Matthias Felleisen
;
; ((Chapter 02) 一度、もう一度、さらにもう一度、またもう一度。。。))
;

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;
; lat? l
; リストがatomのリストになっているか？

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

(lat? '(bacon and egg))
; => #t

;
; menber?
; 引数を２つとる a, lat
; lat の中に a が含まれているかをチェックし、Bool値を返却する

(define menber?
  lambda (a lat)
  (cond
    ((null? lat) nil)
    (else (or (eq? (car lat) a)
              (meber? a (cdr lat))))))

(print (menber? 'atom '(hoge huga atom)))
