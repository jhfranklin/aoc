s←>•FLines "03.in"
dlocs←∊⟜(↕10) s-'0'
slocs←('.'≠s)∧¬dlocs
nbs←{0<+´⥊⌽⟜𝕩¨⋈⌜˜¯1‿0‿1} slocs
mask←(¬-˜⊢×·+`»⊸>)∘⊢ ⥊dlocs # this relies on there being no connected groups when deshaped
•Show +´•ParseFloat¨(∨´¨mask⊔⥊nbs)/sm←mask⊔⥊s # Part 1
glocs←+`⊸×⌾⥊'*'=s
gs←sm⊔˜-⟜(=⟜0)⌈´¨mask⊔⥊{+´⥊⌽⟜𝕩¨⋈⌜˜¯1‿0‿1} glocs # this relies on each number being next to only one gear
•Show +´×´¨•ParseFloat⚇1 (2=≠¨)⊸/gs # Part 2
