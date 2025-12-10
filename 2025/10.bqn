#! /usr/bin/env bqn
⟨ToNats,Split⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "10.in"

ParseLine←{
  line←' '⊸Split 𝕩
  d←'#'=¯1↓1↓⊑line
  n←≠d
  s←>(n↑/⁼)¨ToNats¨1↓¯1↓line
  v←ToNats ⊑⌽line
  d‿s‿v
}

m←ParseLine¨ in

Fewest←{𝕊 tgt‿bs‿·:
  st←⋈0⥊˜≠tgt
  t←0
  Step←{t+↩1⋄<˘⍷∾⍉¨𝕩 ≠⚇1‿1 ⍉bs}
  Step •_while_(∧´tgt⊸≢⚇∞‿1) st
  t
}

+´Fewest¨m
