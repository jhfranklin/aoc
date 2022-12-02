⟨Int⟩←•Import "utils.bqn"
in←Int⚇1((⊢-˜¬×+`)0=≠¨)⊸⊔ •FLines "01.in"
t←∨+´¨in
•Show +´1↑t # Part 1
•Show +´3↑t # Part 2
