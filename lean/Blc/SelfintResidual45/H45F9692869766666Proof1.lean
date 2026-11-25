import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692869766666Proof0

set_option Elab.async false
namespace Blc.H45.H45F9692869766666
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s1 :=
  appAll len3 d3 c3 sub0 ((h8 ρ a2) 3 mem11) (smaller (h25 ρ a0 a1) sub4)
theorem h37 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s7 :=
  appAll len14 d14 c14 sub5 ((h8 ρ a2) 14 mem12) (smaller (h28 ρ a0 a1) sub5)
theorem h38 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s7 :=
  appAll len14 d14 c14 sub5 ((h8 ρ a2) 14 mem12) (smaller (h26 ρ a0 a1) sub5)
theorem h39 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s7 :=
  appAll len14 d14 c14 sub5 ((h8 ρ a2) 14 mem12) (smaller (h27 ρ a0 a1) sub5)
theorem h40 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s1 :=
  appAll len15 d15 c15 sub0 ((h8 ρ a2) 15 mem13) (smaller (h28 ρ a0 a1) sub5)
theorem h41 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s1 :=
  appAll len15 d15 c15 sub0 ((h8 ρ a2) 15 mem13) (smaller (h27 ρ a0 a1) sub5)
theorem h42 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s1 :=
  appAll len15 d15 c15 sub0 ((h8 ρ a2) 15 mem13) (smaller (h26 ρ a0 a1) sub5)
theorem h43 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b10 s1 :=
  (consAll (lamAt d2 c2 (smaller (h31 (SelfintRecursiveTypes.cons s1 ρ) sub0 a0 a1) sub5)) (consAll (lamAt d3 c3 (smaller (h36 (SelfintRecursiveTypes.cons s2 ρ) sub4 a0 a1) sub0)) (consAll (lamAt d14 c14 (smaller (h39 (SelfintRecursiveTypes.cons s7 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d15 c15 (smaller (h41 (SelfintRecursiveTypes.cons s7 ρ) sub5 a0 a1) sub0)) Positive.none))))
theorem h44 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b10 s3 :=
  (consAll (lamAt d5 c5 (smaller (h32 (SelfintRecursiveTypes.cons s4 ρ) sub3 a0 a1) sub5)) Positive.none)
theorem h45 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s8 :=
  (consAll (lamAt d7 c7 (smaller (h33 (SelfintRecursiveTypes.cons s4 ρ) sub3 a0 a1) sub0)) Positive.none)
theorem h46 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b10 s1 :=
  (consAll (lamAt d2 c2 (smaller (h34 (SelfintRecursiveTypes.cons s1 ρ) sub0 a0 a1) sub5)) (consAll (lamAt d3 c3 (smaller (h35 (SelfintRecursiveTypes.cons s2 ρ) sub4 a0 a1) sub0)) (consAll (lamAt d14 c14 (smaller (h38 (SelfintRecursiveTypes.cons s7 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d15 c15 (smaller (h42 (SelfintRecursiveTypes.cons s7 ρ) sub5 a0 a1) sub0)) Positive.none))))
theorem h47 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b11 s2 :=
  (consAll (lamAt d4 c4 (smaller (h43 (SelfintRecursiveTypes.cons s3 ρ) sub7 a0) sub0)) (consAll (lamAt d6 c6 (smaller (h44 (SelfintRecursiveTypes.cons s5 ρ) sub8 a0) sub7)) (consAll (lamAt d7 c7 (smaller (h46 (SelfintRecursiveTypes.cons s4 ρ) sub3 a0) sub0)) Positive.none)))
theorem h48 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b11 s5 :=
  (consAll (lamAt d8 c8 (smaller (h45 (SelfintRecursiveTypes.cons s6 ρ) sub9 a0) sub14)) Positive.none)
theorem h49 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b12 s1 :=
  appAll len3 d3 c3 sub0 ((h1 ρ a0) 3 mem14) (smaller (h47 ρ a0) sub4)
theorem h50 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len6 d6 c6 sub7 ((h2 ρ a0) 6 mem15) (smaller (h48 ρ a0) sub8)
theorem h51 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b13 s7 :=
  appAll len2 d2 c2 sub5 ((h1 ρ a0) 2 mem16) (smaller (h49 ρ a0) sub0)
theorem h52 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b13 s1 :=
  appAll len4 d4 c4 sub0 ((h2 ρ a0) 4 mem17) (smaller (h50 ρ a0) sub7)
theorem h53 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b13 s7 :=
  botAll ((h5 ρ a0) 0 mem5)
theorem h54 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b13 s1 :=
  botAll ((h5 ρ a0) 0 mem5)
theorem h55 (ρ : Env)  : All tab ρ b14 s1 :=
  (consAll (lamAt d2 c2 (smaller (h51 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub5)) (consAll (lamAt d3 c3 (smaller (h52 (SelfintRecursiveTypes.cons s2 ρ) sub4) sub0)) (consAll (lamAt d14 c14 (smaller (h53 (SelfintRecursiveTypes.cons s7 ρ) sub5) sub5)) (consAll (lamAt d15 c15 (smaller (h54 (SelfintRecursiveTypes.cons s7 ρ) sub5) sub0)) Positive.none))))
theorem h56 (ρ : Env)  : All tab ρ b15 s7 :=
  appAll len2 d2 c2 sub5 ((h7 ρ) 2 mem18) (smaller (h55 ρ) sub0)
theorem h57 (ρ : Env)  : All tab ρ b16 s7 :=
  botAll ((h56 ρ) 0 mem5)
theorem h58 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b46 s7 :=
  botAll ((h57 ρ) 0 mem5)
theorem h59 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b48 s7 :=
  botAll ((h58 ρ a0) 0 mem5)
theorem h60 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b49 s7 :=
  botAll ((h59 ρ a0) 0 mem5)
theorem h61 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b50 s7 :=
  botAll ((h60 ρ a0) 0 mem5)
theorem h62 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b51 s7 :=
  botAll ((h61 ρ a0) 0 mem5)
theorem h63 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b52 s7 :=
  botAll ((h62 ρ a0) 0 mem5)
theorem h64 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b53 s7 :=
  botAll ((h63 ρ a0) 0 mem5)
theorem h65 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b54 s7 :=
  botAll ((h64 ρ a0) 0 mem5)
theorem h66 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b55 s7 :=
  botAll ((h65 ρ a0) 0 mem5)
theorem h67 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b56 s7 :=
  botAll ((h66 ρ a0) 0 mem5)
theorem h68 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b57 s7 :=
  botAll ((h67 ρ a0) 0 mem5)
theorem h69 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b58 s7 :=
  botAll ((h68 ρ a0) 0 mem5)
theorem h70 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b59 s16 :=
  botAll ((h69 ρ a0) 0 mem5)
end Blc.H45.H45F9692869766666
