#!/usr/bin/env dyalogscript
⎕IO ← 0
input ← ⊃⎕NGET'input/1.txt'1

⎕ ← +/{⍎(⊣/,⊢/)⍵∩⎕D}¨input ⍝ Part 1

n ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine'
f ← {+⌿↑(⍵∘{⍵×((⍵⊃⎕D)⍷⍺)+((⍵⊃n)⍷⍺)})¨⍳10}
⎕ ← +/{10⊥l⌷⍨⊂(⊣/,⊢/)⍸l←f⍵}¨input ⍝ Part 2
