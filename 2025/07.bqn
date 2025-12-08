#! /usr/bin/env bqn
st‿gr←(⊑⋈1⊸↓)•FLines ≠◶"07.in"‿⊑ •args
st =↩ 'S'
gr =↩ '^'

cnt←0
Step←{
  sp←𝕨×𝕩 # hit splitters
  cnt +↩ +´×sp
  (𝕩×¬𝕨)+(«+») sp # beams not hitting or new beams
}
ts←st Step´ ⌽gr
•Show cnt # Part 1
•Show +´ ts # Part 2 
