#! /usr/bin/env bqn
in←>•FLines ≠◶"04.in"‿⊑ •args

hv←+´(+´⥊)¨"XMAS"⍷ ⚇∞‿1 ⟨in,⌽˘in,⍉in,⌽˘⍉in⟩ # gets the horizontal and vertical
Diags←{
  d←(⍉↕∘≠⌽˘⊢)𝕩
  r←(⍉(⌽1+↕)≍-∘↕)≠𝕩
  r<∘↑ ⎉0‿1 d
}
d1←+´⥊+´¨∾"XMAS" ⍷⚇∞‿1 Diags¨ ⟨in,⌽˘in⟩
d2←+´⥊+´¨∾"SAMX" ⍷⚇∞‿1 Diags¨ ⟨in,⌽˘in⟩
•Show hv+d1+d2 # Part 1
IsMAS←{
  md←0‿0⍉𝕩
  ad←0‿0⍉⌽˘𝕩
  mt←md ∨´∘(≡⚇∞‿1) ⟨"MAS","SAM"⟩
  at←ad ∨´∘(≡⚇∞‿1) ⟨"MAS","SAM"⟩
  mt∧at
}
•Show +´IsMAS¨ ⥊<⎉2 3‿3↕in # Part 2
