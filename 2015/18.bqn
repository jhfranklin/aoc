g←>'#'=•FLines "18.in"

Next←{𝕊𝕩:
  l←≠𝕩
  n←𝕩-˜+´∘⥊⎉2 3‿3↕(¯1⌽(l+2)⊸↑)˘(¯1⌽(l+2)⊸↑)𝕩
  ((3=n)∧¬𝕩)∨(2‿3∊˜n)∧𝕩
}

Corners←{
  𝕩∨(↕sz)∊{(<2⥊0)∾(<⌽«𝕩)∾(«𝕩)⋈𝕩}1-˜sz←≢𝕩
}

•Show  +´⥊Next⍟100 g
•Show  +´⥊(Corners Next)⍟100 Corners g