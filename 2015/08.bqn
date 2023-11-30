⟨ReplaceAll,Locate⟩←•Import "../bqn-libs/strings.bqn"
c←•FLines "08.in"

StringLength←{
  str←⟨""""‿"\\"‿"\""",""‿"/"‿""""⟩ReplaceAll 𝕩 # Remove non \x escape sequences
  (≠str)-3×+´"\x" Locate str
}

•Show +´(≠-StringLength)¨c # Part 1

Encode←{
  str←⟨""""‿"\","\"""‿"\\"⟩ ReplaceAll 𝕩
  """"∾str∾""""
}

•Show+´(≠∘Encode-≠)¨c # Part 2
