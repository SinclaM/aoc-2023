#!/usr/bin/env dyalogscript
input ← ⊃⎕NGET 'input/4.txt' 1

wins ← ≢⍤(⊃∩2∘⊃)⍤(⊃⊆2∘⊃)⍤⎕VFI¨input
⎕ ← +/(×wins)×2*wins-1 ⍝ Part 1

counts ← 1⍨¨wins
⎕ ← +/{counts[⍵+⍳⍵⊃wins] +← counts[⍵]}¨⍳≢wins ⍝ Part 2
