import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof6

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h252 (ρ : Env) (a2 : Fits s103 (ρ 2)) : All tab ρ b2 s164 :=
  varAll (fun i hi => a2 i (sub89 i hi))
theorem h253 (ρ : Env) (a2 : Fits s103 (ρ 2)) : All tab ρ b2 s75 :=
  varAll (fun i hi => a2 i (sub90 i hi))
theorem h254 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a2 : Fits s1 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len7 d7 c7 sub4 ((h194 ρ a2) 7 mem3) (Positive.consAll ((h3 ρ a0) 9 mem0) (Positive.consAll ((h7 ρ a0) 21 mem1) (Positive.consAll ((h7 ρ a0) 36 mem2) Positive.none)))
theorem h255 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s7 (ρ 2)) : All tab ρ b3 s5 :=
  appAll len18 d18 c18 sub2 ((h195 ρ a2) 18 mem4) (smaller (h2 ρ a0) sub2)
theorem h256 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len9 d9 c9 sub4 ((h196 ρ a2) 9 mem0) (smaller (h4 ρ a0) sub4)
theorem h257 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s11 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len10 d10 c10 sub4 ((h197 ρ a2) 10 mem5) (smaller (h2 ρ a0) sub2)
theorem h258 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a2 : Fits s7 (ρ 2)) : All tab ρ b3 s11 :=
  appAll len12 d12 c12 sub173 ((h198 ρ a2) 12 mem6) (smaller (h5 ρ a0) sub5)
theorem h259 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b3 s110 :=
  appAll len21 d21 c21 sub194 ((h199 ρ a2) 21 mem1) (smaller (h2 ρ a0) sub2)
theorem h260 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a2 : Fits s6 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len2 d2 c2 sub17 ((h200 ρ a2) 2 mem7) Positive.none
theorem h261 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a2 : Fits s1 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len20 d20 c20 sub4 ((h201 ρ a2) 20 mem10) (Positive.consAll ((h11 ρ a0) 34 mem8) (Positive.consAll ((h19 ρ a0) 46 mem9) Positive.none))
theorem h262 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a2 : Fits s19 (ρ 2)) : All tab ρ b3 s16 :=
  appAll len33 d33 c33 sub10 ((h202 ρ a2) 33 mem11) (smaller (h10 ρ a0) sub10)
theorem h263 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a2 : Fits s14 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len34 d34 c34 sub17 ((h203 ρ a2) 34 mem8) (smaller (h17 ρ a0) sub17)
theorem h264 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s4 (ρ 2)) : All tab ρ b3 s113 :=
  appAll len36 d36 c36 sub195 ((h199 ρ a2) 36 mem2) (smaller (h2 ρ a0) sub2)
theorem h265 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s1 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len35 d35 c35 sub4 ((h204 ρ a2) 35 mem13) (Positive.consAll ((h13 ρ a0) 9 mem0) (Positive.consAll ((h16 ρ a0) 23 mem12) Positive.none))
theorem h266 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s26 (ρ 2)) : All tab ρ b3 s5 :=
  appAll len18 d18 c18 sub2 ((h205 ρ a2) 18 mem4) (smaller (h2 ρ a0) sub2)
theorem h267 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s25 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len9 d9 c9 sub4 ((h206 ρ a2) 9 mem0) (smaller (h4 ρ a0) sub4)
theorem h268 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a2 : Fits s30 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len37 d37 c37 sub4 ((h207 ρ a2) 37 mem14) (smaller (h10 ρ a0) sub10)
theorem h269 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a2 : Fits s26 (ρ 2)) : All tab ρ b3 s30 :=
  appAll len39 d39 c39 sub178 ((h208 ρ a2) 39 mem15) (smaller (h14 ρ a0) sub14)
theorem h270 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a2 : Fits s25 (ρ 2)) : All tab ρ b3 s3 :=
  appAll len23 d23 c23 sub15 ((h209 ρ a2) 23 mem12) (smaller (h10 ρ a0) sub10)
theorem h271 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a2 : Fits s17 (ρ 2)) : All tab ρ b3 s17 :=
  botAll ((h210 ρ a2) 0 mem16)
theorem h272 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a2 : Fits s23 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len46 d46 c46 sub17 ((h211 ρ a2) 46 mem9) (Positive.consAll ((h31 ρ a0) 38 mem17) (Positive.consAll ((h26 ρ a0) 58 mem18) (Positive.consAll ((h31 ρ a0) 70 mem19) (Positive.consAll ((h31 ρ a0) 85 mem20) (Positive.consAll ((h31 ρ a0) 107 mem21) (Positive.consAll ((h31 ρ a0) 124 mem22) (Positive.consAll ((h31 ρ a0) 136 mem23) Positive.none)))))))
theorem h273 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a2 : Fits s19 (ρ 2)) : All tab ρ b3 s23 :=
  appAll len47 d47 c47 sub179 ((h212 ρ a2) 47 mem24) (smaller (h18 ρ a0) sub18)
theorem h274 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a2 : Fits s14 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len46 d46 c46 sub17 ((h213 ρ a2) 46 mem9) (Positive.consAll ((h31 ρ a0) 38 mem17) (Positive.consAll ((h26 ρ a0) 58 mem18) (Positive.consAll ((h31 ρ a0) 70 mem19) (Positive.consAll ((h31 ρ a0) 85 mem20) (Positive.consAll ((h31 ρ a0) 107 mem21) (Positive.consAll ((h31 ρ a0) 124 mem22) (Positive.consAll ((h31 ρ a0) 136 mem23) Positive.none)))))))
theorem h275 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a2 : Fits s1 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len48 d48 c48 sub4 ((h204 ρ a2) 48 mem27) (Positive.consAll ((h21 ρ a0) 9 mem0) (Positive.consAll ((h24 ρ a0) 59 mem25) (Positive.consAll ((h24 ρ a0) 65 mem26) Positive.none)))
theorem h276 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s34 (ρ 2)) : All tab ρ b3 s5 :=
  appAll len18 d18 c18 sub2 ((h214 ρ a2) 18 mem4) (smaller (h2 ρ a0) sub2)
theorem h277 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s32 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len9 d9 c9 sub4 ((h215 ρ a2) 9 mem0) (smaller (h4 ρ a0) sub4)
theorem h278 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a2 : Fits s38 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len49 d49 c49 sub4 ((h216 ρ a2) 49 mem32) (Positive.consAll ((h25 ρ a0) 9 mem0) (Positive.consAll ((h29 ρ a0) 66 mem28) (Positive.consAll ((h29 ρ a0) 81 mem29) (Positive.consAll ((h29 ρ a0) 95 mem30) (Positive.consAll ((h29 ρ a0) 101 mem31) Positive.none)))))
theorem h279 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a2 : Fits s34 (ρ 2)) : All tab ρ b3 s38 :=
  appAll len51 d51 c51 sub182 ((h217 ρ a2) 51 mem33) (smaller (h22 ρ a0) sub22)
theorem h280 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a2 : Fits s32 (ρ 2)) : All tab ρ b3 s116 :=
  appAll len59 d59 c59 sub196 ((h218 ρ a2) 59 mem25) (smaller (h25 ρ a0) sub2)
theorem h281 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a2 : Fits s18 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len58 d58 c58 sub4 ((h219 ρ a2) 58 mem18) (Positive.consAll ((h28 ρ a0) 63 mem34) (Positive.consAll ((h40 ρ a0) 79 mem35) (Positive.consAll ((h46 ρ a0) 93 mem36) (Positive.consAll ((h46 ρ a0) 99 mem37) (Positive.consAll ((h46 ρ a0) 134 mem38) (Positive.consAll ((h46 ρ a0) 165 mem39) Positive.none))))))
theorem h282 (ρ : Env) (a0 : Fits s43 (ρ 0)) (a2 : Fits s41 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len63 d63 c63 sub17 ((h220 ρ a2) 63 mem34) (Positive.consAll ((h34 ρ a0) 9 mem0) (Positive.consAll ((h38 ρ a0) 78 mem40) (Positive.consAll ((h38 ρ a0) 92 mem41) Positive.none)))
theorem h283 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a2 : Fits s32 (ρ 2)) : All tab ρ b3 s118 :=
  appAll len65 d65 c65 sub197 ((h218 ρ a2) 65 mem26) (smaller (h29 ρ a0) sub120)
theorem h284 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a2 : Fits s46 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len68 d68 c68 sub4 ((h221 ρ a2) 68 mem42) (smaller (h45 ρ a0) sub45)
theorem h285 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a2 : Fits s18 (ρ 2)) : All tab ρ b3 s46 :=
  appAll len70 d70 c70 sub184 ((h222 ρ a2) 70 mem19) (Positive.consAll ((h33 ρ a0) 18 mem4) (Positive.consAll ((h35 ρ a0) 71 mem43) Positive.none))
theorem h286 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a2 : Fits s44 (ρ 2)) : All tab ρ b3 s5 :=
  appAll len18 d18 c18 sub2 ((h223 ρ a2) 18 mem4) (smaller (h2 ρ a0) sub2)
theorem h287 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s43 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len9 d9 c9 sub4 ((h224 ρ a2) 9 mem0) (smaller (h4 ρ a0) sub4)
end Blc.H45.H45F9692715709398
