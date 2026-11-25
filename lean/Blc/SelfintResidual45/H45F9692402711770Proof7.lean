import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof6

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h252 (ρ : Env) (a1 : Fits s25 (ρ 1)) : All tab ρ b126 s25 :=
  varAll (fun i hi => a1 i (sub61 i hi))
theorem h253 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b127 s17 :=
  appAll len35 d35 c35 sub17 ((h245 ρ a0) 35 mem80) (smaller (h249 ρ a1) sub114)
theorem h254 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s34 (ρ 1)) : All tab ρ b127 s17 :=
  appAll len49 d49 c49 sub17 ((h246 ρ a0) 49 mem81) (smaller (h250 ρ a1) sub58)
theorem h255 (ρ : Env) (a0 : Fits s39 (ρ 0)) (a1 : Fits s30 (ρ 1)) : All tab ρ b127 s17 :=
  appAll len54 d54 c54 sub17 ((h247 ρ a0) 54 mem82) (smaller (h251 ρ a1) sub60)
theorem h256 (ρ : Env) (a0 : Fits s42 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b127 s17 :=
  appAll len60 d60 c60 sub17 ((h248 ρ a0) 60 mem83) (smaller (h252 ρ a1) sub61)
theorem h257 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b128 s51 :=
  appAll len19 d19 c19 sub18 ((h244 ρ) 19 mem84) (smaller (h253 ρ a0 a1) sub17)
theorem h258 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s34 (ρ 1)) : All tab ρ b128 s9 :=
  appAll len48 d48 c48 sub13 ((h244 ρ) 48 mem85) (smaller (h254 ρ a0 a1) sub17)
theorem h259 (ρ : Env) (a0 : Fits s39 (ρ 0)) (a1 : Fits s30 (ρ 1)) : All tab ρ b128 s9 :=
  appAll len48 d48 c48 sub13 ((h244 ρ) 48 mem85) (smaller (h255 ρ a0 a1) sub17)
theorem h260 (ρ : Env) (a0 : Fits s42 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b128 s9 :=
  appAll len48 d48 c48 sub13 ((h244 ρ) 48 mem85) (smaller (h256 ρ a0 a1) sub17)
theorem h261 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b129 s15 :=
  (consAll (lamAt d18 c18 (smaller (h257 (SelfintRecursiveTypes.cons s16 ρ) sub34 a0) sub22)) (consAll (lamAt d46 c46 (smaller (h257 (SelfintRecursiveTypes.cons s16 ρ) sub34 a0) sub18)) Positive.none))
theorem h262 (ρ : Env) (a0 : Fits s34 (ρ 0)) : All tab ρ b129 s38 :=
  (consAll (lamAt d47 c47 (smaller (h258 (SelfintRecursiveTypes.cons s35 ρ) sub14 a0) sub13)) Positive.none)
theorem h263 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b129 s41 :=
  (consAll (lamAt d53 c53 (smaller (h259 (SelfintRecursiveTypes.cons s39 ρ) sub15 a0) sub13)) Positive.none)
theorem h264 (ρ : Env) (a0 : Fits s25 (ρ 0)) : All tab ρ b129 s44 :=
  (consAll (lamAt d59 c59 (smaller (h260 (SelfintRecursiveTypes.cons s42 ρ) sub16 a0) sub13)) Positive.none)
theorem h265 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b130 s12 :=
  appAll len17 d17 c17 sub39 ((h105 ρ a1) 17 mem86) (smaller (h261 ρ a0) sub3)
theorem h266 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b130 s12 :=
  botAll ((h106 ρ a1) 0 mem15)
theorem h267 (ρ : Env) (a0 : Fits s34 (ρ 0)) (a1 : Fits s37 (ρ 1)) : All tab ρ b130 s9 :=
  appAll len45 d45 c45 sub13 ((h107 ρ a1) 45 mem87) (smaller (h262 ρ a0) sub9)
theorem h268 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s9 :=
  appAll len52 d52 c52 sub13 ((h108 ρ a1) 52 mem88) (smaller (h263 ρ a0) sub10)
theorem h269 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s43 (ρ 1)) : All tab ρ b130 s29 :=
  appAll len57 d57 c57 sub62 ((h109 ρ a1) 57 mem89) (smaller (h264 ρ a0) sub11)
theorem h270 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s43 (ρ 1)) : All tab ρ b130 s54 :=
  appAll len67 d67 c67 sub19 ((h109 ρ a1) 67 mem90) (smaller (h264 ρ a0) sub11)
theorem h271 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s42 :=
  appAll len69 d69 c69 sub16 ((h108 ρ a1) 69 mem91) (smaller (h263 ρ a0) sub10)
theorem h272 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s43 (ρ 1)) : All tab ρ b130 s25 :=
  appAll len73 d73 c73 sub61 ((h109 ρ a1) 73 mem92) (smaller (h264 ρ a0) sub11)
theorem h273 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s17 :=
  appAll len74 d74 c74 sub17 ((h108 ρ a1) 74 mem93) (smaller (h263 ρ a0) sub10)
theorem h274 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s45 :=
  appAll len75 d75 c75 sub63 ((h108 ρ a1) 75 mem94) (smaller (h263 ρ a0) sub10)
theorem h275 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s43 (ρ 1)) : All tab ρ b130 s42 :=
  appAll len84 d84 c84 sub16 ((h109 ρ a1) 84 mem95) (smaller (h264 ρ a0) sub11)
theorem h276 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s25 :=
  appAll len90 d90 c90 sub61 ((h108 ρ a1) 90 mem96) (smaller (h263 ρ a0) sub10)
theorem h277 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s54 :=
  appAll len91 d91 c91 sub19 ((h108 ρ a1) 91 mem97) (smaller (h263 ρ a0) sub10)
theorem h278 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s43 (ρ 1)) : All tab ρ b130 s45 :=
  appAll len96 d96 c96 sub63 ((h109 ρ a1) 96 mem98) (smaller (h264 ρ a0) sub11)
theorem h279 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s55 :=
  appAll len97 d97 c97 sub87 ((h108 ρ a1) 97 mem99) (smaller (h263 ρ a0) sub10)
theorem h280 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b130 s29 :=
  appAll len98 d98 c98 sub62 ((h108 ρ a1) 98 mem100) (smaller (h263 ρ a0) sub10)
theorem h281 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b131 s11 :=
  (consAll (lamAt d15 c15 (smaller (h265 (SelfintRecursiveTypes.cons s14 ρ) sub114 a0) sub39)) Positive.none)
theorem h282 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b131 s11 :=
  (consAll (lamAt d15 c15 (smaller (h266 (SelfintRecursiveTypes.cons s14 ρ) sub115 a0) sub39)) Positive.none)
theorem h283 (ρ : Env) (a0 : Fits s37 (ρ 0)) : All tab ρ b131 s53 :=
  (consAll (lamAt d41 c41 (smaller (h267 (SelfintRecursiveTypes.cons s34 ρ) sub58 a0) sub13)) Positive.none)
theorem h284 (ρ : Env) (a0 : Fits s40 (ρ 0)) : All tab ρ b131 s54 :=
  (consAll (lamAt d33 c33 (smaller (h268 (SelfintRecursiveTypes.cons s30 ρ) sub60 a0) sub13)) (consAll (lamAt d34 c34 (smaller (h280 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub62)) (consAll (lamAt d60 c60 (smaller (h273 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub17)) (consAll (lamAt d61 c61 (smaller (h271 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub16)) (consAll (lamAt d63 c63 (smaller (h271 (SelfintRecursiveTypes.cons s30 ρ) sub60 a0) sub16)) (consAll (lamAt d64 c64 (smaller (h279 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub87)) (consAll (lamAt d65 c65 (smaller (h274 (SelfintRecursiveTypes.cons s46 ρ) sub117 a0) sub63)) (consAll (lamAt d68 c68 (smaller (h277 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub33)) (consAll (lamAt d71 c71 (smaller (h276 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub61)) (consAll (lamAt d76 c76 (smaller (h277 (SelfintRecursiveTypes.cons s47 ρ) sub118 a0) sub67)) (consAll (lamAt d78 c78 (smaller (h277 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub19)) (consAll (lamAt d79 c79 (smaller (h277 (SelfintRecursiveTypes.cons s25 ρ) sub116 a0) sub68)) (consAll (lamAt d80 c80 (smaller (h277 (SelfintRecursiveTypes.cons s47 ρ) sub118 a0) sub32)) (consAll (lamAt d81 c81 (smaller (h277 (SelfintRecursiveTypes.cons s47 ρ) sub118 a0) sub33)) (consAll (lamAt d82 c82 (smaller (h277 (SelfintRecursiveTypes.cons s47 ρ) sub118 a0) sub31)) (consAll (lamAt d85 c85 (smaller (h277 (SelfintRecursiveTypes.cons s47 ρ) sub118 a0) sub68)) Positive.none))))))))))))))))
theorem h285 (ρ : Env) (a0 : Fits s43 (ρ 0)) : All tab ρ b131 s17 :=
  (consAll (lamAt d34 c34 (smaller (h269 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0) sub62)) (consAll (lamAt d61 c61 (smaller (h270 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0) sub32)) (consAll (lamAt d64 c64 (smaller (h270 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0) sub64)) (consAll (lamAt d65 c65 (smaller (h278 (SelfintRecursiveTypes.cons s46 ρ) sub65 a0) sub63)) (consAll (lamAt d71 c71 (smaller (h272 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0) sub61)) (consAll (lamAt d76 c76 (smaller (h270 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0) sub67)) (consAll (lamAt d78 c78 (smaller (h270 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0) sub19)) (consAll (lamAt d80 c80 (smaller (h270 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0) sub32)) (consAll (lamAt d81 c81 (smaller (h270 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0) sub33)) (consAll (lamAt d82 c82 (smaller (h270 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0) sub31)) (consAll (lamAt d85 c85 (smaller (h270 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0) sub68)) Positive.none)))))))))))
theorem h286 (ρ : Env)  : All tab ρ b132 s83 :=
  (consAll (lamAt d16 c16 (smaller (h281 (SelfintRecursiveTypes.cons s6 ρ) sub41) sub44)) (consAll (lamAt d39 c39 (smaller (h282 (SelfintRecursiveTypes.cons s9 ρ) sub13) sub44)) (consAll (lamAt d44 c44 (smaller (h283 (SelfintRecursiveTypes.cons s37 ρ) sub35) sub36)) (consAll (lamAt d51 c51 (smaller (h284 (SelfintRecursiveTypes.cons s40 ρ) sub37) sub19)) (consAll (lamAt d56 c56 (smaller (h285 (SelfintRecursiveTypes.cons s43 ρ) sub38) sub17)) Positive.none)))))
theorem h287 (ρ : Env) (a0 : Fits s8 (ρ 0)) : All tab ρ b133 s9 :=
  appAll len11 d11 c11 sub13 ((h101 ρ a0) 11 mem101) (smaller (h286 ρ) sub119)
end Blc.H45.H45F9692402711770
