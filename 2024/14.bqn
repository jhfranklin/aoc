#! /usr/bin/env bqn
⟨ToNums⟩←•Import "../bqn-libs/strings.bqn"
in←>ToNums¨•FLines≠◶"14.in"‿⊑ •args
gs←101‿103

s←100
n←<˘gs⊸|⌾⍉{px‿py‿vx‿vy: px‿py+100×vx‿vy}˘ in
qs←(⥊↑⟜(↕gs))¨ ⟨1‿1,¯1‿¯1,1‿¯1,¯1‿1⟩×˘<(gs-1)÷2

•Show ×´+˝n +´∘((≡)⚇1)⌜ qs # Part 1
