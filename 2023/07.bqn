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

+´×⟜(1+↕∘≠)(⊑∘⌽˘lst)⊏˜⍋Value∘⊑˘lst # Part 1