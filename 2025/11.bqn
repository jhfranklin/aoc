#! /usr/bin/env bqn
⟨ToNats,Split⟩←•Import "../bqn-libs/strings.bqn"
in←•FLines "11.in"
f←3⊸↑¨in
t←(' '⊸Split 5⊸↓)¨in
flow←f •HashMap t

memo←•HashMap˜⟨⟩
NumPaths←{𝕊 "out": 1;
  memo.Has 𝕩 ? memo.Get 𝕩 ;
  a←+´𝕊¨ flow.Get 𝕩
  𝕩 memo.Set a
  a
}

•Show NumPaths "you"
