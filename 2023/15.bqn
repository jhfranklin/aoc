#! /usr/bin/env bqn
in←((⊢-˜¬×+`)','⊸=)⊸⊔ ⊑•FLines ≠◶"15.in"‿⊑ •args

Hash←{
  a←𝕩-@
  0(256|17×+)´⌽a
}
+´Hash¨in # Part 1

Step←{
  '-'=⊑⌽𝕩?
  lbl←¯1↓𝕩
  box←Hash lbl
  {i←(<lbl)≢¨⊑𝕩⋄i⊸/¨𝕩}⌾(box⊸⊑) 𝕨
  ;
  lbl‿fls←((⊢-˜¬×+`)'='⊸=)⊸⊔ 𝕩
  fl←•ParseFloat fls
  box←Hash lbl
  {⊑(<lbl)∊⊑𝕩?
  (⊑𝕩)⋈((¬i)×⊑⌽𝕩)+fl×i←(<lbl)≡¨⊑𝕩
  ; ((<lbl)∾˜⊑𝕩)⋈(fl∾˜⊑⌽𝕩)
  }⌾(box⊸⊑) 𝕨
}
•Show +´∾(⊢×1+↕∘≠)¨(1+↕256)×(⊑⌽)¨(256⥊<⋈˜⟨⟩) Step˜´ ⌽in # Part 2
