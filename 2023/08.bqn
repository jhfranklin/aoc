#! /usr/bin/env bqn
p‿ns←(('R'=⊑)⋈2⊸↓)•FLines ≠◶"08.in"‿⊑ •args
map←0⥊˜2∾˜26⋆3
Convert←+´(26⋆↕3)×-⟜'A' # Converts codes to decimal
{
  idx←Convert 3↑𝕩
  map ((7‿8‿9⊸⊏ ⋈○Convert (¯3↑¯1⊸↓))𝕩)⌾(idx⊸⊏)↩
}¨ns

Loop←{
  cnt←0
  {
    cnt 1⊸+↩
    map⊑˜𝕩⋈d←p⊑˜(cnt-1)|˜≠p
  }•_while_ (17575⊸≠) 𝕩
  cnt
}

•Show Loop 0 # Part 1
 
as←(Convert 3⊸↑)¨ns/˜'A'=2⊸⊑¨ ns
zs←(Convert 3⊸↑)¨ns/˜'Z'=2⊸⊑¨ ns

FindLoop←{
  cnt←0
  F←{
    cnt 1⊸+↩
    map⊑˜𝕩⋈d←p⊑˜(cnt-1)|˜≠p
  }
  F •_while_ (¬∘⊑ ∊⟜zs) 𝕩
  cnt
}
•Show •math.LCM´ FindLoop¨ as # Part 2
