⟨ToNats,ReplaceAll⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "01.in"
+´{⊑ToNats(⊑∾(⊑⌽))∊⟜(↕10)⊸/⌾(-⟜'0')𝕩}¨in # Part 1

FirstDigit←{⊑∊⟜(↕10)⊸/⌾(-⟜'0')⟨"one", "two", "three", "four", "five", "six", "seven", "eight", "nine"⟩‿⟨"1", "2", "3", "4", "5", "6", "7", "8", "9"⟩ ReplaceAll 𝕩}
LastDigit←{⊑⌽∊⟜(↕10)⊸/⌾(-⟜'0')𝕩}({⌽ ((⌽¨⟨"one", "two", "three", "four", "five", "six", "seven", "eight", "nine"⟩)‿⟨"1", "2", "3", "4", "5", "6", "7", "8", "9"⟩) ReplaceAll ⌽𝕩})
+´((⊑ToNats) FirstDigit∾LastDigit)¨in # Part 2
