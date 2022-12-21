⟨Split,Nat⟩←•Import "utils.bqn"

m←1⊸↓⌾(⊑⌽)˘ >':'⊸Split¨ •FLines "21.in"

Calc←{𝕊 name:
  i←⊑(⊏⍉m)⊐<name
  f←' 'Split ⊑i(1⊸↓⊏)m
  (1=≠f)◶⟨{𝕊 a‿op‿b: (Calc a) ((⊑"+-/*"⊸⊐)op)◶⟨+,-,÷,×⟩ Calc b},Nat∘⊑⟩ f
}

•Show Calc "root"
