⟨Nat⟩←•Import "utils.bqn"
D←{"U":0‿1;"D":0‿¯1;"R":1‿0;"L":¯1‿0}
dirs←∾´({(Nat 𝕩)⥊<D𝕨}´1⊸↑⋈2⊸↓)¨ •FLines "09.in"
S←{∧´1≥|𝕨-𝕩?𝕩;𝕩+×𝕨-𝕩}
P←{nk 𝕊 d:
  k←<nk⥊<0‿0
  (⊑⌽)˘>k{S`𝕩⊸+⌾⊑𝕨}`d
}
•Show ≠⍷2 P dirs
•Show ≠⍷10 P dirs
