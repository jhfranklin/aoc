⟨Nat,Nats⟩←•Import "utils.bqn"
inp←•FLines "11.in"
is←initis←Nats¨inp⊏˜1+7×↕8
os←{"old"≡25↓𝕩?×˜;'+'=23⊑𝕩?+⟜(Nat 25↓𝕩);×⟜(Nat 25↓𝕩)}¨inp⊏˜2+7×↕8
cs←(⊑Nats)¨inp⊏˜3+7×↕8
ts←(⊑Nats)¨inp⊏˜4+7×↕8
fs←(⊑Nats)¨inp⊏˜5+7×↕8
n←8⥊0
_T←{𝔽 _𝕣 m:
  o←m⊑os
  i←m⊑is
  c←m⊑cs
  i(𝔽o¨)↩
  n(+⟜(≠i))⌾(m⊸⊑)↩
  r←{0=c|𝕩?m⊑ts;m⊑fs}¨i
  i{is∾⟜𝕨⌾(𝕩⊸⊑)↩}¨r
  is⟨⟩⌾(m⊸⊑)↩
}
{𝕤⋄(⌊÷⟜3)_T¨↕8}⍟20 @
•Show ×´2↑∨n # Part 1
is↩initis
n↩8⥊0
d←×´cs
{𝕤⋄d⊸|_T¨↕8}⍟10000 @
•Show ×´2↑∨n # Part 2
