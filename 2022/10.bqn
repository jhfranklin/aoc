⟨Split,Int2⟩←•Import "utils.bqn"
in←•FLines "10.in" 
P←{"noop" 𝕊 𝕩: 𝕩∾0; 𝕩∾0∾Int2⊑⌽' 'Split 𝕨} 
int←20+40×↕6 
•Show +´int×(int-1)⊏reg←+` 1 P´ ⌽in 
•Show 6‿40⥊".#"⊏˜>(40|↕241)∊¨sp←¯1‿0‿1⊸+¨reg
