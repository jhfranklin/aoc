#! /usr/bin/env bqn
in←•FLines ≠◶"01.in"‿⊑ •args
•Show +´{•ParseFloat(⊑∾(⊑⌽))'0'+≠⟜0⊸/((≤⟜9⊸×-⟜'0')𝕩)}¨ in # Part 1
•Show +´{•ParseFloat(⊑∾(⊑⌽))'0'+≠⟜0⊸/((≤⟜9⊸×-⟜'0')𝕩)++˝(1+↕9)×>⟨"one","two","three","four","five","six","seven","eight","nine"⟩(≢∘⊢↑⍷)¨<𝕩}¨ in # Part 2
