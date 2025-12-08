#! /usr/bin/env bqn
st‿gr←(⊑⋈1⊸↓)•FLines ≠◶"07.in"‿⊑ •args
st =↩ 'S'
gr =↩ '^'

cnt←0
Step←{
  sp←𝕨∧𝕩 # hit splitters
  cnt +↩ +´sp
  (𝕩∧¬𝕨)∨(«∨») sp # beams not hitting or new beams
}

st Step´ ⌽gr
•Show cnt # Part 1

cnt2←1
Step2←{
  sp←𝕨×𝕩 # hit splitters
  cnt2 +↩ +´sp
  (𝕩×¬𝕨)+(«+») sp # beams not hitting or new beams
}
st Step2´ ⌽gr
•Show cnt2 # Part 2
