#!/usr/bin/env dyalogscript
input ← ⊃⎕NGET 'input/6.txt' 1
r ← {q ← ((⍵×⍵) - 4×⍺)*0.5 ⋄ ∪0.5×⍵+1 ¯1×q}
solve ← ¯1∘+⍤-/⍤{⍵/⍨(⊢=+)⍵}⍤(⊣/,⊢/)⍤(⊣/{⌈⍺,⌊⍵}⊢/)

t d ← {1↓⊃1↓⎕VFI ⍵}¨input
⎕ ←  ×/(⊣/{solve ⍺ r ⍵}⊢/)¨↓⍉↑d t ⍝ Part 1

t2 d2 ← ⍎¨∊¨{⍕¨1↓⊃1↓⎕VFI ⍵}¨input
⎕ ← ×/(⊣/{solve ⍺ r ⍵}⊢/)¨↓⍉↑d2 t2 ⍝ Part 2
