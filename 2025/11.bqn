#! /usr/bin/env bqn
⟨ToNats,Split⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "11.in"
f←3⊸↑¨in
t←(' '⊸Split 5⊸↓)¨in
flow←f •HashMap t

P1←{
  memo←•HashMap˜⟨⟩
  NumPaths←{𝕊 "out": 1;
    memo.Has 𝕩 ? memo.Get 𝕩 ;
    a←+´𝕊¨ flow.Get 𝕩
    𝕩 memo.Set a
    a
  }
  NumPaths 𝕩
}

•Show P1 "you" # Part 1

P2←{
  memo←•HashMap˜⟨⟩
  NumPaths←{𝕊 "out"‿1‿1: 1;
    𝕊 "out"‿·‿·: 0;
      memo.Has 𝕩 ? memo.Get 𝕩 ;
      𝕊 node‿fseen‿dseen:
      fseen ∨↩node≡"fft"
      dseen ∨↩node≡"dac"
      a←+´𝕊¨  ∾⟜dseen¨ ⋈⟜fseen¨ flow.Get node
      node‿fseen‿dseen memo.Set a
      a
  }
  NumPaths 𝕩‿0‿0
}

•Show P2 "svr" # Part 2
