#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines ≠◶"05.in"‿⊑ •args

rs‿us←ToNats⚇1 ((+`»)⊸-(0=≠)¨)⊸⊔ in
rs >↩

Relevant←{(∧´˘rs∊𝕩)/rs}
CheckOrder←{𝕊 u:
  ∧´<´˘u⊐Relevant 𝕩
}
GetMiddle←(0.5×1-˜≠)⊸⊑
•Show +´GetMiddle¨ CheckOrder¨⊸/ us # Part 1
FixUpdate←{𝕊 u:
  {
    bad←⊏>´˘⊸/𝕩⊐re←Relevant 𝕩 # find first bad rule
    ⌽⌾(bad⊸⊏) 𝕩               # and swap them
  }•_while_(¬CheckOrder) u
}
•Show +´GetMiddle¨ FixUpdate¨¬∘CheckOrder¨⊸/ us # Part 2
