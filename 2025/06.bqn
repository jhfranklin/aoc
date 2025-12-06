#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
i←•FLines ≠◶"06.in"‿⊑ •args
nums←⍉>ToNats¨ nums←¯1↓i
ops←{'*'=𝕩?×;+}¨' '⊸≠⊸/ ⊑⌽i

•Show +´ops {𝕎´𝕩}¨ <˘nums # Part 1

rtlnums←(<∾)¨{(¬a)-˜a×+`0=a←≠¨𝕩}⊸⊔ ToNats⚇1<˘⍉>¯1↓i
•Show ⊑+´ops {𝕎´𝕩}⚇0‿1 rtlnums # Part 2
