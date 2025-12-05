#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←∘‿2⥊ToNats ⊑•FLines ≠◶"02.in"‿⊑ •args
•Show +´{⊣`⊸≡2‿↑⥊•Fmt𝕩}¨⊸/ n←∾{<𝕨+↕𝕩¬𝕨}´˘in # Part 1
•Show +´{∨´{{⊣`⊸≡𝕩‿↑⥊s}¨2+↕1-˜≠s←𝕩}•Fmt𝕩}¨⊸/ n # Part 2
