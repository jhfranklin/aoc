l←•FLInes "07.in"
IsABBA←≡⟜⌽∧·≠´2⊸↑
Extract←{(𝕩∊"[]")(⊢-˜+`×¬)⊸⊔𝕩} # Hypernet sequences in even indices

TLS←{
  seqs←Extract 𝕩
  1‿0≡∨˝↑‿2⥊(∨´·IsABBA˘4⊸↕)¨seqs
}

•Show +´TLS¨l # Part 1

IsXYX←(⌽⊸≢1⊸⌽)∧⌽⊸≡
Match←{aba 𝕊 bab: bab≡3⥊⌽2↑aba}
SSL←{
  seqs←Extract 𝕩
  xyxs←(IsXYX˘⊸/)¨3⊸↕¨seqs
  abas←<˘∾´(¬2|↕≠xyxs)/xyxs
  babs←<˘∾´(2|↕≠xyxs)/xyxs
  ∨´⥊abas Match⌜ babs
}

•Show +´SSL¨l # Part 2
