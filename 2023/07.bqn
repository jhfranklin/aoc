#! /usr/bin/env bqn
lst←•ParseFloat⌾(⊑⌽)˘>((⊢-˜¬×+`)' '=⊢)⊸⊔¨•FLines ≠◶"07.in"‿⊑ •args

Type←{
  1=≠𝕩? 6;    # Five of a kind
  4=⊑𝕩? 5;    # Four of a kind
  3‿2≡𝕩? 4;   # Full house
  3=⊑𝕩? 3;    # Three of a kind
  2‿2‿1≡𝕩? 2; # Two pair
  2=⊑𝕩? 1;    # One pair
  0           # High card
}

Value←{
  hnd←"23456789TJQKA"⊸⊐𝕩 # Convert to ranks
  dst←∨/⁼⊐𝕩              # Distribution of hand
  typ←Type dst
  typ⋈hnd
}

•Show +´×⟜(1+↕∘≠)(⊑∘⌽˘lst)⊏˜⍋Value∘⊑˘lst # Part 1

ValueJoker←{
  hnd←"J23456789TQKA"⊸⊐𝕩    # Convert to ranks
  dst←∨/⁼⊐𝕩                 # Distribution of hand
  numJs←+´hnd=0             # Number of jokers
  dst (¬·»⊸<·∨`numJs⊸=)⊸/↩  # Remove jokers
  dst (⊢↑˜1⌈≠)↩             # Hand cannot be empty
  dst numJs⊸+⌾⊑↩            # Add jokers to highest
  typ←Type dst
  typ⋈hnd
}

•Show +´×⟜(1+↕∘≠)(⊑∘⌽˘lst)⊏˜⍋ValueJoker∘⊑˘lst # Part 2
