#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
rs‿rm←(⊑⋈1⊸↓)((⊢-˜¬×+`)(0=≠)¨)⊸⊔•FLines ≠◶"05.in"‿⊑ •args
seeds←ToNats⊑rs
maps←>¨ToNats⚇1 1⊸↓¨rm
maps (⍋1⊸⊑˘)⊸⊏¨↩ # Sort using from
rngs←(⥊(+`1⊸↓)˘)¨ maps
funs←((⥊((0∾-´)¯1⊸↓)˘)∾0˙)¨ maps
cmaps←⌽rngs⋈¨funs
Next←{map 𝕊 seed:
  rng‿fun←map
  seed+(rng⍋seed)⊏fun
}
•Show ⌊´(⊑Next´⟜cmaps)¨seeds # Part 1

NextRange←{map 𝕊 sr:
  rng‿fun←map
  a←rng⊏˜{𝕨+↕𝕩-𝕨}´rng⍋sr
  rs←∘‿2⥊∧sr∾a∾a-1
  rs+fun⊏˜rng⍋⊑˘rs
}
srs←+`˘∘‿2⥊seeds
NextMap←{map 𝕊 srs:
  ∾(<map⊸NextRange)˘srs
}

•Show ⌊´⥊NextMap´⟜cmaps srs # Part 2
