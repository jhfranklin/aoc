⟨Split,Nat⟩←•Import "utils.bqn"
J←∾⟜"/"⊸∾
t←' '⊸Split¨1↓•FLines "07.in"
id←p←⋈"/"
sz←⋈0
CD←{𝕩≡".."?p 1⊸↓⌾⌽↩;p∾↩<𝕩}
Add←{
  new←id {𝕩/˜𝕨¬∘∊˜𝕩} a←J`p
  id∾↩new
  sz↑˜↩sz+○≠new
  sz↩𝕩⊸+⌾((id⊐a)⊸⊏)sz
}
{"$"‿"cd"≡2↑𝕩? CD 2⊑𝕩 ; "$"≢⊑𝕩 ? "dir"≢⊑𝕩 ? Add Nat ⊑𝕩 ; @}¨t
•Show +´sz×1e5≥sz # Part 1
f←(⊑sz)-7e7-3e7
•Show ⌊´≥⟜f⊸/ sz # Part 2
