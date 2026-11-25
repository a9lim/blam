import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363266838Proof17

set_option Elab.async false
namespace Blc.H44.H44F4846363266838
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h574 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b11 s14 :=
  (consAll (lamAt d15 c15 (smaller (h518 (SelfintRecursiveTypes.cons s12 ρ) sub12 a0) sub9)) (consAll (lamAt d20 c20 (smaller (h519 (SelfintRecursiveTypes.cons s16 ρ) sub107 a0) sub11)) (consAll (lamAt d25 c25 (smaller (h520 (SelfintRecursiveTypes.cons s21 ρ) sub101 a0) sub12)) (consAll (lamAt d39 c39 (smaller (h524 (SelfintRecursiveTypes.cons s30 ρ) sub23 a0) sub236)) (consAll (lamAt d45 c45 (smaller (h525 (SelfintRecursiveTypes.cons s33 ρ) sub105 a0) sub23)) (consAll (lamAt d59 c59 (smaller (h528 (SelfintRecursiveTypes.cons s42 ρ) sub31 a0) sub30)) (consAll (lamAt d65 c65 (smaller (h529 (SelfintRecursiveTypes.cons s45 ρ) sub32 a0) sub31)) (consAll (lamAt d80 c80 (smaller (h533 (SelfintRecursiveTypes.cons s30 ρ) sub23 a0) sub246)) (consAll (lamAt d82 c82 (smaller (h534 (SelfintRecursiveTypes.cons s51 ρ) sub113 a0) sub23)) (consAll (lamAt d103 c103 (smaller (h543 (SelfintRecursiveTypes.cons s30 ρ) sub23 a0) sub251)) (consAll (lamAt d108 c108 (smaller (h544 (SelfintRecursiveTypes.cons s30 ρ) sub23 a0) sub253)) (consAll (lamAt d109 c109 (smaller (h546 (SelfintRecursiveTypes.cons s60 ρ) sub117 a0) sub23)) (consAll (lamAt d111 c111 (smaller (h549 (SelfintRecursiveTypes.cons s55 ρ) sub116 a0) sub23)) (consAll (lamAt d188 c188 (smaller (h563 (SelfintRecursiveTypes.cons s93 ρ) sub79 a0) sub77)) (consAll (lamAt d209 c209 (smaller (h567 (SelfintRecursiveTypes.cons s100 ρ) sub82 a0) sub80)) (consAll (lamAt d213 c213 (smaller (h568 (SelfintRecursiveTypes.cons s101 ρ) sub83 a0) sub81)) (consAll (lamAt d220 c220 (smaller (h569 (SelfintRecursiveTypes.cons s104 ρ) sub84 a0) sub79)) (consAll (lamAt d228 c228 (smaller (h570 (SelfintRecursiveTypes.cons s105 ρ) sub85 a0) sub82)) (consAll (lamAt d231 c231 (smaller (h571 (SelfintRecursiveTypes.cons s106 ρ) sub87 a0) sub83)) Positive.none)))))))))))))))))))
theorem h575 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b11 s6 :=
  (consAll (lamAt d2 c2 (smaller (h560 (SelfintRecursiveTypes.cons s1 ρ) sub351 a0) sub67)) (consAll (lamAt d3 c3 (smaller (h556 (SelfintRecursiveTypes.cons s2 ρ) sub352 a0) sub63)) (consAll (lamAt d7 c7 (smaller (h530 (SelfintRecursiveTypes.cons s6 ρ) sub270 a0) sub146)) (consAll (lamAt d12 c12 (smaller (h530 (SelfintRecursiveTypes.cons s6 ρ) sub270 a0) sub147)) (consAll (lamAt d22 c22 (smaller (h521 (SelfintRecursiveTypes.cons s18 ρ) sub110 a0) sub228)) (consAll (lamAt d31 c31 (smaller (h538 (SelfintRecursiveTypes.cons s26 ρ) sub273 a0) sub150)) (consAll (lamAt d36 c36 (smaller (h538 (SelfintRecursiveTypes.cons s26 ρ) sub273 a0) sub151)) (consAll (lamAt d72 c72 (smaller (h537 (SelfintRecursiveTypes.cons s47 ρ) sub279 a0) sub162)) (consAll (lamAt d77 c77 (smaller (h537 (SelfintRecursiveTypes.cons s47 ρ) sub279 a0) sub163)) (consAll (lamAt d83 c83 (smaller (h535 (SelfintRecursiveTypes.cons s52 ρ) sub118 a0) sub353)) (consAll (lamAt d87 c87 (smaller (h552 (SelfintRecursiveTypes.cons s51 ρ) sub297 a0) sub51)) (consAll (lamAt d97 c97 (smaller (h545 (SelfintRecursiveTypes.cons s51 ρ) sub283 a0) sub168)) (consAll (lamAt d98 c98 (smaller (h552 (SelfintRecursiveTypes.cons s55 ρ) sub298 a0) sub51)) (consAll (lamAt d104 c104 (smaller (h548 (SelfintRecursiveTypes.cons s55 ρ) sub116 a0) sub170)) (consAll (lamAt d113 c113 (smaller (h535 (SelfintRecursiveTypes.cons s52 ρ) sub118 a0) sub51)) (consAll (lamAt d124 c124 (smaller (h552 (SelfintRecursiveTypes.cons s60 ρ) sub296 a0) sub51)) (consAll (lamAt d127 c127 (smaller (h535 (SelfintRecursiveTypes.cons s21 ρ) sub280 a0) sub51)) (consAll (lamAt d130 c130 (smaller (h551 (SelfintRecursiveTypes.cons s18 ρ) sub294 a0) sub51)) (consAll (lamAt d131 c131 (smaller (h551 (SelfintRecursiveTypes.cons s68 ρ) sub122 a0) sub51)) (consAll (lamAt d133 c133 (smaller (h552 (SelfintRecursiveTypes.cons s33 ρ) sub295 a0) sub51)) (consAll (lamAt d134 c134 (smaller (h552 (SelfintRecursiveTypes.cons s69 ρ) sub123 a0) sub51)) (consAll (lamAt d138 c138 (smaller (h545 (SelfintRecursiveTypes.cons s60 ρ) sub117 a0) sub168)) (consAll (lamAt d139 c139 (smaller (h551 (SelfintRecursiveTypes.cons s68 ρ) sub122 a0) sub353)) (consAll (lamAt d143 c143 (smaller (h552 (SelfintRecursiveTypes.cons s69 ρ) sub123 a0) sub353)) (consAll (lamAt d144 c144 (smaller (h554 (SelfintRecursiveTypes.cons s70 ρ) sub86 a0) sub354)) (consAll (lamAt d148 c148 (smaller (h554 (SelfintRecursiveTypes.cons s70 ρ) sub86 a0) sub355)) (consAll (lamAt d150 c150 (smaller (h557 (SelfintRecursiveTypes.cons s73 ρ) sub120 a0) sub51)) (consAll (lamAt d151 c151 (smaller (h557 (SelfintRecursiveTypes.cons s73 ρ) sub120 a0) sub353)) (consAll (lamAt d157 c157 (smaller (h545 (SelfintRecursiveTypes.cons s33 ρ) sub301 a0) sub168)) (consAll (lamAt d158 c158 (smaller (h545 (SelfintRecursiveTypes.cons s55 ρ) sub356 a0) sub168)) (consAll (lamAt d183 c183 (smaller (h565 (SelfintRecursiveTypes.cons s90 ρ) sub125 a0) sub51)) (consAll (lamAt d185 c185 (smaller (h566 (SelfintRecursiveTypes.cons s91 ρ) sub126 a0) sub51)) (consAll (lamAt d193 c193 (smaller (h565 (SelfintRecursiveTypes.cons s90 ρ) sub125 a0) sub353)) (consAll (lamAt d198 c198 (smaller (h566 (SelfintRecursiveTypes.cons s91 ρ) sub126 a0) sub353)) (consAll (lamAt d203 c203 (smaller (h554 (SelfintRecursiveTypes.cons s96 ρ) sub357 a0) sub358)) Positive.none)))))))))))))))))))))))))))))))))))
theorem h576 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b11 s28 :=
  (consAll (lamAt d34 c34 (smaller (h523 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub234)) Positive.none)
theorem h577 (ρ : Env) (a0 : Fits s38 (ρ 0)) : All tab ρ b11 s39 :=
  (consAll (lamAt d54 c54 (smaller (h527 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub240)) Positive.none)
theorem h578 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b11 s49 :=
  (consAll (lamAt d75 c75 (smaller (h532 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub244)) Positive.none)
theorem h579 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b11 s54 :=
  (consAll (lamAt d94 c94 (smaller (h541 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub248)) Positive.none)
theorem h580 (ρ : Env) (a0 : Fits s56 (ρ 0)) : All tab ρ b11 s58 :=
  (consAll (lamAt d100 c100 (smaller (h542 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub250)) Positive.none)
theorem h581 (ρ : Env) (a0 : Fits s72 (ρ 0)) : All tab ρ b11 s74 :=
  (consAll (lamAt d165 c165 (smaller (h559 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub88)) Positive.none)
theorem h582 (ρ : Env) (a0 : Fits s77 (ρ 0)) : All tab ρ b11 s84 :=
  (consAll (lamAt d186 c186 (smaller (h562 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub264)) Positive.none)
theorem h583 (ρ : Env) (a0 : Fits s85 (ρ 0)) : All tab ρ b11 s92 :=
  (consAll (lamAt d201 c201 (smaller (h564 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub94)) Positive.none)
theorem h584 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b12 s112 :=
  appAll len6 d6 c6 sub97 ((h1 ρ a0) 6 mem243) (smaller (h572 ρ a0) sub359)
theorem h585 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s112 :=
  appAll len7 d7 c7 sub97 ((h2 ρ a0) 7 mem62) (smaller (h575 ρ a0) sub102)
theorem h586 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b12 s112 :=
  appAll len9 d9 c9 sub97 ((h3 ρ a0) 9 mem244) (smaller (h573 ρ a0) sub4)
theorem h587 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b12 s14 :=
  appAll len17 d17 c17 sub8 ((h7 ρ a0) 17 mem245) (smaller (h574 ρ a0) sub8)
theorem h588 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b12 s114 :=
  appAll len33 d33 c33 sub228 ((h19 ρ a0) 33 mem246) (smaller (h576 ρ a0) sub20)
theorem h589 (ρ : Env) (a0 : Fits s38 (ρ 0)) : All tab ρ b12 s122 :=
  appAll len52 d52 c52 sub224 ((h27 ρ a0) 52 mem247) (smaller (h577 ρ a0) sub28)
theorem h590 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b12 s128 :=
  appAll len74 d74 c74 sub39 ((h40 ρ a0) 74 mem248) (smaller (h578 ρ a0) sub41)
theorem h591 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b12 s135 :=
  appAll len89 d89 c89 sub51 ((h45 ρ a0) 89 mem249) (smaller (h579 ρ a0) sub46)
theorem h592 (ρ : Env) (a0 : Fits s56 (ρ 0)) : All tab ρ b12 s135 :=
  appAll len96 d96 c96 sub51 ((h47 ρ a0) 96 mem250) (smaller (h580 ρ a0) sub49)
theorem h593 (ρ : Env) (a0 : Fits s72 (ρ 0)) : All tab ρ b12 s147 :=
  appAll len160 d160 c160 sub300 ((h61 ρ a0) 160 mem251) (smaller (h581 ρ a0) sub62)
theorem h594 (ρ : Env) (a0 : Fits s77 (ρ 0)) : All tab ρ b12 s89 :=
  appAll len174 d174 c174 sub63 ((h65 ρ a0) 174 mem252) (smaller (h582 ρ a0) sub69)
theorem h595 (ρ : Env) (a0 : Fits s85 (ρ 0)) : All tab ρ b12 s86 :=
  appAll len187 d187 c187 sub67 ((h70 ρ a0) 187 mem253) (smaller (h583 ρ a0) sub73)
theorem h596 (ρ : Env)  : All tab ρ b13 s3 :=
  (consAll (lamAt d5 c5 (smaller (h584 (SelfintRecursiveTypes.cons s4 ρ) sub360) sub97)) (consAll (lamAt d6 c6 (smaller (h585 (SelfintRecursiveTypes.cons s5 ρ) sub359) sub97)) (consAll (lamAt d8 c8 (smaller (h586 (SelfintRecursiveTypes.cons s7 ρ) sub342) sub97)) (consAll (lamAt d16 c16 (smaller (h587 (SelfintRecursiveTypes.cons s13 ρ) sub361) sub8)) (consAll (lamAt d32 c32 (smaller (h588 (SelfintRecursiveTypes.cons s27 ρ) sub343) sub228)) (consAll (lamAt d51 c51 (smaller (h589 (SelfintRecursiveTypes.cons s38 ρ) sub344) sub224)) (consAll (lamAt d73 c73 (smaller (h590 (SelfintRecursiveTypes.cons s48 ρ) sub345) sub39)) (consAll (lamAt d88 c88 (smaller (h591 (SelfintRecursiveTypes.cons s53 ρ) sub346) sub51)) (consAll (lamAt d92 c92 (smaller (h592 (SelfintRecursiveTypes.cons s56 ρ) sub347) sub353)) (consAll (lamAt d93 c93 (smaller (h592 (SelfintRecursiveTypes.cons s56 ρ) sub347) sub362)) (consAll (lamAt d112 c112 (smaller (h592 (SelfintRecursiveTypes.cons s56 ρ) sub347) sub51)) (consAll (lamAt d149 c149 (smaller (h593 (SelfintRecursiveTypes.cons s72 ρ) sub348) sub300)) (consAll (lamAt d166 c166 (smaller (h594 (SelfintRecursiveTypes.cons s77 ρ) sub349) sub63)) (consAll (lamAt d175 c175 (smaller (h595 (SelfintRecursiveTypes.cons s85 ρ) sub350) sub67)) Positive.none))))))))))))))
theorem h597 (ρ : Env)  : All tab ρ b14 s112 :=
  appAll len4 d4 c4 sub97 ((h97 ρ) 4 mem254) (smaller (h596 ρ) sub0)
theorem h598 (ρ : Env)  : All tab ρ b15 s2 :=
  (consAll (lamAt d2 c2 (smaller (h158 (SelfintRecursiveTypes.cons s1 ρ)) sub363)) (consAll (lamAt d159 c159 (smaller (h158 (SelfintRecursiveTypes.cons s0 ρ)) sub364)) (consAll (lamAt d202 c202 (smaller (h158 (SelfintRecursiveTypes.cons s0 ρ)) sub365)) Positive.none)))
theorem h599 (ρ : Env)  : All tab ρ b16 s89 :=
  appAll len3 d3 c3 sub63 ((h597 ρ) 3 mem255) (smaller (h598 ρ) sub366)
theorem h600 (ρ : Env) (a0 : Fits s86 (ρ 0)) : All tab ρ b17 s150 :=
  (consAll (lamAt d168 c168 (smaller (h130 (SelfintRecursiveTypes.cons s0 ρ) a0) sub67)) Positive.none)
theorem h601 (ρ : Env) (a0 : Fits s111 (ρ 0)) : All tab ρ b17 s156 :=
  (consAll (lamAt d244 c244 (smaller (h145 (SelfintRecursiveTypes.cons s0 ρ) a0) sub130)) Positive.none)
theorem h602 (ρ : Env)  : All tab ρ b18 s197 :=
  (consAll (lamAt d177 c177 (smaller (h600 (SelfintRecursiveTypes.cons s86 ρ) sub67) sub262)) (consAll (lamAt d245 c245 (smaller (h601 (SelfintRecursiveTypes.cons s111 ρ) sub130) sub268)) Positive.none))
theorem h603 (ρ : Env) (a0 : Fits s80 (ρ 0)) : All tab ρ b19 s87 :=
  appAll len178 d178 c178 sub74 ((h68 ρ a0) 178 mem256) (smaller (h602 ρ) sub367)
theorem h604 (ρ : Env) (a0 : Fits s99 (ρ 0)) : All tab ρ b19 s155 :=
  appAll len243 d243 c243 sub369 ((h92 ρ a0) 243 mem257) (smaller (h602 ρ) sub368)
theorem h605 (ρ : Env) (a0 : Fits s95 (ρ 0)) : All tab ρ b19 s157 :=
  appAll len247 d247 c247 sub370 ((h95 ρ a0) 247 mem258) (smaller (h602 ρ) sub368)
theorem h606 (ρ : Env) (a2 : Fits s0 (ρ 2)) : All tab ρ b25 s86 :=
  (consAll (lamAt d1 c1 Positive.none) Positive.none)
theorem h607 (ρ : Env) (a0 : Fits s95 (ρ 0)) (a2 : Fits s0 (ρ 2)) : All tab ρ b26 s86 :=
  appAll len246 d246 c246 sub67 ((h605 ρ a0) 246 mem259) (smaller (h606 ρ a2) sub67)
theorem h608 (ρ : Env) (a1 : Fits s0 (ρ 1)) : All tab ρ b27 s198 :=
  (consAll (lamAt d1 c1 Positive.none) (consAll (lamAt d200 c200 (smaller (h607 (SelfintRecursiveTypes.cons s95 ρ) sub95 a1) sub67)) Positive.none))
theorem h609 (ρ : Env) (a0 : Fits s80 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b28 s150 :=
  appAll len177 d177 c177 sub262 ((h603 ρ a0) 177 mem260) (smaller (h608 ρ a1) sub371)
end Blc.H44.H44F4846363266838
