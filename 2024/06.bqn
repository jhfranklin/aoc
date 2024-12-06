#! /usr/bin/env bqn
in←>•FLines ≠◶"06.in"‿⊑ •args

MDI←/○⥊⟜(↕≢)
Rot←⌽¯1‿1⊸×

obs←MDI '#'=in
g←⊑MDI '^'=in
d←¯1‿0
path←<g≍○<d
sz←≢in
OoB←∨´≥⟜sz∨≤⟜¯1
_Hit←{(⊑·∊⟜𝕗<)𝕩}

_Next←{(<(𝕗 _Hit+´)◶⟨+´⋈⊑∘⌽,⊑⋈Rot∘⊑∘⌽⟩∘⊑)⊸∾𝕩}
Loop←(¬·∧´∊)
•Show ≠⍷newobs←⊑¨ 1↓obs _Next •_while_ (¬OoB∘⊑∘⊑) ≍path # Part 1

newobs ⍷↩
•Show +´Loop¨((∾⟜obs<)⚇1 newobs) {𝕨 _Next •_while_ (¬Loop∨OoB∘⊑∘⊑)𝕩}⚇¯1‿∞ ≍path # Part 2
