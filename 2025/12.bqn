#! /usr/bin/env bqn
⟨ToNats⟩←•Import "../bqn-libs/strings.bqn"
(+´(×˝·⌊3÷˜0‿1⊸⊏)≥(+˝2⊸↓))⍉>ToNats¨ 30↓•FLines "12.in"
