#! /usr/bin/env bqn
in←-⟜'0'¨ •FChars≠◶"09.in"‿⊑ •args

dblk‿gblk←<˘⍉↑‿2⥊in # gets data blocks and gaps
n←+´dblk            # how much data is needed
os←⌽(¬2⊸|)⊸/ n↓/in  # data outside the needed area
gs←2|f←n↑/in        # get available gaps
cd←2÷˜os⌾(gs⊸/) f   # compacted data 
CheckSum←+´↕∘≠⊸× 
•Show CheckSum cd # Part 1
