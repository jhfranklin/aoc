#! /usr/bin/env bqn
map←>•FLines ≠◶"08.in"‿⊑ •args
MDI←/○⥊⟜(↕≢)    # multidimensional indices
a←MDI '.'≠map   # get locations of all antennas
g←(⊐a⊑map)⊸⊔ a  # group into antennas by frequency
sz←≢map
n←⊑sz

InBounds←∧´≥⟜0∧<⟜sz

GetPairs←{      # gets all distinct pairs
  all←⥊⋈⌜˜𝕩     # all combos
  lt←⥊>⌜˜↕≠𝕩    # lower triangular exc. (so removes reverses and self-pairs)
  lt/all        # map
}
p←∾GetPairs¨ g

_GetAntiNodes←{
  v←𝕩-𝕨              
  st←v×⚇∞‿0 𝕗
  InBounds¨⊸/ (𝕩+⚇1 st)∾(𝕨-⚇1 st)
} 

•Show +´∊∾ 1 _GetAntiNodes´¨ p # Part 1
•Show +´∊∾ (↕n) _GetAntiNodes´¨ p # Part 2
