m←>•FLines "12.in"
allmvs←⥊(@⊸≠)⊸/¨∾¨´⟨«˘⌾⍉,«˘,»˘⌾⍉,»˘⟩{@𝕎𝕩}¨<⥊⟜(↕×´)≢m
m⥊↩
hts←'a'-˜"az"⌾((m⊐"SE")⊸⊏)m
mvs←allmvs/˜¨1≥hts-˜⊏⟜hts¨allmvs
ed←⊑m⊐"E"
unv←↕≠hts
S←{𝕊 u‿w:
 c←u⊑˜⊑∘⍋u⊏w
 n←c⊑mvs
 newu←c⊸≠⊸/u
 neww←(1+c⊑w)⊸⌊⌾(n⊸⊏)w
 newu‿neww
}
SPFrom←{
 st←m/∘∊𝕩
 wts←0¨⌾(st⊸⊏)∞⥊˜≠hts
 ed⊑⊑⌽S⍟(≠m) unv⋈wts
}
•Show SPFrom "S"
•Show SPFrom "Sa"
