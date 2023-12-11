#! /usr/bin/env bqn
n←≠grid←>•FLines ≠◶"10.in"‿⊑ •args
dirs←⟨⟨n,-n⟩,⟨1,¯1⟩,⟨1,-n⟩,⟨¯1,-n⟩,⟨n,¯1⟩,⟨n,1⟩,⟨⟩,⟨⟩⟩
syms←"|-LJ7F.S"
gv←(↕n⋆2)+dirs⊏˜syms⊐f←⥊grid
st←⊑/'S'=f
gv (∨/∨´¨gv=st)⌾(st⊸⊑)↩
gv (0⊸≤∧<⟜(n⋆2))⊸/¨↩
stype←⊑syms⊏˜dirs⊐<st⊑gv-st # Find type of S tile
grid stype⌾(st⊸⊑⥊)↩         # and replace it
vstd←≍st
{
  next←⍷vstd(¬∘∊/⊣)˜ ∾⊑⟜gv¨𝕩
  vstd ∾⟜next↩
  next
}•_while_(0≠≠) ≍st
•Show 2÷˜≠vstd # Part 1
•Show +´⥊(¬p)∧(2|+`)(grid∊"J7-")∧p←(2⥊n)⥊(n⋆2)↑/⁼vstd # Part 2 (uses even-odd rule)
