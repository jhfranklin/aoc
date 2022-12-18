⟨Nats⟩←•Import "utils.bqn"
cubes←Nats¨•FLines "18.in"
I←∊/⊣
C←¬∘∊/⊣
space←cubes C˜ ⥊¯1+↕3⥊24
Sides←{space I 𝕩+-⊸∾<˘=⌜˜↕3}
•Show +´≠∘Sides˘cubes # Part 1
Find←{𝕊 q‿s:
  n←⊑q
  q 1⊸↓↩
  s↩⍷s∾<n
  q↩⍷q∾s C˜ Sides <n
  q‿s
}
steam←⊑⌽Find •_while_{0<≠⊑𝕩} ⟨⟩⋈˜⋈3⥊¯1
•Show +´≠∘(steam I Sides)˘cubes # Part 2
