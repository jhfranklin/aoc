#! /usr/bin/env bqn
⟨Split,ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "04.in"
wins←{(+´∊˜´) ToNats¨'|' Split ⊑⌽':' Split 𝕩}¨in

•Show +´⌊2⋆wins-1 # Part 1

Total←{
  cnt‿ncs←𝕩
  n←1↓ncs
  nxt←n+(cur←⊑ncs)×(≠n)↑𝕨⥊1
  (cnt+cur)⋈nxt
}´

•Show ⊑(0⋈1⥊˜≠wins) Total ⌽wins
