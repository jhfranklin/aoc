#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
rs‿rm←(⊑⋈1⊸↓)((⊢-˜¬×+`)(0=≠)¨)⊸⊔•FLines "05.in"
seeds←ToNats⊑rs
maps←>¨ToNats⚇1 1⊸↓¨rm

Next←{map 𝕊 seeds:
  [to,fr,sp]←⍉map
  d←diff×ind←(sp⊸>˘∧0⊸≤)diff←seeds-⌜fr
  (seeds×∧˝˘ind=0)++˝˘(ind>0)×d +⎉1‿∞ to
}

•Show ⌊´seeds Next´ ⌽maps # Part 1
