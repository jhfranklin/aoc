#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←ToNats¨ •FLines ≠◶"07.in"‿⊑ •args

ops←⟨+,×⟩
TestEquation←{
  head←⊑𝕩
  tail←⌽1↓𝕩
  head⊑∘∊(⍷·∾{a 𝕊 b: {a 𝕏 b}¨ops}¨)´ tail
}
•Show (+´TestEquation¨/⊑¨) in # Part 1

Concat←{•ParseFloat 𝕩 ∾○•Repr 𝕨}
ops2←⟨+,×,Concat⟩

TestEquation2←{
  head←⊑𝕩
  tail←⌽1↓𝕩
  head⊑∘∊(⍷·∾{a 𝕊 b: {a 𝕏 b}¨ops2}¨)´ tail
}
•Show (+´TestEquation2¨/⊑¨) in # Part 2
