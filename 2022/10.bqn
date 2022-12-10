⟨Split,Int⟩←•Import "utils.bqn"
ins←•FLines "10.in" 
P←{"noop" 𝕊 𝕩: 𝕩∾0; 𝕩∾0∾Int⊑⌽' 'Split 𝕨} 
i←20+40×↕6 
•Show +´i×(i-1)⊏reg←+` 1 P´ ⌽ins # Part 1
•Show 6‿40⥊" #"⊏˜>(40|↕241)∊¨sp←¯1‿0‿1⊸+¨reg # Part 2
