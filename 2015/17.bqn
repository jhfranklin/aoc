sz←•ParseFloat¨ •FLines "17.in"
tl←150
nb←≠sz
cmb←nb⊸↑˘∘‿32⥊⟨32,1‿'u'⟩•bit._cast ↕2⋆nb
nc←+´˘cmb
•Show +´tl=sz +´∘×⎉∞‿1 cmb # Part 1
mn←⌊´(tl=sz +´∘×⎉∞‿1 cmb)/nc
•Show +´tl=sz +´∘×⎉∞‿1 cmb/˜mn=nc # Part 2