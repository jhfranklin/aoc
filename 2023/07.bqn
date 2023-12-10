#! /usr/bin/env bqn
lst←•ParseFloat⌾(⊑⌽)˘>((⊢-˜¬×+`)' '=⊢)⊸⊔¨•FLines "07.in"

Value←{
  hnd←"23456789TJQKA"⊸⊐𝕩 # Convert to ranks
  dst←∨/⁼⊐𝕩              # Distribution of hand
  typ←{
    1=≠𝕩? 6 ;
    4=⊑𝕩? 5;
    3‿2≡𝕩? 4;
    3=⊑𝕩? 3;
    2‿2‿1≡𝕩? 2;
    2=⊑𝕩? 1;
    0
  } dst
  typ⋈hnd
}

•Show +´×⟜(1+↕∘≠)(⊑∘⌽˘lst)⊏˜⍋Value∘⊑˘lst # Part 1

Value2←{
  hnd←"J23456789TQKA"⊸⊐ •Show 𝕩   # Convert to ranks
  dst←∨/⁼⊐𝕩                # Distribution of hand
  numJs←+´hnd=0            # Number of jokers
  dst (¬·»⊸<·∨`numJs⊸=)⊸/↩ # Remove jokers
  dst ((1⌈≠)↑⊢)↩           # Hand cannot be empty
  dst numJs⊸+⌾⊑↩           # Add jokers to highest
  typ←{
    1=≠𝕩? 6 ;
    4=⊑𝕩? 5;
    3‿2≡𝕩? 4;
    3=⊑𝕩? 3;
    2‿2‿1≡𝕩? 2;
    2=⊑𝕩? 1;
    0
  } dst
  typ⋈hnd
}

•Show +´×⟜(1+↕∘≠)(⊑∘⌽˘lst)⊏˜⍋Value2∘⊑˘lst # Part 2
