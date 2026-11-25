import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402989098Facts1

set_option Elab.async false
namespace Blc.H45.H45F9692402989098
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s1 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s12 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b0 s3 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b0 s16 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b0 s9 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h5 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b0 s6 :=
  varAll (fun i hi => a0 i (sub5 i hi))
theorem h6 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b0 s5 :=
  varAll (fun i hi => a0 i (sub6 i hi))
theorem h7 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s9 :=
  appAll len3 d3 c3 sub4 ((h0 ρ a0) 3 mem0) (smaller (h0 ρ a0) sub7)
theorem h8 (ρ : Env)  : All tab ρ b2 s20 :=
  (consAll (lamAt d2 c2 (smaller (h7 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub4)) Positive.none)
theorem h9 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b3 s2 :=
  varAll (fun i hi => a2 i (sub8 i hi))
theorem h10 (ρ : Env) (a2 : Fits s3 (ρ 2)) : All tab ρ b3 s21 :=
  varAll (fun i hi => a2 i (sub9 i hi))
theorem h11 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b3 s22 :=
  varAll (fun i hi => a2 i (sub10 i hi))
theorem h12 (ρ : Env) (a2 : Fits s6 (ρ 2)) : All tab ρ b3 s23 :=
  varAll (fun i hi => a2 i (sub11 i hi))
theorem h13 (ρ : Env) (a1 : Fits s4 (ρ 1)) : All tab ρ b4 s4 :=
  varAll (fun i hi => a1 i (sub12 i hi))
theorem h14 (ρ : Env) (a1 : Fits s8 (ρ 1)) : All tab ρ b4 s8 :=
  varAll (fun i hi => a1 i (sub13 i hi))
theorem h15 (ρ : Env) (a1 : Fits s7 (ρ 1)) : All tab ρ b4 s7 :=
  varAll (fun i hi => a1 i (sub14 i hi))
theorem h16 (ρ : Env) (a1 : Fits s10 (ρ 1)) : All tab ρ b4 s10 :=
  varAll (fun i hi => a1 i (sub15 i hi))
theorem h17 (ρ : Env) (a1 : Fits s11 (ρ 1)) : All tab ρ b4 s11 :=
  varAll (fun i hi => a1 i (sub16 i hi))
theorem h18 (ρ : Env)  : All tab ρ b5 s15 :=
  (consAll (lamAt d11 c11 (smaller (h4 (SelfintRecursiveTypes.cons s9 ρ) sub4) sub4)) (consAll (lamAt d13 c13 (smaller (h2 (SelfintRecursiveTypes.cons s3 ρ) sub2) sub2)) (consAll (lamAt d16 c16 (smaller (h5 (SelfintRecursiveTypes.cons s6 ρ) sub5) sub5)) (consAll (lamAt d18 c18 (smaller (h6 (SelfintRecursiveTypes.cons s5 ρ) sub6) sub6)) Positive.none))))
theorem h19 (ρ : Env)  : All tab ρ b6 s7 :=
  (consAll (lamAt d14 c14 (smaller (h18 (SelfintRecursiveTypes.cons s0 ρ)) sub17)) Positive.none)
theorem h20 (ρ : Env) (a1 : Fits s4 (ρ 1)) : All tab ρ b7 s13 :=
  appAll len9 d9 c9 sub18 ((h13 ρ a1) 9 mem1) (smaller (h19 ρ) sub14)
theorem h21 (ρ : Env) (a1 : Fits s8 (ρ 1)) : All tab ρ b7 s14 :=
  appAll len12 d12 c12 sub19 ((h14 ρ a1) 12 mem2) (smaller (h19 ρ) sub14)
theorem h22 (ρ : Env) (a1 : Fits s7 (ρ 1)) : All tab ρ b7 s15 :=
  appAll len14 d14 c14 sub17 ((h15 ρ a1) 14 mem3) Positive.none
theorem h23 (ρ : Env) (a1 : Fits s10 (ρ 1)) : All tab ρ b7 s18 :=
  appAll len20 d20 c20 sub20 ((h16 ρ a1) 20 mem4) (smaller (h19 ρ) sub14)
theorem h24 (ρ : Env) (a1 : Fits s11 (ρ 1)) : All tab ρ b7 s19 :=
  appAll len22 d22 c22 sub21 ((h17 ρ a1) 22 mem5) (smaller (h19 ρ) sub14)
theorem h25 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len8 d8 c8 sub6 ((h20 ρ a1) 8 mem6) (smaller (h2 ρ a0) sub2)
theorem h26 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s8 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len7 d7 c7 sub4 ((h21 ρ a1) 7 mem7) (smaller (h5 ρ a0) sub5)
theorem h27 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b8 s3 :=
  appAll len13 d13 c13 sub2 ((h22 ρ a1) 13 mem8) (smaller (h2 ρ a0) sub2)
theorem h28 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b8 s6 :=
  appAll len16 d16 c16 sub5 ((h22 ρ a1) 16 mem9) (smaller (h5 ρ a0) sub5)
theorem h29 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s8 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len6 d6 c6 sub4 ((h21 ρ a1) 6 mem10) (smaller (h6 ρ a0) sub6)
theorem h30 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len18 d18 c18 sub6 ((h22 ρ a1) 18 mem11) (smaller (h6 ρ a0) sub6)
theorem h31 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s10 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len19 d19 c19 sub6 ((h23 ρ a1) 19 mem12) (smaller (h5 ρ a0) sub5)
theorem h32 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len19 d19 c19 sub6 ((h24 ρ a1) 19 mem13) (smaller (h5 ρ a0) sub5)
theorem h33 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s8 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len11 d11 c11 sub4 ((h21 ρ a1) 11 mem14) (smaller (h4 ρ a0) sub4)
theorem h34 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s8 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len4 d4 c4 sub4 ((h21 ρ a1) 4 mem15) (smaller (h2 ρ a0) sub2)
theorem h35 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len11 d11 c11 sub4 ((h22 ρ a1) 11 mem16) (smaller (h4 ρ a0) sub4)
end Blc.H45.H45F9692402989098
