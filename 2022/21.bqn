⟨Split,Nat,_fix⟩←•Import "utils.bqn"

m←1⊸↓⌾(⊑⌽)˘ >':'⊸Split¨ •FLines "21.in"

Calc←{𝕊 name:
  i←⊑(⊏⍉m)⊐<name
  f←' 'Split ⊑i(1⊸↓⊏)m
  (1=≠f)◶⟨{𝕊 a‿op‿b: (Calc a) ((⊑"+-/*"⊸⊐)op)◶⟨+,-,÷,×⟩ Calc b},Nat∘⊑⟩ f
}

•Show Calc "root"

_Calc2←{humn _𝕣 "humn": humn;
  humn _𝕣 "root": -○(humn _Calc2)´ (⊑⋈⊑∘⌽)r←' 'Split ⊑m(1⊸↓⊏)˜⊑(⊏⍉m)⊐<"root";
  humn _𝕣 name:
  i←⊑(⊏⍉m)⊐<name
  f←' 'Split ⊑i(1⊸↓⊏)m
  (1=≠f)◶⟨{𝕊 a‿op‿b: (humn _Calc2 a) ((⊑"+-/*"⊸⊐)op)◶⟨+,-,÷,×⟩ humn _Calc2 b},Nat∘⊑⟩ f
}

_secant←{𝔽 _𝕣 xn1‿xn2:
  xn←((xn2×𝔽 xn1)-xn1×𝔽 xn2)÷xn1 -○𝔽 xn2
  (xn≠xn1)◶⟨xn,xn‿xn1⟩@;
  𝔽 _𝕣 xn: xn
}
•Show ⊑({𝕩 _Calc2 "root"} _secant)_fix 1‿2
