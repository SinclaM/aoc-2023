#!/usr/bin/env dyalogscript
M ← ↑¨(⊂'') (~⍤⍷⊆⊢) ⊃⎕NGET 'input/13.txt' 1
f ← ⊃¨{m ← ⍵ ⋄ d ← ⍺ ⋄ r ← ⍸{d=+⌿|,(⊢-⊖)'#'=⍵ ⌿ m}¨{{(↓⍵),⊖↓⌽⍵}0,⍨↑{1 1,⍣⍵ ⊢ 1 1}¨1-⍨⍳⌊0.5×⍵}⊃⍴m}¨
⎕ ← +⌿(100 × 0 f M) + (0 f ⍉¨M) ⍝ Part 1
⎕ ← +⌿(100 × 2 f M) + (2 f ⍉¨M) ⍝ Part 2
