#! /usr/bin/env bqn
in←"1321131112"
Step←{
  c←(≠𝕩)(«-⊢)/1»≠⟜«𝕩
  idx←0∾¯1↓+`c
  ⥊⍉('0'+c)≍idx⊏𝕩
}
•Show ≠Step⍟40 in # Part 1
•Show ≠Step⍟50 in # Part 2
