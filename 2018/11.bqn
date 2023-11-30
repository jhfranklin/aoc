gs←300
g←1+⌽¨↕2⥊gs

PowerLevel←{sn 𝕊 x‿y:
  rackid←10+x
  pl←rackid×y
  pl+↩sn
  pl×↩rackid
  pl↩-⟜(⌊⌾(÷⟜10))⌊∘÷⟜100 pl
  pl-↩5
}

pls←1788⊸PowerLevel¨ g

SquareSize←{
  idx←⊑⍒p←⥊+´∘⥊⎉2 (2⥊𝕩)↕pls
  (⌈´p)∾idx⊑⥊(gs-(𝕩-1))⊸↑˘(gs-(𝕩-1))⊸↑ g
}
•Show 1↓SquareSize 3 # Part 1
•Show 1↓(⊑·⍒⊑¨)⊸⊑∾˜⟜SquareSize¨1+↕20 # Part 2
