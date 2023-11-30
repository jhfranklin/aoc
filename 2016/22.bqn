⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
d←ToNats¨ 2↓•FLines "22.in"
used←3⊑¨d
avail←4⊑¨d
id←=⌜˜↕≠used
•Show +´⥊(¬id)∧(used≠0)∧used≤⌜avail # Part 1
