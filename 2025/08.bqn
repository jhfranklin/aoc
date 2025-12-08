#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"

b←ToNats¨ •FLines "08.in"
pairs←∾(⊢∾¨¨≠↑↑) id←↕≠b
Dist←{𝕊 𝕩:+´⌾(×˜)-´𝕩⊏b}
ds←Dist¨ pairs # distances
pairs ↩ ds ⍒⊸⊏ pairs # ordered pairs (descending for fold)
seen←0
Connect←{new 𝕊 circuit:
m←∨´¨+˝new=⌜circuit
circuit↩{𝕊 0: # new circuit
circuit∾<new
;𝕊 1: # attach to existing circuit
(<(∾m/circuit)∾(¬new∊∾circuit)/new)∾circuit/˜¬m
;𝕊 2: # merge circuits
(<∾m/circuit)∾circuit/˜¬m
}+´m
{seen↩1⋄•Show 𝕩⊏b}⍟((¬seen)∧(≠b)=≠⊑circuit) new
circuit
}

•Show ×´3↑∨≠¨⟨⟩ Connect´ ¯1000↑pairs # Part 1
seen↩0
⟨⟩ Connect´ pairs # Part 2
