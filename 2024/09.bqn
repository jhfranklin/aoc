#! /usr/bin/env bqn
in←-⟜'0'¨ •FChars≠◶"09.in"‿⊑ •args

dblk‿gblk←<˘⍉↑‿2⥊in # gets data blocks and gaps
n←+´dblk            # how much data is needed
os←⌽(¬2⊸|)⊸/ n↓/in  # data outside the needed area
gs←2|f←n↑/in        # get available gaps
cd←2÷˜os⌾(gs⊸/) f   # compacted data 
CheckSum←+´↕∘≠⊸× 
•Show CheckSum cd # Part 1

ids←2⊸|◶⟨÷⟜2,¯1⟩¨ idx←↕≠in
cd2←in‿ids {i 𝕊 𝕩:
    0≤i⊑⊑⌽𝕩?
    𝕩 {j 𝕊 𝕩:
    is‿id←i⊑¨ 𝕩 
    js‿jd←j⊑¨ 𝕩
    (id≥0)∧(is≤js)∧jd<0?
    is‿id {j⊸↑∾⊣∾j⊸↓}¨ ⟨js-is,¯1⟩⌾(j⊸⊑¨) ⟨is,¯1⟩⌾(i⊸⊑¨) 𝕩
    ; 𝕩
  }´ ⌽↕i
  ;𝕩
}´ idx
•Show CheckSum /´0⌈cd2 # Part 2
