import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363332110Proof2

set_option Elab.async false
namespace Blc.H44.H44F4846363332110
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h108 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b11 s4 :=
  (consAll (lamAt d9 c9 (smaller (h92 (SelfintRecursiveTypes.cons s8 ρ) sub12 a0) sub4)) (consAll (lamAt d17 c17 (smaller (h100 (SelfintRecursiveTypes.cons s10 ρ) sub15 a0) sub4)) (consAll (lamAt d21 c21 (smaller (h104 (SelfintRecursiveTypes.cons s12 ρ) sub17 a0) sub4)) Positive.none)))
theorem h109 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b11 s4 :=
  (consAll (lamAt d9 c9 (smaller (h94 (SelfintRecursiveTypes.cons s8 ρ) sub12 a0) sub4)) (consAll (lamAt d17 c17 (smaller (h99 (SelfintRecursiveTypes.cons s10 ρ) sub15 a0) sub4)) (consAll (lamAt d21 c21 (smaller (h103 (SelfintRecursiveTypes.cons s12 ρ) sub17 a0) sub4)) Positive.none)))
theorem h110 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b11 s6 :=
  (consAll (lamAt d10 c10 (smaller (h98 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub4)) (consAll (lamAt d11 c11 (smaller (h97 (SelfintRecursiveTypes.cons s4 ρ) sub8 a0) sub24)) (consAll (lamAt d13 c13 (smaller (h96 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub21)) (consAll (lamAt d18 c18 (smaller (h102 (SelfintRecursiveTypes.cons s11 ρ) sub14 a0) sub21)) (consAll (lamAt d22 c22 (smaller (h106 (SelfintRecursiveTypes.cons s13 ρ) sub16 a0) sub21)) Positive.none)))))
theorem h111 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s7 :=
  appAll len4 d4 c4 sub4 ((h1 ρ a0) 4 mem22) (smaller (h107 ρ a0) sub28)
theorem h112 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b12 s7 :=
  appAll len5 d5 c5 sub4 ((h2 ρ a0) 5 mem23) (smaller (h108 ρ a0) sub8)
theorem h113 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s14 :=
  appAll len7 d7 c7 sub24 ((h3 ρ a0) 7 mem24) (smaller (h110 ρ a0) sub21)
theorem h114 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b12 s14 :=
  botAll ((h4 ρ a0) 0 mem25)
theorem h115 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b12 s14 :=
  appAll len11 d11 c11 sub24 ((h5 ρ a0) 11 mem26) (smaller (h109 ρ a0) sub8)
theorem h116 (ρ : Env)  : All tab ρ b13 s1 :=
  (consAll (lamAt d3 c3 (smaller (h111 (SelfintRecursiveTypes.cons s2 ρ) sub29) sub4)) (consAll (lamAt d4 c4 (smaller (h112 (SelfintRecursiveTypes.cons s3 ρ) sub28) sub4)) (consAll (lamAt d6 c6 (smaller (h113 (SelfintRecursiveTypes.cons s5 ρ) sub22) sub25)) (consAll (lamAt d7 c7 (smaller (h115 (SelfintRecursiveTypes.cons s6 ρ) sub21) sub24)) (consAll (lamAt d8 c8 (smaller (h114 (SelfintRecursiveTypes.cons s7 ρ) sub4) sub24)) (consAll (lamAt d14 c14 (smaller (h113 (SelfintRecursiveTypes.cons s5 ρ) sub22) sub26)) (consAll (lamAt d16 c16 (smaller (h113 (SelfintRecursiveTypes.cons s5 ρ) sub22) sub24)) Positive.none)))))))
theorem h117 (ρ : Env)  : All tab ρ b14 s7 :=
  appAll len2 d2 c2 sub4 ((h7 ρ) 2 mem27) (smaller (h116 ρ) sub0)
end Blc.H44.H44F4846363332110
