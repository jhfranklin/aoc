⟨_Replace_,ESplit⟩←•Import "utils.bqn"
in←•BQN∘("[]"_Replace_"⟨⟩")⚇1 ESplit •FLines "13.in"
•Show +´1+/(<´⍋)¨in # Part 1
•Show ⟨2⟩‿⟨6⟩{×´1+𝕨⊐˜∧𝕨∾⥊>𝕩}in # Part 2
