⟨Split,ToNats⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "02.in"
g←{
  rg←","⊸Split¨";"Split⊑⌽":" Split 𝕩
  ⌈´((∨´¨"red"‿"green"‿"blue"⊸(⍷⌜))+˝∘×⎉1‿∞ ⊑∘ToNats¨)¨rg
}¨in
•Show +´1+/∧´∘≤⟜12‿13‿14¨g # Part 1
•Show +´×´¨g # Part 2
