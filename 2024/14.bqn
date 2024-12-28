#! /usr/bin/env bqn
⟨ToNums⟩←•Import "../bqn-libs/strings.bqn"
in←>ToNums¨•FLines≠◶"14.in"‿⊑ •args
gs←101‿103

Frame←{𝕊 t: <˘gs⊸|⌾⍉{px‿py‿vx‿vy: px‿py+t×vx‿vy}˘ in}
b←2÷˜gs-1
SF←{×´/⁼⊐ (¬∨´¨ b =⚇1 𝕩)/b <⚇1 𝕩}

•Show SF∘Frame 100 # Part 1
•Show ⊑⍋ SF∘Frame¨ ↕10000 # Part 2 (christmas tree occurs at min safety factor)
