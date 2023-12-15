#!/usr/bin/env dyalogscript
input ← ↑⊃⎕NGET 'input/3.txt' 1

symbols ← '*#$&=+-%@/'
n ← ⍎¨(,input∊⎕D)⊆,input
b ← (⍴input)⍴{⍵×+⍀2<⌿0,⍵},input∊⎕D
⎕ ← +⌿n[∊{∪⍵/⍨0≠⍵}⍤,¨(,input∊symbols) / ,{⊂⍵}⌺3 3 ⊢ b]
⎕ ← +⌿×⌿¨{n[⍵]}¨{⍵/⍨(2=≢)¨⍵}{∪⍵/⍨0≠⍵}⍤,¨(,input='*') / ,{⊂⍵}⌺3 3 ⊢ b
