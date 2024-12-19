#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
⟨Solve⟩←•Import "../bqn-libs/matrix.bqn"
in←ToNats¨∘‿3⥊(0≠≠¨)⊸/•FLines≠◶"13.in"‿⊑ •args
tol←1e¯10
R←⌊0.5⊸+
•Show +´⥊3‿1× ⍉R¨ (∧´˘(tol>(|-⟜R)))⊸/ ((⍉·≍´2⊸↑) Solve ⊑∘⌽)˘in # Part 1
