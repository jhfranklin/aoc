⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
bhp‿bdmg‿barm←ToNats∾´•FLines "21.in"

# Shop
wc←8‿10‿25‿40‿74
wd←4‿5‿6‿7‿8
ac←13‿31‿53‿75‿102
aa←1‿2‿3‿4‿5
rc←25‿50‿100‿20‿40‿80
rd←1‿2‿3‿0‿0‿0
ra←0‿0‿0‿1‿2‿3
woptions←=⌜˜↕5
aoptions←6⊸↑˘=⌜˜↕5
roptions←37⊸↑˘⍉36‿6⥊∨⎉∞‿1⎉1‿∞˜=⌜˜↕6
costs←⥊(wc +˝∘× woptions)+⌜(ac +˝∘× aoptions)+⌜rc +˝∘× roptions
dmgs←⥊1‿0‿2⍉6‿5‿37⥊(wd +˝∘× woptions)+⌜rd +˝∘× roptions
arms←⥊5‿6‿37⥊(aa +˝∘× aoptions)+⌜ra +˝∘× roptions
⍉dmgs≍arms

php←100

Turn←{pdmg‿parm 𝕊 php‿bhp:
  att←1⌈pdmg-barm
  def←1⌈bdmg-parm
  ⟨php-def,bhp-att⟩
}

•Show ⌊´costs/˜{0≥⊑⌽𝕩⊸Turn •_while_(∧´0⊸<) php‿bhp}˘⍉dmgs≍arms # Part 1
•Show ⌈´costs/˜{((0<⊑∘⌽)∧0≥⊑)𝕩⊸Turn •_while_(∧´0⊸<) php‿bhp}˘⍉dmgs≍arms # Part 2
