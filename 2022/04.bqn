⟨Split,Nat⟩←•Import "utils.bqn"
in←Nat¨∘('-'⊸Split)⚇1 ','⊸Split¨ •FLines "04.in"
To←⊣+(↕1+-˜)
S←∧´∘∊
A←∨´∘∊
•Show +´(S˜∨S)○(To´)´¨in # Part 1
•Show +´(A˜∨A)○(To´)´¨in # Part 2
