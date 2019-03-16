;
; Code snippets from "Scheme 手習い The Little Schemer", 1th edition, by
; Daniel P. Friedman and Matthias Felleisen
;
; ((Chapter 01) 偉大なるCons)
;

;
; rember
; 引数を2つ取る。
; 一つはatom。もう一つはリスト。
; リストの中にatomがあればそれを取り除く関数
; remove a member の造語？

(define rember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? car lat) a) (cdr lat)
              (else (cons )))))))
