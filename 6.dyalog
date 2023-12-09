#!/usr/bin/env dyalogscript
input ← ⊃⎕NGET 'input/6.txt' 1
p ← {1↓⊃1↓⎕VFI⍵}
r ← {∪0.5×⍵+1 ¯1×((⍵×⍵) - 4×⍺)*0.5}
f ← ¯1∘+⍤-/⍤{⍵/⍨(⊢=+)⍵}⍤{⌈⍺,⌊⍵}/
solve ← {×/(f r)/¨↓⍉↑⍵}

⎕ ← solve ⊖p¨input ⍝ Part 1
⎕ ← solve ⊖{⍎∊⍕¨p⍵}¨input ⍝ Part 2
