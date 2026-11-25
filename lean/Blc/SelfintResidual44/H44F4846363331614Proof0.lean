import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363331614Facts0

set_option Elab.async false
namespace Blc.H44.H44F4846363331614
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s1 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s12 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s13 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b0 s3 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b0 s5 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h5 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b0 s4 :=
  varAll (fun i hi => a0 i (sub5 i hi))
theorem h6 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b0 s7 :=
  varAll (fun i hi => a0 i (sub6 i hi))
theorem h7 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b0 s6 :=
  varAll (fun i hi => a0 i (sub7 i hi))
theorem h8 (ρ : Env) (a0 : Fits s8 (ρ 0)) : All tab ρ b0 s8 :=
  varAll (fun i hi => a0 i (sub8 i hi))
theorem h9 (ρ : Env) (a0 : Fits s10 (ρ 0)) : All tab ρ b0 s10 :=
  varAll (fun i hi => a0 i (sub9 i hi))
theorem h10 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b0 s9 :=
  varAll (fun i hi => a0 i (sub10 i hi))
theorem h11 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s5 :=
  appAll len2 d2 c2 sub4 ((h0 ρ a0) 2 mem0) (smaller (h0 ρ a0) sub0)
theorem h12 (ρ : Env)  : All tab ρ b2 s12 :=
  (consAll (lamAt d2 c2 (smaller (h11 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub4)) Positive.none)
theorem h13 (ρ : Env) (a1 : Fits s1 (ρ 1)) : All tab ρ b3 s14 :=
  varAll (fun i hi => a1 i (sub11 i hi))
theorem h14 (ρ : Env) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s15 :=
  varAll (fun i hi => a1 i (sub12 i hi))
theorem h15 (ρ : Env) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s1 :=
  varAll (fun i hi => a2 i (sub0 i hi))
theorem h16 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b4 s16 :=
  varAll (fun i hi => a2 i (sub13 i hi))
theorem h17 (ρ : Env) (a3 : Fits s1 (ρ 3)) : All tab ρ b5 s1 :=
  varAll (fun i hi => a3 i (sub0 i hi))
theorem h18 (ρ : Env) (a3 : Fits s2 (ρ 3)) : All tab ρ b5 s2 :=
  varAll (fun i hi => a3 i (sub14 i hi))
theorem h19 (ρ : Env) (a3 : Fits s5 (ρ 3)) : All tab ρ b5 s5 :=
  varAll (fun i hi => a3 i (sub4 i hi))
theorem h20 (ρ : Env) (a2 : Fits s1 (ρ 2)) : All tab ρ b6 s7 :=
  (consAll (lamAt d11 c11 (smaller (h17 (SelfintRecursiveTypes.cons s0 ρ) a2) sub0)) Positive.none)
theorem h21 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b6 s3 :=
  (consAll (lamAt d6 c6 (smaller (h18 (SelfintRecursiveTypes.cons s0 ρ) a2) sub14)) Positive.none)
theorem h22 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b6 s10 :=
  (consAll (lamAt d19 c19 (smaller (h19 (SelfintRecursiveTypes.cons s0 ρ) a2) sub4)) Positive.none)
theorem h23 (ρ : Env) (a1 : Fits s1 (ρ 1)) : All tab ρ b7 s6 :=
  (consAll (lamAt d12 c12 (smaller (h20 (SelfintRecursiveTypes.cons s0 ρ) a1) sub6)) Positive.none)
theorem h24 (ρ : Env) (a1 : Fits s2 (ρ 1)) : All tab ρ b7 s8 :=
  (consAll (lamAt d15 c15 (smaller (h21 (SelfintRecursiveTypes.cons s0 ρ) a1) sub3)) Positive.none)
theorem h25 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b7 s9 :=
  (consAll (lamAt d20 c20 (smaller (h22 (SelfintRecursiveTypes.cons s0 ρ) a1) sub9)) Positive.none)
theorem h26 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b8 s2 :=
  appAll len6 d6 c6 sub14 ((h3 ρ a0) 6 mem1) Positive.none
theorem h27 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len9 d9 c9 sub4 ((h5 ρ a0) 9 mem2) (smaller (h23 ρ a1) sub7)
theorem h28 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b8 s1 :=
  appAll len11 d11 c11 sub0 ((h6 ρ a0) 11 mem3) Positive.none
theorem h29 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b8 s7 :=
  appAll len12 d12 c12 sub6 ((h7 ρ a0) 12 mem4) Positive.none
theorem h30 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b8 s1 :=
  appAll len11 d11 c11 sub0 ((h6 ρ a0) 11 mem3) Positive.none
theorem h31 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len13 d13 c13 sub4 ((h5 ρ a0) 13 mem5) (smaller (h24 ρ a1) sub8)
theorem h32 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b8 s2 :=
  appAll len6 d6 c6 sub14 ((h3 ρ a0) 6 mem1) Positive.none
theorem h33 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b8 s3 :=
  appAll len15 d15 c15 sub3 ((h8 ρ a0) 15 mem6) Positive.none
theorem h34 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b8 s2 :=
  appAll len6 d6 c6 sub14 ((h3 ρ a0) 6 mem1) Positive.none
theorem h35 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len16 d16 c16 sub4 ((h5 ρ a0) 16 mem7) (smaller (h25 ρ a1) sub10)
end Blc.H44.H44F4846363331614
