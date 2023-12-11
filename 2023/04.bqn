#! /usr/bin/env bqn
in←•FLines ≠◶"04.in"‿⊑ •args
wins←{
  c←2↓' '((¬-˜⊢×·+`»⊸>)∘≠⊔⊢)𝕩
  l←•ParseFloat⚇1(⊑·/"|"⊸≡¨)⊸(↑⋈+⟜1⊸↓) c
  (+´∊˜´) l
}¨ in

•Show +´⌊2⋆wins-1 # Part 1

Total←{
  cnt‿ncs←𝕩
  n←1↓ncs
  nxt←n+(cur←⊑ncs)×(≠n)↑𝕨⥊1
  (cnt+cur)⋈nxt
}´

•Show ⊑(0⋈1⥊˜≠wins) Total ⌽wins # Part 2
