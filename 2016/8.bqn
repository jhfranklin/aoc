⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "8.in"
Rect←{𝕩∨𝕨∧´∘>⚇∞‿1↕≢𝕩}
RotCol←{⟨col,dist⟩ 𝕊 grid:(-dist)⊸⌽⌾(col⊸⊏˘) grid}
RotRow←{⟨row,dist⟩ 𝕊 grid:(-dist)⊸⌽⌾(row⊸⊏) grid}
Parse←{
  "rect"≡4↑𝕩?(⌽ToNats 𝕩)⊸Rect;
  "rotate column"≡13↑𝕩?(ToNats 𝕩)⊸RotCol;
  (ToNats 𝕩)⊸RotRow
}
p←Parse¨in
•Show +´∘⥊g←(6‿50⥊0) {𝕎𝕩}´ ⌽p
•Show g⊏" #"
