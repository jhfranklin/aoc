#! /usr/bin/env bqn
grid←'#'=>•FLines ≠◶"11.in"‿⊑ •args
er←/¬∨˝˘grid
ec←/¬∨˝grid
gs←/○⥊⟜(↕≢)grid
To←⊣+↕∘¬˜
_dist←{
  md←+´|𝕨-𝕩
  rows←+´er∊˜To´∧⊑¨𝕨⋈𝕩
  cols←+´ec∊˜To´∧⊑∘⌽¨𝕨⋈𝕩
  md+(𝕗-1)×rows+cols
}
•Show 2÷˜+´⥊2 _dist ⌜˜ gs   # Part 1
•Show 2÷˜+´⥊1e6 _dist ⌜˜ gs # Part 2
