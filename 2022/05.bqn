⟨ESplit,Split,Nat⟩←•Import "utils.bqn"
s‿i←ESplit•FLines "05.in"
s↩' '⊸≠⊸/¨<˘⍉(⊢⊏˜1+4×·↕4÷˜1+≠)˘>¯1↓s
i(⌽(Nat¨1‿3‿5⊏' '⊸Split)¨)↩
_Move←{n‿f‿t 𝔽 _𝕣 𝕩:
  f-↩1
  t-↩1
  n⊸↓⌾(f⊸⊑)((𝔽n↑f⊑𝕩)⊸∾)⌾(t⊸⊑)𝕩
}
•Show ⊑¨s(⌽_Move)´i # Part 1
•Show ⊑¨s(⊢_Move)´i # Part 2
