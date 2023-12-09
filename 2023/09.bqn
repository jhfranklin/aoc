h←(•ParseFloat¨(⊢-˜¬×+`)∘(' '⊸=)⊸⊔)¨ •FLines "09.sample"

Diff←+`⁼

Project←{𝕊 hist:
  l←≠hist
  d‿base←0 {(∨´0≠(𝕩↑˜-l-𝕗))◶⟨𝕗⋈𝕩,((𝕗+1)_𝕣 Diff)⟩ 𝕩} hist
  +`⍟d base∾0
}

+´(⊑∘⌽Project)¨ h # Part 1
