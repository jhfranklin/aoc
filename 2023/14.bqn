#! /usr/bin/env bqn
in←>•FLines ≠◶"14.in"‿⊑ •args

Load←{𝕊 col:
  idx←'#'=col
  rolls←+´¨'O'=col ⊔˜((¬×+`)⊸-)idx
  cubes←¯1∾/idx
  +´∾(≠col)-1+cubes +⟜↕¨ (≠cubes)↑rolls
}
Rot←⌽⍉

•Show +´Load˘ Rot in # Part 1

Tilt←{𝕊 col:
  idx←'#'=col
  rolls←+´¨'O'=col ⊔˜((¬×+`)⊸-)idx
  cubes←¯1∾/idx
  ".#O"⊏˜idx+(≠col)↑2×/⁼∾1+cubes +⟜↕¨ (≠cubes)↑rolls
}

a←(⊐⊑˜(⊑·/·¬∊)) c←(Rot⍟2)¨in { ((Tilt˘Rot⁼)⍟4)⍟𝕩 (Rot⍟2) 𝕨}↕200
b←+´a↓∊c
•Show {+´⥊(l-↕l←≠𝕩)×'O'=𝕩}c⊑˜{a+b|𝕩-a}1e9
