import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof7

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h288 (ρ : Env) (a0 : Fits s31 (ρ 0)) : All tab ρ b133 s9 :=
  appAll len38 d38 c38 sub13 ((h102 ρ a0) 38 mem102) (smaller (h286 ρ) sub120)
theorem h289 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b133 s33 :=
  appAll len43 d43 c43 sub40 ((h103 ρ a0) 43 mem103) (smaller (h286 ρ) sub121)
theorem h290 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b133 s9 :=
  botAll ((h104 ρ a0) 0 mem15)
theorem h291 (ρ : Env) (a0 : Fits s8 (ρ 0)) : All tab ρ b134 s9 :=
  appAll len10 d10 c10 sub13 ((h100 ρ) 10 mem104) (smaller (h287 ρ a0) sub13)
theorem h292 (ρ : Env) (a0 : Fits s31 (ρ 0)) : All tab ρ b134 s17 :=
  appAll len36 d36 c36 sub17 ((h100 ρ) 36 mem105) (smaller (h288 ρ a0) sub13)
theorem h293 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b134 s9 :=
  appAll len40 d40 c40 sub13 ((h100 ρ) 40 mem106) (smaller (h289 ρ a0) sub40)
theorem h294 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b134 s9 :=
  appAll len10 d10 c10 sub13 ((h100 ρ) 10 mem104) (smaller (h290 ρ a0) sub13)
theorem h295 (ρ : Env)  : All tab ρ b135 s1 :=
  (consAll (lamAt d9 c9 (smaller (h291 (SelfintRecursiveTypes.cons s8 ρ) sub55) sub13)) (consAll (lamAt d10 c10 (smaller (h294 (SelfintRecursiveTypes.cons s9 ρ) sub13) sub13)) (consAll (lamAt d14 c14 (smaller (h293 (SelfintRecursiveTypes.cons s13 ρ) sub12) sub13)) (consAll (lamAt d37 c37 (smaller (h292 (SelfintRecursiveTypes.cons s31 ρ) sub56) sub17)) Positive.none))))
theorem h296 (ρ : Env)  : All tab ρ b136 s9 :=
  appAll len2 d2 c2 sub13 ((h77 ρ) 2 mem107) (smaller (h295 ρ) sub45)
theorem h297 (ρ : Env)  : All tab ρ b205 s9 :=
  botAll ((h296 ρ) 0 mem15)
theorem h298 (ρ : Env)  : All tab ρ b215 s9 :=
  botAll ((h297 ρ) 0 mem15)
end Blc.H45.H45F9692402711770
