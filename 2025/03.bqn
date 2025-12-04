#! /usr/bin/env bqn
in←•FLines ≠◶"03.in"‿⊑ •args

N←{n 𝕊 in:
  st←⟨⟩⋈˜in-'0' 
  10⊸×⊸+˜´⌽ ⊑⌽{𝕊 r‿c:
  cl←≠c
  a←((n-1)-˜≠c)↓r
  i←⊑⍒a
  nc←c∾i⊑r
  nr←(1+i)↓r
  nr⋈nc
  }⍟n st
}
•Show +´2 N¨in
•Show +´12 N¨ in
