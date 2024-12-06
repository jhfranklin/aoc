#! /usr/bin/env bqn
in←>•FLines ≠◶"06.in"‿⊑ •args
_fix←{𝔽∘⊢⍟≢⟜𝔽_𝕣∘⊢⍟≢⟜𝔽𝕩}

MDI←/○⥊⟜(↕≢)

g←MDI '#'=in
st←⊑MDI '^'=in
v←⋈st
d←¯1‿0
Rot←⌽¯1‿1⊸×
sz←≢in
Bounds←((∨´¯1⊸=)∨(∨´sz⊸=))
Test←{
  Bounds 𝕩 ? 2 ; ⊑g∊˜< 𝕩 ? 1 ; 0
}

Step←{𝕊 v‿d:
  c←⊑v
  n←c+d
  Test◶⟨d⋈˜(∾⟜v<),(v⋈Rot d)˙,v‿d˙⟩ n
}

•Show +´∊⊑Step _fix v⋈d # Part 1
