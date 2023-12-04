⟨Split,ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "04.in"
Parse←{win‿have←ToNats¨'|' Split ⊑⌽':' Split 𝕩}
Play←{𝕊 win‿have:
  wins←+´have∊win
  >⟜0◶⟨0˙,2⊸⋆-⟜1⟩ wins
}
•Show +´(Play Parse) ¨in

tot←0
ncs←1⥊˜≠cards←Parse¨in
Play2←{𝕊 cards:
  tot +↩ nums←⊑ncs
  ncs 1⊸↓↩
  ncs +↩ nums×(≠ncs)↑1⥊˜wins←(+´·∊´⌽) cards
  tot
}
•Show ⊑⌽Play2¨ Parse¨in
