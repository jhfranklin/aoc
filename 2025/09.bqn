#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←ToNats¨ •FLines "09.in"
A←×´1+|∘-
pairs←(⊑⟜in¨)¨∾(⊢∾¨¨≠↑↑) ↕≠in
•Show ⌈´A´¨pairs # Part 1

edges←2↕in∾<⊑in # all edges

scanlines←{𝕊 y:
  vedges←∧˘(1‿0≡⎉∞‿1=´˘)⊸/edges
  crossed←vedges/˜y{1=𝕩⌽⊸⍒𝕨}˘⊑∘⌽¨vedges
  crossed (↕0‿2)⍟(0=≠)↩
  [x1,y1]←⍉(⊑)˘crossed
  [x2,y2]←⍉(⊑⌽)˘crossed
  t←(y-y1)÷(y2-y1)
  xcross←∧x1+t×x2-x1
}¨0.5+↕1+⌈´⊑∘⌽¨in

P2Area←{x1‿y1 𝕊 x2‿y2:
  x1‿x2 ↩ ∧ x1‿x2
  y1‿y2 ↩ ∧ y1‿y2
  area←(1+x2-x1)×(1+y2-y1)
  area×∧´{x3‿y3 𝕊 x4‿y4:
  x3‿x4 ↩ ∧ x3‿x4
  y3‿y4 ↩ ∧ y3‿y4
  echeck←¬(x1<x4)∧(x2>x3)∧(y1<y4)∧(y2>y3) # check not crossing an edge
  b←⊑(x1+0.5)⍋˜ s←y1⊑scanlines
  icheck←(b>0)∧b<≠scanlines # check inside the polygon
  echeck ∧ icheck
}´˘edges
}

•Show ⌈´P2Area´¨ pairs # Part 2
