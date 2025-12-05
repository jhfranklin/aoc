#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
sr‿si←{(0<≠¨𝕩)(¬-˜⊢×·+`»⊸>)⊸⊔𝕩}•FLines ≠◶"05.in"‿⊑ •args
r←ToNats¨sr
i←∾ToNats¨si

Fresh←{𝕊 id:
  ∨´{1=𝕩⍋id}˘1⊸+⌾(⊑⌽˘)>r
}
•Show +´Fresh¨ i # Part 1

AllFresh←{s‿e 𝕊 t‿c:
  s ⌈↩ c+1
  t +↩ 0⌈1+e-s
  c ⌈↩ e
  t∾c
}

•Show ⊑ 0‿0 AllFresh´ ∨r # Part 2
