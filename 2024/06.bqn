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
  g‿d↩{('#'≠⊑⟜map)∘⊑ ◶⟨-´⋈Rot∘⊑∘⌽,{map 'X'⌾((⊑𝕩)⊸⊑)↩ ⋄ ⟨⟩ path.Set˜ 𝕩 ⋄(+´⋈⊑∘⌽)𝕩}⟩ 𝕩} •_while_ (¬∘path.Has ∧ ¬∘OoB∘⊑) g⋈d
  map⋈path.Has g⋈d
}

•Show +´'X'=⥊p←⊑Patrol in # Part 1
obs←MDI 'X'=p
•Show +´(⊑∘⌽Patrol)¨ {'#'⌾(𝕩⊸⊑) in}¨ obs # Part 2
