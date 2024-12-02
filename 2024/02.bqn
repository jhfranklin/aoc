#! /usr/bin/env bqn
⟨Split⟩←•Import "../bqn-libs/strings.bqn"
in←(•ParseFloat¨' '⊸Split)¨•FLines ≠◶"02.in"‿⊑ •args
Test←{
d←1↓-⟜»𝕩
t1←(∧´0<d)∨(∧´0>d)
t2←(∧´3⊸≥∧1⊸≤)|d
t1∧t2
}
•Show +´Test¨ in # Part 1
Dampen←{
m←<˘≠⌜˜↕≠𝕩
m/¨<𝕩
}
•Show +´(∨´·Test¨Dampen)¨ in # Part 2
