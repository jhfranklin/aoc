#! /usr/bin/env bqn
grid←'#'=>•FLines "11.in"
er←/¬∨˝˘grid
ec←/¬∨˝grid
gs←/○⥊⟜(↕≢)grid
To←{𝕨+↕𝕩¬𝕨}
_dist←{
  md←+´|𝕨-𝕩
  rows←+´er∊˜To´∧⊑¨𝕨⋈𝕩
  cols←+´ec∊˜To´∧⊑∘⌽¨𝕨⋈𝕩
  md+(𝕗-1)×rows+cols
}
•Show 2÷˜+´⥊2 _dist ⌜˜ gs
•Show 2÷˜+´⥊1e6 _dist ⌜˜ gs
