in←⍉>{•ParseFloat¨((¯1+⊢×·+`»⊸<)𝕩∊'0'+↕10)⊔𝕩}¨r←•FLines ≠◶"06.in"‿⊑ •args

Calc←{
  spd←↕1+𝕨
  dst←𝕨-spd
  +´𝕩<dst×spd
}

•Show ×´Calc´˘in # Part 1

newin←(•ParseFloat·⊑∘⌽∊⟜('0'+↕10)⊸⊔)¨r
•Show Calc´ newin # Part 2
