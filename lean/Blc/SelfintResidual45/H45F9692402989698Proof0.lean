import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402989698Facts0

set_option Elab.async false
namespace Blc.H45.H45F9692402989698
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b0 s13 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b0 s14 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s1 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b0 s5 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b0 s4 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h5 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b0 s3 :=
  varAll (fun i hi => a0 i (sub5 i hi))
theorem h6 (ρ : Env) (a2 : Fits s3 (ρ 2)) : All tab ρ b1 s3 :=
  varAll (fun i hi => a2 i (sub5 i hi))
theorem h7 (ρ : Env) (a2 : Fits s4 (ρ 2)) : All tab ρ b1 s9 :=
  varAll (fun i hi => a2 i (sub6 i hi))
theorem h8 (ρ : Env) (a1 : Fits s2 (ρ 1)) : All tab ρ b2 s2 :=
  varAll (fun i hi => a1 i (sub7 i hi))
theorem h9 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b2 s5 :=
  varAll (fun i hi => a1 i (sub3 i hi))
theorem h10 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b2 s6 :=
  varAll (fun i hi => a1 i (sub8 i hi))
theorem h11 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s9 :=
  appAll len7 d7 c7 sub10 ((h8 ρ a1) 7 mem0) (smaller (h2 ρ a0) sub9)
theorem h12 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b3 s10 :=
  appAll len9 d9 c9 sub11 ((h9 ρ a1) 9 mem1) Positive.none
theorem h13 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b3 s11 :=
  appAll len11 d11 c11 sub12 ((h10 ρ a1) 11 mem2) Positive.none
theorem h14 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b3 s12 :=
  appAll len13 d13 c13 sub13 ((h9 ρ a1) 13 mem3) Positive.none
theorem h15 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b4 s3 :=
  appAll len6 d6 c6 sub5 ((h11 ρ a0 a1) 6 mem4) (smaller (h2 ρ a0) sub14)
theorem h16 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b4 s4 :=
  appAll len8 d8 c8 sub4 ((h12 ρ a0 a1) 8 mem5) (smaller (h4 ρ a0) sub4)
theorem h17 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b4 s5 :=
  appAll len10 d10 c10 sub3 ((h13 ρ a0 a1) 10 mem6) (smaller (h3 ρ a0) sub3)
theorem h18 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b4 s3 :=
  appAll len12 d12 c12 sub5 ((h14 ρ a0 a1) 12 mem7) (smaller (h5 ρ a0) sub5)
theorem h19 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b5 s7 :=
  appAll len4 d4 c4 sub15 ((h6 ρ a2) 4 mem8) (smaller (h15 ρ a0 a1) sub5)
theorem h20 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b5 s3 :=
  appAll len6 d6 c6 sub5 ((h7 ρ a2) 6 mem4) (smaller (h17 ρ a0 a1) sub3)
theorem h21 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b5 s7 :=
  appAll len5 d5 c5 sub15 ((h6 ρ a2) 5 mem9) (smaller (h16 ρ a0 a1) sub4)
theorem h22 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b5 s7 :=
  appAll len4 d4 c4 sub15 ((h6 ρ a2) 4 mem8) (smaller (h18 ρ a0 a1) sub5)
theorem h23 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b6 s8 :=
  (consAll (lamAt d2 c2 (smaller (h19 (SelfintRecursiveTypes.cons s1 ρ) sub2 a0 a1) sub15)) Positive.none)
theorem h24 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b6 s9 :=
  (consAll (lamAt d6 c6 (smaller (h20 (SelfintRecursiveTypes.cons s5 ρ) sub3 a0 a1) sub5)) Positive.none)
theorem h25 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b6 s3 :=
  (consAll (lamAt d4 c4 (smaller (h22 (SelfintRecursiveTypes.cons s3 ρ) sub5 a0 a1) sub15)) (consAll (lamAt d5 c5 (smaller (h21 (SelfintRecursiveTypes.cons s4 ρ) sub4 a0 a1) sub15)) Positive.none))
theorem h26 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b7 s4 :=
  (consAll (lamAt d3 c3 (smaller (h23 (SelfintRecursiveTypes.cons s2 ρ) sub7 a0) sub16)) (consAll (lamAt d6 c6 (smaller (h25 (SelfintRecursiveTypes.cons s5 ρ) sub3 a0) sub5)) Positive.none))
theorem h27 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b7 s2 :=
  (consAll (lamAt d7 c7 (smaller (h24 (SelfintRecursiveTypes.cons s6 ρ) sub8 a0) sub10)) Positive.none)
theorem h28 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b8 s7 :=
  appAll len5 d5 c5 sub15 ((h0 ρ a0) 5 mem10) (smaller (h26 ρ a0) sub4)
theorem h29 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b8 s8 :=
  appAll len3 d3 c3 sub16 ((h1 ρ a0) 3 mem11) (smaller (h27 ρ a0) sub7)
theorem h30 (ρ : Env)  : All tab ρ b9 s15 :=
  (consAll (lamAt d8 c8 (smaller (h4 (SelfintRecursiveTypes.cons s4 ρ) sub4) sub4)) (consAll (lamAt d10 c10 (smaller (h3 (SelfintRecursiveTypes.cons s5 ρ) sub3) sub3)) (consAll (lamAt d12 c12 (smaller (h5 (SelfintRecursiveTypes.cons s3 ρ) sub5) sub5)) Positive.none)))
theorem h31 (ρ : Env)  : All tab ρ b10 s1 :=
  (consAll (lamAt d9 c9 (smaller (h30 (SelfintRecursiveTypes.cons s0 ρ)) sub17)) (consAll (lamAt d11 c11 (smaller (h30 (SelfintRecursiveTypes.cons s0 ρ)) sub18)) (consAll (lamAt d13 c13 (smaller (h30 (SelfintRecursiveTypes.cons s0 ρ)) sub19)) Positive.none)))
theorem h32 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b11 s7 :=
  botAll ((h28 ρ a0) 0 mem12)
theorem h33 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b11 s7 :=
  appAll len2 d2 c2 sub15 ((h29 ρ a0) 2 mem13) (smaller (h31 ρ) sub2)
theorem h34 (ρ : Env)  : All tab ρ b12 s3 :=
  (consAll (lamAt d4 c4 (smaller (h32 (SelfintRecursiveTypes.cons s3 ρ) sub5) sub15)) (consAll (lamAt d5 c5 (smaller (h33 (SelfintRecursiveTypes.cons s4 ρ) sub4) sub15)) Positive.none))
theorem h35 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b13 s7 :=
  appAll len4 d4 c4 sub15 ((h34 ρ) 4 mem8) (smaller (h15 ρ a0 a1) sub5)
end Blc.H45.H45F9692402989698
