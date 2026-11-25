import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692869766666Facts0

set_option Elab.async false
namespace Blc.H45.H45F9692869766666
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s1 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s11 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s12 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b0 s4 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s2 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h5 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b0 s7 :=
  varAll (fun i hi => a0 i (sub5 i hi))
theorem h6 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s7 :=
  appAll len2 d2 c2 sub5 ((h0 ρ a0) 2 mem0) (smaller (h0 ρ a0) sub0)
theorem h7 (ρ : Env)  : All tab ρ b2 s13 :=
  (consAll (lamAt d2 c2 (smaller (h6 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub5)) Positive.none)
theorem h8 (ρ : Env) (a2 : Fits s1 (ρ 2)) : All tab ρ b3 s1 :=
  varAll (fun i hi => a2 i (sub0 i hi))
theorem h9 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b3 s8 :=
  varAll (fun i hi => a2 i (sub6 i hi))
theorem h10 (ρ : Env) (a1 : Fits s3 (ρ 1)) : All tab ρ b4 s3 :=
  varAll (fun i hi => a1 i (sub7 i hi))
theorem h11 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b4 s5 :=
  varAll (fun i hi => a1 i (sub8 i hi))
theorem h12 (ρ : Env) (a1 : Fits s4 (ρ 1)) : All tab ρ b4 s4 :=
  varAll (fun i hi => a1 i (sub3 i hi))
theorem h13 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b4 s6 :=
  varAll (fun i hi => a1 i (sub9 i hi))
theorem h14 (ρ : Env)  : All tab ρ b5 s14 :=
  (consAll (lamAt d9 c9 (smaller (h0 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub0)) (consAll (lamAt d11 c11 (smaller (h3 (SelfintRecursiveTypes.cons s4 ρ) sub3) sub3)) (consAll (lamAt d13 c13 (smaller (h4 (SelfintRecursiveTypes.cons s2 ρ) sub4) sub4)) (consAll (lamAt d14 c14 (smaller (h5 (SelfintRecursiveTypes.cons s7 ρ) sub5) sub5)) Positive.none))))
theorem h15 (ρ : Env)  : All tab ρ b6 s15 :=
  (consAll (lamAt d10 c10 (smaller (h14 (SelfintRecursiveTypes.cons s0 ρ)) sub10)) (consAll (lamAt d12 c12 (smaller (h14 (SelfintRecursiveTypes.cons s0 ρ)) sub11)) Positive.none))
theorem h16 (ρ : Env) (a1 : Fits s3 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len5 d5 c5 sub5 ((h10 ρ a1) 5 mem1) (smaller (h15 ρ) sub12)
theorem h17 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b7 s8 :=
  appAll len8 d8 c8 sub14 ((h11 ρ a1) 8 mem2) (smaller (h15 ρ) sub13)
theorem h18 (ρ : Env) (a1 : Fits s4 (ρ 1)) : All tab ρ b7 s9 :=
  appAll len10 d10 c10 sub15 ((h12 ρ a1) 10 mem3) Positive.none
theorem h19 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b7 s10 :=
  appAll len12 d12 c12 sub16 ((h13 ρ a1) 12 mem4) Positive.none
theorem h20 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b8 s1 :=
  botAll ((h16 ρ a1) 0 mem5)
theorem h21 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b8 s1 :=
  appAll len7 d7 c7 sub0 ((h17 ρ a1) 7 mem6) (smaller (h3 ρ a0) sub3)
theorem h22 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b8 s1 :=
  appAll len9 d9 c9 sub0 ((h18 ρ a1) 9 mem7) (smaller (h0 ρ a0) sub0)
theorem h23 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b8 s4 :=
  appAll len11 d11 c11 sub3 ((h19 ρ a1) 11 mem8) (smaller (h3 ρ a0) sub3)
theorem h24 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b8 s2 :=
  appAll len13 d13 c13 sub4 ((h18 ρ a1) 13 mem9) (smaller (h4 ρ a0) sub4)
theorem h25 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b8 s2 :=
  botAll ((h16 ρ a1) 0 mem5)
theorem h26 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b8 s7 :=
  appAll len14 d14 c14 sub5 ((h18 ρ a1) 14 mem10) (smaller (h5 ρ a0) sub5)
theorem h27 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b8 s7 :=
  botAll ((h16 ρ a1) 0 mem5)
theorem h28 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b8 s7 :=
  botAll ((h16 ρ a1) 0 mem5)
theorem h29 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b8 s1 :=
  botAll ((h16 ρ a1) 0 mem5)
theorem h30 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b8 s2 :=
  botAll ((h16 ρ a1) 0 mem5)
theorem h31 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s7 :=
  appAll len2 d2 c2 sub5 ((h8 ρ a2) 2 mem0) (smaller (h20 ρ a0 a1) sub0)
theorem h32 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s7 :=
  appAll len2 d2 c2 sub5 ((h8 ρ a2) 2 mem0) (smaller (h21 ρ a0 a1) sub0)
theorem h33 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s1 :=
  appAll len7 d7 c7 sub0 ((h9 ρ a2) 7 mem6) (smaller (h23 ρ a0 a1) sub3)
theorem h34 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s7 :=
  appAll len2 d2 c2 sub5 ((h8 ρ a2) 2 mem0) (smaller (h22 ρ a0 a1) sub0)
theorem h35 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s1 :=
  appAll len3 d3 c3 sub0 ((h8 ρ a2) 3 mem11) (smaller (h24 ρ a0 a1) sub4)
end Blc.H45.H45F9692869766666
