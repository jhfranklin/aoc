#! /usr/bin/env bqn
in←•FLines ≠◶"02.in"‿⊑ •args
g←{
  b←∘‿2⥊2↓(-˜⟜(+`×¬)' '⊸=)⊸⊔ 𝕩
  d←(+`·»';'=·⊑∘⌽¨⊏∘⌽˘)⊸⊔ b
  ⌈´(+˝(×´·("rgb"=⌜⊑)⌾(⊑⌽)•ParseFloat⌾⊑)˘)¨d
}¨in
•Show +´1+/∧´∘≤⟜12‿13‿14¨g # Part 1
•Show +´×´¨g # Part 2
