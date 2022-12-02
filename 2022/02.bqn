in←(⊑⋈⊑∘⌽)¨ •FLines "02.in"
S←1+⊣+3×3|1+-
P1←{
  them←𝕨-'A'
  me←𝕩-'X'
  me S them
}
•Show +´P1´¨ in # Part 1
P2←{
  them←𝕨-'A'
  res←𝕩-'X'
  me←3|them+res-1
  me S them
}
•Show +´P2´¨ in # Part 2
