⟨Split,ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "04.sample"
Parse←{win‿have←ToNats¨'|' Split ⊑⌽':' Split 𝕩}
Play←{𝕊 win‿have:
  wins←+´have∊win
  >⟜0◶⟨0˙,2⊸⋆-⟜1⟩ wins
}
+´(Play Parse) ¨in

Play2←{𝕊 cards:
  n←≠cards
  wins←(+´·∊´⌽)¨cards
  new←(n↑/⁼)¨1+(↕¨wins)+↕n
  ncs←1⥊˜≠cards
  # to finish
}
Play2 Parse¨in