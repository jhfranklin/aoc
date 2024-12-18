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

NumEdges←+´·{+´⥊∨´⟨0‿1,1‿0⟩⍷⚇1‿∞ 𝕩}¨ ⍉⊸⋈
Area←+´⥊

•Show +´(NumEdges∘Pad¨×Area¨) sections
