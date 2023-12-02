#!/usr/bin/env dyalogscript
⎕IO ← 0
input ← ↓⎕CSV ⍠'Separator' ':' ⊢'input/2.txt' ⍬ 4


r ← '(\d+)(?= r)' '(\d+)(?= g)' '(\d+)(?= b)'
parse_sets ← ';'∘(≠⊆⊢)
parse_reveal ← {(⍵ ∘ {m ← ⍵ ⎕S '&' ⊢ ⍺ ⋄ ~≢m:0 ⋄ ⍎⊃m})¨r}
games ← ↑↑((parse_reveal¨parse_sets) 1∘⊃)¨input
valid_mask ← ⌊/(13 14 15∘>)⍤1⌈/[1]games
⎕ ← +⌿valid_mask / 1+⍳≢valid_mask ⍝ part 1
⎕ ← +⌿×/⌈/[1]games ⍝ part 2
