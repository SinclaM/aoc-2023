#!/usr/bin/env dyalogscript
input ← ↑⊃⎕NGET 'input/14.txt' 1

tilt ← {
    s←(0∘,⍤⍸'#'∘=)¨↓⍉⍵
    r←{≢⍸'O'=⍵}¨¨'#'∘(1↓¨,⊂⍨1,=)¨↓⍉⍵
    ⍉↑⊃¨{a←'.'\⍨≢input ⋄ a[⍺]←'#' ⋄ a[⍵]←'O' ⋄ a}/¨↓⍉↑(1∘↓¨s)({∊{⍺+⍳⍵}/¨↓⍉↑⍵}¨↓⍉↑s r)
}
load ← {+⌿(≢input)-¯1+⊣/¨⍸'O'=⍵}

⎕ ← load tilt input ⍝ Part 1

probe ← {⌽∘⍉ (tilt ⌽∘⍉)⍣3 tilt ⍵}⍣500 ⊢ input
period cycle_start ← 0 0
{period +← 1 ⋄ ⌽∘⍉ (tilt ⌽∘⍉)⍣3 tilt ⍵}⍣{⍺≡probe} ⊢ probe
{cycle_start +← 1 ⋄ ⌽∘⍉ (tilt ⌽∘⍉)⍣3 tilt ⍵}⍣{⍺≡probe} ⊢ input

⎕ ← load {⌽∘⍉ (tilt ⌽∘⍉)⍣3 tilt ⍵}⍣(cycle_start + period|1e9 - cycle_start) ⊢ input ⍝ Part 2
