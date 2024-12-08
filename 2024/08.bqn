map←>•FLines ≠◶"08.in"‿⊑ •args
MDI←/○⥊⟜(↕≢)    # multidimensional indices
a←MDI '.'≠map   # get locations of all antennas
g←(⊐a⊑map)⊸⊔ a  # group into antennas by frequency
sz←≢map
n←⊑sz

InBounds←∧´≥⟜0∧<⟜sz

InBounds 0‿11

GetPairs←{      # gets all distinct pairs
  all←⥊⋈⌜˜𝕩     # all combos
  lt←⥊>⌜˜↕≠𝕩    # lower triangular exc. (so removes reverses and self-pairs)
  lt/all        # map
}
p←∾GetPairs¨ g

GetAntiNodes←{
  v←𝕩-𝕨                 # vector between node 𝕨 and node 𝕩
  InBounds¨⊸/ (𝕩+v)⋈𝕨-v # vector ahead of 𝕩 or vector behind 𝕨, validated
} 

•Show +´∊∾GetAntiNodes´⚇2 p # Part 1

GetAllAntiNodes←{
  v←𝕩-𝕨
  st←v×⚇∞‿0  ↕n
  InBounds¨⊸/ (𝕩+⚇∞‿1 st)∾(𝕨-⚇∞‿1 st)
} 
•Show +´∊∾GetAllAntiNodes´⚇2 p # Part 2
