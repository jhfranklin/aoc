in←⍉>{•ParseFloat¨((¯1+⊢×·+`»⊸<)𝕩∊'0'+↕10)⊔𝕩}¨•FLines "06.in"
•Show ×´(Calc←{spd←↕1+𝕨
dst←𝕨-spd
+´𝕩<dst×spd
}´)˘in # Part 1

newin←(•ParseFloat·⊑∘⌽∊⟜('0'+↕10)⊸⊔)¨•FLines "06.in"
•Show Calc newin # Part 2
