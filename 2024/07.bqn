#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←ToNats¨ •FLines ≠◶"07.in"‿⊑ •args

_TestEquation←{ops _𝕣 𝕩:
  head←⊑𝕩
  tail←⌽1↓𝕩
  head⊑∘∊(⍷·∾{a 𝕊 b: {a 𝕏 b}¨ops}¨)´ tail
}
•Show (+´ ⟨+,×⟩ _TestEquation¨/⊑¨) in # Part 1
Concat←{•ParseFloat 𝕩 ∾○•Repr 𝕨}
•Show (+´ ⟨+,×,Concat⟩ _TestEquation¨/⊑¨) in # Part 2
