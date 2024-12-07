#! /usr/bin/env bqn
in←>•FLines ≠◶"06.in"‿⊑ •args

MDI←/○⥊⟜(↕≢)
Rot←⌽¯1‿1⊸×

st←⊑MDI '^'=in
sz←≢in
OoB←∨´≥⟜sz∨<⟜0

Patrol←{𝕊 map:
  g←st
  d←¯1‿0
  path←•HashMap˜⟨⟩
  g‿d↩{('#'≠⊑⟜map)∘⊑ ◶⟨-´⋈Rot∘⊑∘⌽,{⟨⟩ path.Set˜ 𝕩 ⋄(+´⋈⊑∘⌽)𝕩}⟩ 𝕩} •_while_ (¬∘path.Has ∧ ¬∘OoB∘⊑) g⋈d
  (path.Keys@)⋈path.Has g⋈d
}

•Show ≠obs←⍷⊑¨⊑Patrol in# Part 1
•Show +´{⊑⌽Patrol '#'⌾(𝕩⊸⊑) in}¨ obs # Part 2
