#!/usr/bin/env dyalogscript
⎕ ← ⊃+⌿{l r ← ⍬ ⍬ ⋄ (+⌿r)(⊃⊖-⍀l) ⊣ {l r ,← (⊃⍵)(⊃⊖⍵) ⋄ 2-⍨⌿⍵}⍣{∧⌿0=⍺}⍎⍵}¨'-'⎕R'¯'¨⊃⎕NGET'input/9.txt'1
