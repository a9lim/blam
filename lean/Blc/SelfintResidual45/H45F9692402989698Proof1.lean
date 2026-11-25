import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402989698Proof0

set_option Elab.async false
namespace Blc.H45.H45F9692402989698
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b13 s7 :=
  appAll len5 d5 c5 sub15 ((h34 ρ) 5 mem9) (smaller (h16 ρ a0 a1) sub4)
theorem h37 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b13 s7 :=
  appAll len4 d4 c4 sub15 ((h34 ρ) 4 mem8) (smaller (h18 ρ a0 a1) sub5)
theorem h38 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b14 s8 :=
  (consAll (lamAt d2 c2 (smaller (h35 (SelfintRecursiveTypes.cons s1 ρ) sub2 a0) sub15)) Positive.none)
theorem h39 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b14 s3 :=
  (consAll (lamAt d4 c4 (smaller (h37 (SelfintRecursiveTypes.cons s3 ρ) sub5 a0) sub15)) (consAll (lamAt d5 c5 (smaller (h36 (SelfintRecursiveTypes.cons s4 ρ) sub4 a0) sub15)) Positive.none))
theorem h40 (ρ : Env)  : All tab ρ b15 s4 :=
  (consAll (lamAt d3 c3 (smaller (h38 (SelfintRecursiveTypes.cons s2 ρ) sub7) sub16)) (consAll (lamAt d6 c6 (smaller (h39 (SelfintRecursiveTypes.cons s5 ρ) sub3) sub5)) Positive.none))
theorem h41 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b16 s3 :=
  appAll len6 d6 c6 sub5 ((h40 ρ) 6 mem14) (smaller (h17 ρ a0 a1) sub3)
theorem h42 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b17 s9 :=
  (consAll (lamAt d6 c6 (smaller (h41 (SelfintRecursiveTypes.cons s5 ρ) sub3 a0) sub5)) Positive.none)
theorem h43 (ρ : Env)  : All tab ρ b18 s2 :=
  (consAll (lamAt d7 c7 (smaller (h42 (SelfintRecursiveTypes.cons s6 ρ) sub8) sub10)) Positive.none)
theorem h44 (ρ : Env)  : All tab ρ b19 s8 :=
  appAll len3 d3 c3 sub16 ((h40 ρ) 3 mem15) (smaller (h43 ρ) sub7)
theorem h45 (ρ : Env)  : All tab ρ b20 s7 :=
  appAll len2 d2 c2 sub15 ((h44 ρ) 2 mem13) (smaller (h31 ρ) sub2)
theorem h46 (ρ : Env)  : All tab ρ b21 s7 :=
  botAll ((h45 ρ) 0 mem12)
theorem h47 (ρ : Env)  : All tab ρ b24 s7 :=
  botAll ((h46 ρ) 0 mem12)
end Blc.H45.H45F9692402989698
