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

•Show +´Fewest¨m # Part 1

Costs←{𝕊 s:
  combs←(⥊(↕2˘)/¨<) ↕≠s # all combinations of single presses
  combs ≠¨⊸(⍋⊸⊏)↩       # sorted into ascending order of number of presses
  res←(+˝⊏⟜s)¨combs     # what button press results in
  res↩res/˜m←∊res       # take unique results
  cst←m/≠¨combs         # and their costs
  res⋈cst
}

Part2←{𝕊 ·‿s‿goal:
  memo←•HashMap˜⟨⟩
  p‿pcost←Costs s
  {∧´0=𝕩 ? 0;
  memo.Has 𝕩 ? memo.Get 𝕩 ;
  𝕊 g:
  t1←p∧´∘≤⚇1‿∞ g # which patterns still fit
  t2←p ≡⚇1‿∞○(2⊸|)g # which patterns would result in same parity
  m←t1∧t2 # mask of above tests
  ps←m/p # which patterns to test
  pcosts←m/pcost # and associated costs
  a←⌊´∞∾pcosts+2×𝕊¨{2÷˜g-𝕩}¨ps
  𝕩 memo.Set a
  a
  } goal
}

•Show +´ Part2¨ m # Part 2
