#! /usr/bin/env bqn
in←•FLines ≠◶"03.in"‿⊑ •args

LJ←{𝕊 s:
  t←d⊑˜f←⊑⍒¯1↓d←s-'0'
  u←⌈´d↓˜f+1
  u+t×10
}

+´LJ¨in # Part 1
