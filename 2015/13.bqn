r←•FLines "13.in"
ParseLine←{𝕊𝕩:
    p←' '((⊢-˜+`×¬)∘=⊔⊢)𝕩
    to←⊑⊑p
    fr←⊑¯1↓⊑⌽p
    num←(•ParseFloat 3⊑p)×1-˜2×"gain"≡2⊑p
    ⟨to∾fr,num⟩
}
l←ParseLine¨r
un←⍷(⊑⊑)¨l
g←{𝕩=⌈´⥊m?0;⊑⌽⊑⟜l𝕩}¨m←((⋈⌜˜un)⊐˜⊑¨l)
Perms←{(≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕≠𝕩}
allorders←Perms un
P←⍉≍⟜(1⊸⌽)
•Show ⌈´+˝˘⊑⟜g⎉1(P∾(P⌽))˘allorders # Part 1
extun←'0'∾un
extg←(0⊸∾˘)⌾⍉0⊸∾˘g
extorders←Perms extun
•Show ⌈´+˝˘⊑⟜extg⎉1(P∾(P⌽))˘extorders # Part 2