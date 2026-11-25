import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9676763418166Facts1

set_option Elab.async false
namespace Blc.H45.H45F9676763418166
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s1 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s20 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b0 s21 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b0 s22 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b0 s7 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h5 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b0 s23 :=
  varAll (fun i hi => a0 i (sub5 i hi))
theorem h6 (ρ : Env) (a0 : Fits s16 (ρ 0)) : All tab ρ b0 s16 :=
  varAll (fun i hi => a0 i (sub6 i hi))
theorem h7 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s2 :=
  appAll len5 d5 c5 sub8 ((h0 ρ a0) 5 mem0) (smaller (h0 ρ a0) sub7)
theorem h8 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b2 s16 :=
  appAll len3 d3 c3 sub6 ((h0 ρ a0) 3 mem1) (smaller (h7 ρ a0) sub8)
theorem h9 (ρ : Env)  : All tab ρ b3 s24 :=
  (consAll (lamAt d2 c2 (smaller (h8 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub6)) Positive.none)
theorem h10 (ρ : Env) (a2 : Fits s4 (ρ 2)) : All tab ρ b4 s25 :=
  varAll (fun i hi => a2 i (sub9 i hi))
theorem h11 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b4 s26 :=
  varAll (fun i hi => a2 i (sub10 i hi))
theorem h12 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b4 s2 :=
  varAll (fun i hi => a2 i (sub8 i hi))
theorem h13 (ρ : Env) (a2 : Fits s13 (ρ 2)) : All tab ρ b4 s27 :=
  varAll (fun i hi => a2 i (sub11 i hi))
theorem h14 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b5 s6 :=
  varAll (fun i hi => a1 i (sub12 i hi))
theorem h15 (ρ : Env) (a1 : Fits s10 (ρ 1)) : All tab ρ b5 s10 :=
  varAll (fun i hi => a1 i (sub13 i hi))
theorem h16 (ρ : Env) (a1 : Fits s8 (ρ 1)) : All tab ρ b5 s8 :=
  varAll (fun i hi => a1 i (sub14 i hi))
theorem h17 (ρ : Env) (a1 : Fits s3 (ρ 1)) : All tab ρ b5 s3 :=
  varAll (fun i hi => a1 i (sub15 i hi))
theorem h18 (ρ : Env) (a1 : Fits s9 (ρ 1)) : All tab ρ b5 s9 :=
  varAll (fun i hi => a1 i (sub16 i hi))
theorem h19 (ρ : Env) (a1 : Fits s11 (ρ 1)) : All tab ρ b5 s11 :=
  varAll (fun i hi => a1 i (sub17 i hi))
theorem h20 (ρ : Env) (a1 : Fits s7 (ρ 1)) : All tab ρ b5 s7 :=
  varAll (fun i hi => a1 i (sub4 i hi))
theorem h21 (ρ : Env) (a1 : Fits s15 (ρ 1)) : All tab ρ b5 s15 :=
  varAll (fun i hi => a1 i (sub18 i hi))
theorem h22 (ρ : Env) (a1 : Fits s14 (ρ 1)) : All tab ρ b5 s14 :=
  varAll (fun i hi => a1 i (sub19 i hi))
theorem h23 (ρ : Env) (a1 : Fits s12 (ρ 1)) : All tab ρ b5 s12 :=
  varAll (fun i hi => a1 i (sub20 i hi))
theorem h24 (ρ : Env) (a1 : Fits s17 (ρ 1)) : All tab ρ b5 s17 :=
  varAll (fun i hi => a1 i (sub21 i hi))
theorem h25 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b6 s8 :=
  (consAll (lamAt d14 c14 (smaller (h17 (SelfintRecursiveTypes.cons s0 ρ) a0) sub22)) (consAll (lamAt d19 c19 (smaller (h17 (SelfintRecursiveTypes.cons s0 ρ) a0) sub23)) (consAll (lamAt d27 c27 (smaller (h17 (SelfintRecursiveTypes.cons s0 ρ) a0) sub15)) Positive.none)))
theorem h26 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b6 s11 :=
  (consAll (lamAt d20 c20 (smaller (h18 (SelfintRecursiveTypes.cons s0 ρ) a0) sub16)) Positive.none)
theorem h27 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b6 s15 :=
  (consAll (lamAt d24 c24 (smaller (h20 (SelfintRecursiveTypes.cons s0 ρ) a0) sub4)) Positive.none)
theorem h28 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b6 s17 :=
  (consAll (lamAt d28 c28 (smaller (h23 (SelfintRecursiveTypes.cons s0 ρ) a0) sub20)) Positive.none)
theorem h29 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len10 d10 c10 sub4 ((h14 ρ a1) 10 mem2) (smaller (h25 ρ a0) sub14)
theorem h30 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s10 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len13 d13 c13 sub4 ((h15 ρ a1) 13 mem3) (smaller (h26 ρ a0) sub17)
theorem h31 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s8 (ρ 1)) : All tab ρ b7 s10 :=
  appAll len14 d14 c14 sub13 ((h16 ρ a1) 14 mem4) Positive.none
theorem h32 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len13 d13 c13 sub4 ((h14 ρ a1) 13 mem5) (smaller (h26 ρ a0) sub17)
theorem h33 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b7 s13 :=
  appAll len19 d19 c19 sub24 ((h18 ρ a1) 19 mem6) Positive.none
theorem h34 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b7 s9 :=
  appAll len20 d20 c20 sub16 ((h19 ρ a1) 20 mem7) Positive.none
theorem h35 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len21 d21 c21 sub4 ((h14 ρ a1) 21 mem8) (smaller (h27 ρ a0) sub18)
end Blc.H45.H45F9676763418166
