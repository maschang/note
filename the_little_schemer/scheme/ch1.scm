;
; Code snippets from "Scheme 手習い The Little Schemer", 1th edition, by
; Daniel P. Friedman and Matthias Felleisen
;
; ((Chapter 01) おもちゃ)
;

;
; はじめに

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;
; 全部atom

'atom
'turkey
'1492
'u
'*abc$

;
; not atom

()

;
; 全部リスト

'(atom)
'(atom turkey or)
'((atom turkey) or)
()
'(() () () ())

;
; 全部S式

'xyz
'(x y z)
'((x y) z)


;
; リストの中にS式は６つ

'(how are you doing so far)

;
; car
; 空でないリストに対して定義できる
; 最初のS式を返す

(car (car '(((hotdogs)) (and))))
; =>(hotdogs)

;
; cdr
; 空でないリストに対して定義できる
; 空でないリストのcdrは常に別のリストになる
; 最初のS式を覗いた残りをリストで返す

(cdr (cdr '((b) (x y) (c))))
; =>((c))

;
; cons
; ２つの引数を取る
; 第二引数はリストでなければならない
; 戻り値は必ずリストになる
; 任意のS式をリストの前にconsする

(cons '((help) this) '(is very ((hard) to learn)))
; =>(((help) this) is very ((hard) to learn))


;
; null?
; リストに対してのみ定義できる
; 空リストかどうかをチェック
; 空リストは (quote ()) と '() の２通りの表し方がある

(null? ())
; => #t

;
; quote
; ref: http://www.shido.info/lisp/scheme3.html
; > 値が括弧の内側から外側に向けて評価が行われ、 一番外側の括弧が評価した値がその式の値として返ってくるという計算法を取っているため、 トークン(プログラム言語における意味を持つ最小単位、ほとんど単語と同じ意味） は常に評価される危険にさらされます。 そこで、シンボルやリストなど、評価されると自分自身にならないデータそのものをプログラムに与えるときは quote という命令を使います。

;
; eq?
; ２つの引数を取って同じatomかどうかを返す
; ２つのatomは数でないatomでなければならない
; ※注釈には引数にリストをとることも可能と書いてある。結果は #f ではある

(eq? 'atom 'atom2)
; => #f
(print (eq? '(atom) '(atom)))
; => #f
