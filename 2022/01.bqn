⟨Nat,ESplit⟩←•Import "utils.bqn"
in←Nat⚇1 ESplit •FLines "01.in"
t←∨+´¨in
•Show +´1↑t # Part 1
•Show +´3↑t # Part 2
