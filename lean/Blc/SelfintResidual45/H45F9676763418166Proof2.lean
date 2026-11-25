import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9676763418166Proof1

set_option Elab.async false
namespace Blc.H45.H45F9676763418166
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h72 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h60 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h73 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s19 :=
  (consAll (lamAt d16 c16 (smaller (h61 (SelfintRecursiveTypes.cons s12 ρ) sub20 a0 a1) sub6)) Positive.none)
theorem h74 (ρ : Env) (a0 : Fits s15 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h63 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h75 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h64 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h76 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h65 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h77 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h66 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h78 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b11 s5 :=
  (consAll (lamAt d7 c7 (smaller (h67 (SelfintRecursiveTypes.cons s6 ρ) sub12 a0) sub8)) (consAll (lamAt d12 c12 (smaller (h69 (SelfintRecursiveTypes.cons s10 ρ) sub13 a0) sub25)) (consAll (lamAt d15 c15 (smaller (h72 (SelfintRecursiveTypes.cons s9 ρ) sub16 a0) sub4)) (consAll (lamAt d22 c22 (smaller (h75 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0) sub4)) Positive.none))))
theorem h79 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b11 s6 :=
  (consAll (lamAt d10 c10 (smaller (h68 (SelfintRecursiveTypes.cons s8 ρ) sub14 a0) sub4)) (consAll (lamAt d13 c13 (smaller (h71 (SelfintRecursiveTypes.cons s11 ρ) sub17 a0) sub4)) (consAll (lamAt d21 c21 (smaller (h74 (SelfintRecursiveTypes.cons s15 ρ) sub18 a0) sub4)) Positive.none)))
theorem h80 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b11 s3 :=
  (consAll (lamAt d13 c13 (smaller (h70 (SelfintRecursiveTypes.cons s11 ρ) sub17 a0) sub4)) (consAll (lamAt d18 c18 (smaller (h73 (SelfintRecursiveTypes.cons s14 ρ) sub19 a0) sub26)) (consAll (lamAt d26 c26 (smaller (h77 (SelfintRecursiveTypes.cons s12 ρ) sub20 a0) sub4)) Positive.none)))
theorem h81 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b11 s14 :=
  (consAll (lamAt d25 c25 (smaller (h76 (SelfintRecursiveTypes.cons s17 ρ) sub21 a0) sub4)) Positive.none)
theorem h82 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s16 :=
  appAll len4 d4 c4 sub6 ((h1 ρ a0) 4 mem27) (smaller (h80 ρ a0) sub15)
theorem h83 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b12 s2 :=
  appAll len6 d6 c6 sub8 ((h2 ρ a0) 6 mem28) (smaller (h78 ρ a0) sub30)
theorem h84 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s2 :=
  appAll len7 d7 c7 sub8 ((h3 ρ a0) 7 mem29) (smaller (h79 ρ a0) sub12)
theorem h85 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b12 s16 :=
  appAll len9 d9 c9 sub6 ((h4 ρ a0) 9 mem9) Positive.none
theorem h86 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b12 s19 :=
  appAll len18 d18 c18 sub26 ((h5 ρ a0) 18 mem30) (smaller (h81 ρ a0) sub19)
theorem h87 (ρ : Env) (a0 : Fits s16 (ρ 0)) : All tab ρ b12 s16 :=
  botAll ((h6 ρ a0) 0 mem24)
theorem h88 (ρ : Env)  : All tab ρ b13 s1 :=
  (consAll (lamAt d3 c3 (smaller (h82 (SelfintRecursiveTypes.cons s2 ρ) sub8) sub6)) (consAll (lamAt d5 c5 (smaller (h83 (SelfintRecursiveTypes.cons s4 ρ) sub31) sub8)) (consAll (lamAt d6 c6 (smaller (h84 (SelfintRecursiveTypes.cons s5 ρ) sub30) sub8)) (consAll (lamAt d8 c8 (smaller (h85 (SelfintRecursiveTypes.cons s7 ρ) sub4) sub6)) (consAll (lamAt d17 c17 (smaller (h86 (SelfintRecursiveTypes.cons s13 ρ) sub24) sub26)) (consAll (lamAt d23 c23 (smaller (h87 (SelfintRecursiveTypes.cons s16 ρ) sub6) sub6)) Positive.none))))))
theorem h89 (ρ : Env)  : All tab ρ b14 s16 :=
  appAll len2 d2 c2 sub6 ((h9 ρ) 2 mem31) (smaller (h88 ρ) sub0)
theorem h90 (ρ : Env)  : All tab ρ b17 s16 :=
  botAll ((h89 ρ) 0 mem24)
theorem h91 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b34 s28 :=
  botAll ((h90 ρ) 0 mem24)
end Blc.H45.H45F9676763418166
