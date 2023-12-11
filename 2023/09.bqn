#! /usr/bin/env bqn
h←(•ParseFloat¨(⊢-˜¬×+`)∘(' '⊸=)⊸⊔)¨ •FLines ≠◶"09.in"‿⊑ •args

Project←{𝕊 hist:
  l←≠hist
  d‿base←0 {(∨´0≠(𝕩↑˜-l-𝕗))◶⟨𝕗⋈𝕩,((𝕗+1)_𝕣 +`⁼)⟩ 𝕩} hist
  +`⍟d base∾0
}

+´(⊑∘⌽Project)¨ h   # Part 1
+´(⊑∘⌽Project∘⌽)¨ h # Part 2
