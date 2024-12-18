#! /usr/bin/env bqn
map←>•FLines≠◶"12.in"‿⊑ •args
_fix←{𝔽∘⊢⍟≢⟜𝔽_𝕣∘⊢⍟≢⟜𝔽𝕩}

idx←↕∘≠⌾⥊map

Flood←{
  st←idx∊⥊𝕩
  p←⊑st /○⥊ map
  allnbs←∨´⟨»,«,«˘,»˘⟩{𝕎𝕩}¨<st
  /⥊st∨allnbs∧map=p
}_fix

GetSections←{𝕤
  sections←⟨⟩
  {sec←idx∊sn←Flood ⌊´𝕩⋄sections ∾↩ <sec⋄𝕩(¬∘∊/⊣)sn}•_while_ (0<≠) ⥊idx
  sections
}

sections←GetSections@

Pad←⊢↑˝·≍⟜¬2+≢

NumEdges←(+´·{+´⥊∨´⟨0‿1,1‿0⟩⍷⚇1‿∞ 𝕩}¨ ⍉⊸⋈)∘Pad
Area←+´⥊

•Show +´(NumEdges¨×Area¨) sections # Part 1

corners←(4⥊⋈⟜⌽2‿2⥊1‿0‿0‿1)∾¬⊸∾(<2‿2⊸⥊)˘=⌜˜↕4
NumWalls←{+´⥊+´corners ⍷⚇1‿∞ Pad 𝕩} 

•Show +´(NumWalls¨×Area¨) sections # Part 2
