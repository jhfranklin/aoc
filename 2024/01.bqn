#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←⍉>ToNats¨•FLines ≠◶"01.in"‿⊑ •args
•Show +´|-˝∧˘in # Part 1
•Show (+´⊏×·+´˘=⌜˝) in # Part 2
