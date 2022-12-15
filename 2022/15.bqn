⟨Ints⟩←•Import "utils.bqn"
in←(2‿2⥊Ints)¨•FLines "15.in"
M←+´|∘-
st←M˝⚇1 in
s←⊏¨in
b←(⊏⌽)¨in
min←⌊´st-˜⊑¨s
max←⌈´st+⊑¨s
t←∾⟜2000000¨min+↕1+max-min
•Show +´(∨˝st≥ s M⌜ t)∧¬t∊b # Slow
Intercepts←{d 𝕊 x‿y:
  ne←y+x+d
  se←y-x+d
  sw←y+x-d
  nw←y-x-d
  ⟨ne,sw,nw,se⟩
}
c←⍉>(1+st) Intercepts¨ s
dns←(⍷∊/⊣)˝0‿1⊏c
ups←(⍷∊/⊣)˝2‿3⊏c
cd←⊑dns
cu←⊑ups
x←0.5×cd-cu
y←0.5×cd+cu
•Show y+4000000×x
