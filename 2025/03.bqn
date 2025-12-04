#! /usr/bin/env bqn
in←•FLines ≠◶"03.in"‿⊑ •args

LJ←{𝕊 s:
  t←d⊑˜f←⊑⍒¯1↓d←s-'0'
  u←⌈´d↓˜f+1
  u+t×10
}

•Show +´LJ¨in # Part 1

st←{⟨⟩⋈˜𝕩-'0'}¨in

N←{𝕊 r‿c:
cl←≠c
a←(11-˜≠c)↓r
i←⊑⍒a
nc←c∾i⊑r
nr←(1+i)↓r
nr⋈nc
}

•Show +´{10⊸×⊸+˜´⌽ ⊑⌽N⍟12 𝕩}¨ st # Part 2
