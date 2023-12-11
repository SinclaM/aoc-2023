#!/usr/bin/env dyalogscript
⎕IO ← 0
input ← ↑⊃⎕NGET 'input/3.txt' 1

symbols ← '*#$&=+-%@/'
r ← '\d+' ⎕S '&'
m ← input∊⎕D
m[⍸m] ← ∊({0=≢⍵:⍬ ⋄ (≢⍵)⍴⍎⍵}¨r)¨↓input
b ← ⊃∨⌿∨⌿1 0 ¯1 ∘.⊖ 1 0 ¯1 ⌽¨ ⊂ input∊symbols
range ← {(⊃⍵)+⍳1⊃⍵}
matches ← { (,∘⍺)¨ '\d+' ⎕S {⍵.((Offsets),(Lengths),(⍎Match))} ⍵}
⎕ ← +⌿{(2⊃⍵)×∨⌿b[3⊃⍵; range 2↑⍵]}¨⊃,/{⍵ matches input[⍵;]}¨⍳≢input
