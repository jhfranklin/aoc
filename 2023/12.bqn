#! /usr/bin/env bqn
⟨Split,ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines ≠◶"12.sample"‿⊑ •args
Parse←{
  r‿g←' 'Split 𝕩
  g ToNats↩
  r⋈g
}
recs←Parse ¨in
N←{𝕊 r‿g:
  poss←0{𝕗 _𝕣 𝕩:
  (𝕗=≠𝕩)?𝕩;
  (𝕗⊑𝕩)='?'? ((𝕗+1) _𝕣 '#'⌾(𝕗⊸⊑)𝕩)∾(𝕗+1) _𝕣 '.'⌾(𝕗⊸⊑)𝕩 ; (𝕗+1)_𝕣 𝕩
  }r
  +´g{𝕨≡-˜˝˘∘‿2⥊/0(∾≠∾˜)𝕩}⎉∞‿¯1 '#'=∘‿(≠r)⥊poss
}

•Show +´N¨recs # Part 1
