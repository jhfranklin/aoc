#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←(⍷⋈/⁼∘⊐) ToNats •FChars≠◶"11.in"‿⊑ •args
B←{mark 𝕊 count:
m←{0=𝕩?⋈1;0=2|≠s←•Repr 𝕩?•ParseFloat˘ 2‿∘⥊s;⋈2024×𝕩} mark
⋈⟜(count˙¨)m
}
Step←{𝕊 marks‿counts:
idx←⊐⊑f←((∾⊑¨)⋈(∾⊢´¨)) marks B¨ counts # Blinks every item
(⍷⊑f)⋈+´¨idx⊔⊢´f                         # and then deduplicates 
} 
•Show +´⊢´Step⍟25 i # Part 1
•Show +´⊢´Step⍟75 i # Part 2
