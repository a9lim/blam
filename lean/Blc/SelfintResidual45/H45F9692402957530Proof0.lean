import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Facts14

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h0 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b0 s181 :=
  varAll (fun i hi => a0 i (sub0 i hi))
theorem h1 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b1 s182 :=
  varAll (fun i hi => a2 i (sub1 i hi))
theorem h2 (ρ : Env) (a2 : Fits s7 (ρ 2)) : All tab ρ b2 s183 :=
  varAll (fun i hi => a2 i (sub2 i hi))
theorem h3 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b3 s184 :=
  varAll (fun i hi => a0 i (sub3 i hi))
theorem h4 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b4 s6 :=
  varAll (fun i hi => a1 i (sub4 i hi))
theorem h5 (ρ : Env) (a1 : Fits s11 (ρ 1)) : All tab ρ b4 s11 :=
  varAll (fun i hi => a1 i (sub5 i hi))
theorem h6 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b5 s9 :=
  appAll len14 d14 c14 sub6 ((h3 ρ a0) 14 mem0) (smaller (h4 ρ a1) sub4)
theorem h7 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b5 s9 :=
  appAll len22 d22 c22 sub6 ((h3 ρ a0) 22 mem1) (smaller (h5 ρ a1) sub5)
theorem h8 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b6 s9 :=
  appAll len13 d13 c13 sub6 ((h2 ρ a2) 13 mem2) (smaller (h6 ρ a0 a1) sub6)
theorem h9 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b6 s9 :=
  appAll len13 d13 c13 sub6 ((h2 ρ a2) 13 mem2) (smaller (h7 ρ a0 a1) sub6)
theorem h10 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b7 s8 :=
  (consAll (lamAt d12 c12 (smaller (h8 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub6)) Positive.none)
theorem h11 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b7 s8 :=
  (consAll (lamAt d12 c12 (smaller (h9 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub6)) Positive.none)
theorem h12 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s100 :=
  appAll len10 d10 c10 sub9 ((h1 ρ a2) 10 mem3) (smaller (h10 ρ a0 a1) sub8)
theorem h13 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len21 d21 c21 sub4 ((h1 ρ a2) 21 mem4) (smaller (h11 ρ a0 a1) sub8)
theorem h14 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b9 s101 :=
  (consAll (lamAt d8 c8 (smaller (h12 (SelfintRecursiveTypes.cons s6 ρ) sub4 a0 a1) sub9)) (consAll (lamAt d20 c20 (smaller (h13 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub4)) Positive.none))
theorem h15 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b10 s3 :=
  (consAll (lamAt d9 c9 (smaller (h14 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0) sub10)) Positive.none)
theorem h16 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b11 s99 :=
  appAll len5 d5 c5 sub12 ((h0 ρ a0) 5 mem5) (smaller (h15 ρ a0) sub11)
theorem h17 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s2 :=
  varAll (fun i hi => a0 i (sub13 i hi))
theorem h18 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b13 s98 :=
  appAll len4 d4 c4 sub14 ((h16 ρ a0) 4 mem6) (smaller (h17 ρ a0) sub13)
theorem h19 (ρ : Env)  : All tab ρ b14 s99 :=
  (consAll (lamAt d4 c4 (smaller (h18 (SelfintRecursiveTypes.cons s2 ρ) sub13) sub14)) Positive.none)
theorem h20 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b15 s185 :=
  varAll (fun i hi => a0 i (sub15 i hi))
theorem h21 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b15 s9 :=
  varAll (fun i hi => a0 i (sub6 i hi))
theorem h22 (ρ : Env) (a0 : Fits s15 (ρ 0)) : All tab ρ b15 s186 :=
  varAll (fun i hi => a0 i (sub16 i hi))
theorem h23 (ρ : Env) (a0 : Fits s20 (ρ 0)) : All tab ρ b15 s187 :=
  varAll (fun i hi => a0 i (sub17 i hi))
theorem h24 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b15 s188 :=
  varAll (fun i hi => a0 i (sub18 i hi))
theorem h25 (ρ : Env) (a0 : Fits s34 (ρ 0)) : All tab ρ b15 s189 :=
  varAll (fun i hi => a0 i (sub19 i hi))
theorem h26 (ρ : Env) (a0 : Fits s40 (ρ 0)) : All tab ρ b15 s190 :=
  varAll (fun i hi => a0 i (sub20 i hi))
theorem h27 (ρ : Env) (a0 : Fits s43 (ρ 0)) : All tab ρ b15 s191 :=
  varAll (fun i hi => a0 i (sub21 i hi))
theorem h28 (ρ : Env) (a0 : Fits s46 (ρ 0)) : All tab ρ b15 s192 :=
  varAll (fun i hi => a0 i (sub22 i hi))
theorem h29 (ρ : Env) (a0 : Fits s49 (ρ 0)) : All tab ρ b15 s193 :=
  varAll (fun i hi => a0 i (sub23 i hi))
theorem h30 (ρ : Env) (a0 : Fits s58 (ρ 0)) : All tab ρ b15 s194 :=
  varAll (fun i hi => a0 i (sub24 i hi))
theorem h31 (ρ : Env) (a0 : Fits s61 (ρ 0)) : All tab ρ b15 s195 :=
  varAll (fun i hi => a0 i (sub25 i hi))
theorem h32 (ρ : Env) (a0 : Fits s63 (ρ 0)) : All tab ρ b15 s196 :=
  varAll (fun i hi => a0 i (sub26 i hi))
theorem h33 (ρ : Env) (a0 : Fits s73 (ρ 0)) : All tab ρ b15 s197 :=
  varAll (fun i hi => a0 i (sub27 i hi))
theorem h34 (ρ : Env) (a0 : Fits s78 (ρ 0)) : All tab ρ b15 s198 :=
  varAll (fun i hi => a0 i (sub28 i hi))
theorem h35 (ρ : Env) (a0 : Fits s81 (ρ 0)) : All tab ρ b15 s199 :=
  varAll (fun i hi => a0 i (sub29 i hi))
end Blc.H45.H45F9692402957530
