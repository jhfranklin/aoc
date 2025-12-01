#! /usr/bin/env bqn
in←•FLines ≠◶"01.in"‿⊑ •args
d←¯1+2×'R'=⊑¨in
m←(•ParseFloat 1⊸↓)¨in
•Show +´0=100|+`50∾d×m # Part 1
•Show +´0=100|+`50∾∾m⥊¨d # Part 2
