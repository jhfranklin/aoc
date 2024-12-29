#! /usr/bin/env bqn
in←•FLines≠◶"15.in"‿⊑ •args

g‿ins←(0≠≠¨in)(¬-˜⊢×·+`»⊸>)⊸⊔ in
g >↩
ins ∾↩

Shift←{
  w←/'#'=𝕩        # location of walls
  b←w⍋l←/'@'=𝕩    # relevant bin
  c←b⊑w           # end wall
  l ⊑↩            # robot
  idx←l {𝕨+↕𝕩-𝕨} c# indices of robot up to wall
  {0=+´'.'=𝕩?𝕩;   # if there's no space, do nothing
  a←1+⊑𝕩⊐"."
  ¯1⊸⌽⌾(a⊸↑) 𝕩
  }⌾(idx⊸⊏) 𝕩
}

Move←{'>' 𝕊 𝕩:
r←⊑/+´˘'@'⍷ 𝕩
Shift⌾(r⊸⊏) 𝕩
;'<' 𝕊 map:
r←⊑/+´˘'@'⍷ 𝕩
Shift⌾(⌽r⊸⊏) 𝕩
;'v' 𝕊 map:
c←⊑/+˝'@'⍷ 𝕩
Shift⌾(c⊸⊏⍉) 𝕩
;'^' 𝕊 map:
c←⊑/+˝'@'⍷ 𝕩
Shift⌾(⌽·c⊸⊏⍉) 𝕩
}

Score←{co←('O'=𝕩) /○⥊ (↕≢𝕩)
+´∾100‿1⊸×¨co
}

•Show Score g Move´ ⌽ins
