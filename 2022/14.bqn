⟨Nat,Nats,_fix,_while_⟩←•Import "utils.bqn"
in←•FLines "14.in"
To←{⥊⋈⌜´(𝕨⌊𝕩)+↕¨1+|𝕨-𝕩} 
rock← ⌽¨⍷∾´{∾´To´¨<˘⊏⎉¯2 2↕⋈˘∘‿2⥊Nats 𝕩}¨ in
low←⌈´⊑¨rock
full←rock
sandstart←0‿500
Drop←{𝕊 full:
  new←{𝕊 sand:
    below←⟨1‿0,1‿¯1,1‿1⟩+<sand
    pos←⊑1⊐˜¬below∊full
    new←{pos=≠below?𝕩;pos⊑below} sand
    (low<⊑new)◶⟨⊢,sand⟩ new
  } _fix sandstart
  full∾˜<new
}
•Show 1-˜(Drop _while_ {low≠⊑⊑𝕩})⊸(-○≠) rock
floor←2+low
Drop2←{𝕊 full:
    •Show ≠full
		new←{𝕊 sand:
    below←⟨1‿0,1‿¯1,1‿1⟩+<sand
    pos←⊑1⊐˜¬((floor=⊑¨below)∨below∊full)
    new←{pos=≠below?𝕩;pos⊑below} sand
  } _fix sandstart
  full∾˜<new
}
•Show (Drop2 _while_ {𝕩(⊑¬∘∊)˜<0‿500})⊸(-○≠) rock # Very slow
