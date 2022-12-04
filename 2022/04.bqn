⟨Split,Int⟩←•Import "utils.bqn"
in←Int¨∘('-'⊸Split)⚇1 ','⊸Split¨ •FLines "04.in"
To←⊣+(↕1+-˜)
S←∧´∘∊
A←∨´∘∊

•Show +´(S˜∨S)○(To´)´¨in
•Show +´(A˜∨A)○(To´)´¨in
