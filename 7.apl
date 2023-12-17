#!/usr/bin/env dyalogscript
hands bids ← (⊣/{⍺ (⍎¨⍵)}⊢/)⎕CSV ⍠'Separator' ' ' ⊢ 'input/7.txt'
score ← {+⌿({⊖⍳≢⍵}×⊢)⊢/{⍵[⍒⍵;]}bids,⍨⍵}
⎕ ← score ({10⊥2↑⍵[⍒⍵]}¨{≢⍵}⌸¨hands),↑'23456789TJQKA'∘⍳¨hands ⍝ Part 1
⎕ ← score (10⊥¨({0,⍨+⌿'J'=⍵}+{2↑⍵[⍒⍵]}⍤{{≢⍵}⌸⍵~'J'})¨hands),↑'J23456789TQKA'∘⍳¨hands ⍝ Part 2
