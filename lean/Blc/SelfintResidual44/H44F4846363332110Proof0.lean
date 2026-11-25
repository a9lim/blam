import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363332110Facts0

set_option Elab.async false
namespace Blc.H44.H44F4846363332110
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b0 s1 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s15 :=
  varAll (fun i hi => a0 i (sub1 i hi))
theorem h2 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b0 s16 :=
  varAll (fun i hi => a0 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b0 s17 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b0 s7 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h5 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b0 s18 :=
  varAll (fun i hi => a0 i (sub5 i hi))
theorem h6 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s7 :=
  appAll len3 d3 c3 sub4 ((h0 ρ a0) 3 mem0) (smaller (h0 ρ a0) sub6)
theorem h7 (ρ : Env)  : All tab ρ b2 s19 :=
  (consAll (lamAt d2 c2 (smaller (h6 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub4)) Positive.none)
theorem h8 (ρ : Env) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s20 :=
  varAll (fun i hi => a1 i (sub7 i hi))
theorem h9 (ρ : Env) (a1 : Fits s4 (ρ 1)) : All tab ρ b3 s4 :=
  varAll (fun i hi => a1 i (sub8 i hi))
theorem h10 (ρ : Env) (a1 : Fits s3 (ρ 1)) : All tab ρ b3 s21 :=
  varAll (fun i hi => a1 i (sub9 i hi))
theorem h11 (ρ : Env) (a1 : Fits s9 (ρ 1)) : All tab ρ b3 s9 :=
  varAll (fun i hi => a1 i (sub10 i hi))
theorem h12 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b3 s21 :=
  varAll (fun i hi => a1 i (sub11 i hi))
theorem h13 (ρ : Env) (a1 : Fits s8 (ρ 1)) : All tab ρ b3 s8 :=
  varAll (fun i hi => a1 i (sub12 i hi))
theorem h14 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b3 s22 :=
  varAll (fun i hi => a1 i (sub13 i hi))
theorem h15 (ρ : Env) (a1 : Fits s11 (ρ 1)) : All tab ρ b3 s11 :=
  varAll (fun i hi => a1 i (sub14 i hi))
theorem h16 (ρ : Env) (a1 : Fits s10 (ρ 1)) : All tab ρ b3 s10 :=
  varAll (fun i hi => a1 i (sub15 i hi))
theorem h17 (ρ : Env) (a1 : Fits s13 (ρ 1)) : All tab ρ b3 s13 :=
  varAll (fun i hi => a1 i (sub16 i hi))
theorem h18 (ρ : Env) (a1 : Fits s12 (ρ 1)) : All tab ρ b3 s12 :=
  varAll (fun i hi => a1 i (sub17 i hi))
theorem h19 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b4 s23 :=
  varAll (fun i hi => a2 i (sub18 i hi))
theorem h20 (ρ : Env) (a2 : Fits s3 (ρ 2)) : All tab ρ b4 s24 :=
  varAll (fun i hi => a2 i (sub19 i hi))
theorem h21 (ρ : Env) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s24 :=
  varAll (fun i hi => a2 i (sub20 i hi))
theorem h22 (ρ : Env) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s6 :=
  varAll (fun i hi => a2 i (sub21 i hi))
theorem h23 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b4 s5 :=
  varAll (fun i hi => a2 i (sub22 i hi))
theorem h24 (ρ : Env) (a2 : Fits s5 (ρ 2)) : All tab ρ b4 s23 :=
  varAll (fun i hi => a2 i (sub23 i hi))
theorem h25 (ρ : Env) (a2 : Fits s7 (ρ 2)) : All tab ρ b4 s7 :=
  varAll (fun i hi => a2 i (sub4 i hi))
theorem h26 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b5 s9 :=
  (consAll (lamAt d12 c12 (smaller (h22 (SelfintRecursiveTypes.cons s0 ρ) a1) sub21)) Positive.none)
theorem h27 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b5 s11 :=
  (consAll (lamAt d19 c19 (smaller (h23 (SelfintRecursiveTypes.cons s0 ρ) a1) sub22)) Positive.none)
theorem h28 (ρ : Env) (a1 : Fits s7 (ρ 1)) : All tab ρ b5 s13 :=
  (consAll (lamAt d23 c23 (smaller (h25 (SelfintRecursiveTypes.cons s0 ρ) a1) sub4)) Positive.none)
theorem h29 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b6 s8 :=
  (consAll (lamAt d15 c15 (smaller (h26 (SelfintRecursiveTypes.cons s0 ρ) a0) sub10)) Positive.none)
theorem h30 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b6 s10 :=
  (consAll (lamAt d20 c20 (smaller (h27 (SelfintRecursiveTypes.cons s0 ρ) a0) sub14)) Positive.none)
theorem h31 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b6 s12 :=
  (consAll (lamAt d24 c24 (smaller (h28 (SelfintRecursiveTypes.cons s0 ρ) a0) sub16)) Positive.none)
theorem h32 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len9 d9 c9 sub4 ((h9 ρ a1) 9 mem1) (smaller (h29 ρ a0) sub12)
theorem h33 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len12 d12 c12 sub21 ((h11 ρ a1) 12 mem2) Positive.none
theorem h34 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s8 (ρ 1)) : All tab ρ b7 s9 :=
  appAll len15 d15 c15 sub10 ((h13 ρ a1) 15 mem3) Positive.none
theorem h35 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len12 d12 c12 sub21 ((h11 ρ a1) 12 mem2) Positive.none
end Blc.H44.H44F4846363332110
