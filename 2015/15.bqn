⟨ToNums⟩←•Import "../bqn-libs/strings.bqn"
props←>ToNums¨ •FLines "15.in"
tsp←100
mixes←((tsp-+´)⊸∾)¨(tsp≥+´¨)⊸/⥊↕(1-˜≠props)⥊1+tsp
•Show ⌈´{×´0⌈+˝𝕩×¯1⊸↓˘props}¨mixes # Part 1
cals←500
•Show ⌈´{×´0⌈+˝𝕩×¯1⊸↓˘props}¨(cals=mixes+´∘×⚇¯1‿∞ ⥊¯1⊸↑˘props)/mixes # Part 2
