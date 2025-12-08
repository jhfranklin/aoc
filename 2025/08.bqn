#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
b←ToNats¨ •FLines "08.in"

pairs←∾(⊢∾¨¨≠↑↑) id←↕≠b
Dist←{+´⌾(×˜)-´𝕩⊏b}
ds←Dist¨ pairs # distances
pairs ↩ ds ⍒⊸⊏ pairs # ordered pairs (descending for fold)

Merge←{𝕊 pairs:
  seen←0
  p2←⟨⟩
  C←{new 𝕊 circuit:
    m←∨´¨+˝new=⌜circuit
    circuit↩{
      𝕊 0: circuit∾<new;
      𝕊 1: (<(∾m/circuit)∾(¬new∊∾circuit)/new)∾circuit/˜¬m;
      𝕊 2: (<∾m/circuit)∾circuit/˜¬m
    }+´m
    {seen↩1⋄p2↩𝕩⊏b}⍟((¬seen)∧(≠b)=≠⊑circuit) new
    circuit
  }
  p1←⟨⟩ C´ ¯1000↑pairs
  p1 C´ ¯1000↓pairs
  ⟨×´3↑∨≠¨p1,⊑×´p2⟩
}

p1‿p2←Merge pairs
•Show p1 # Part 1
•Show p2 # Part 2
