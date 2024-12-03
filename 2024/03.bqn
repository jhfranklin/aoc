#! /usr/bin/env bqn
⟨Split⟩←•Import "../bqn-libs/strings.bqn"
in←∾•FLines ≠◶"03.in"‿⊑ •args
GetGroups←{
  mul←(≠𝕩)↑"mul("⍷𝕩 # Find the "mul(" starts
  gs←1↓(+`mul) ⊔ 𝕩  # and collect them
  grp←{cls←⊑𝕩⊐ ')'  # locate the end of the groups
  (cls+1)↑𝕩}¨gs
  grp↩(')'=∾¯1⊸↑¨grp)/grp # remove groups that didn't end
}
IsNat←{(4>≠𝕩)∧∧´𝕩∊"0123456789"}
ParseNat←{IsNat 𝕩? •ParseFloat 𝕩 ; 0}
ParseMul←{{𝕊 l‿r:l ×○ParseNat r;0}',' Split ¯1↓4↓𝕩}
•Show (+´·ParseMul¨GetGroups)in # Part 1
ProcessOnOff←{
on←(≠𝕩)↑1∾"do()"⍷𝕩
off←(≠𝕩)↑"don't()"⍷𝕩
m←(1⌊0⌈+)`on+-off
m/𝕩
}
•Show (+´·ParseMul¨GetGroups)ProcessOnOff in # Part 2
