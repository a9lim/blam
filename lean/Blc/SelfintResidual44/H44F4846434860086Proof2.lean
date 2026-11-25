import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434860086Proof1

set_option Elab.async false
namespace Blc.H44.H44F4846434860086
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h72 (ρ : Env) (a0 : Fits s28 (ρ 0)) : All tab ρ b4 s29 :=
  (consAll (lamAt d17 c17 (smaller (h62 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0) sub3)) (consAll (lamAt d38 c38 (smaller (h59 (SelfintRecursiveTypes.cons s30 ρ) sub22 a0) sub18)) (consAll (lamAt d40 c40 (smaller (h60 (SelfintRecursiveTypes.cons s31 ρ) sub23 a0) sub22)) Positive.none)))
theorem h73 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b4 s28 :=
  (consAll (lamAt d10 c10 (smaller (h61 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub18)) (consAll (lamAt d17 c17 (smaller (h58 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0) sub3)) Positive.none))
theorem h74 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a2 : Fits s16 (ρ 2)) : All tab ρ b5 s10 :=
  appAll len25 d25 c25 sub6 ((h37 ρ a2) 25 mem16) (smaller (h67 ρ a0) sub13)
theorem h75 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a2 : Fits s1 (ρ 2)) : All tab ρ b5 s2 :=
  appAll len28 d28 c28 sub3 ((h38 ρ a2) 28 mem17) (smaller (h69 ρ a0) sub29)
theorem h76 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a2 : Fits s22 (ρ 2)) : All tab ρ b5 s5 :=
  appAll len35 d35 c35 sub18 ((h39 ρ a2) 35 mem18) (smaller (h70 ρ a0) sub19)
theorem h77 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a2 : Fits s13 (ρ 2)) : All tab ρ b5 s2 :=
  appAll len17 d17 c17 sub3 ((h40 ρ a2) 17 mem3) (smaller (h71 ρ a0) sub8)
theorem h78 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a2 : Fits s1 (ρ 2)) : All tab ρ b5 s2 :=
  appAll len36 d36 c36 sub3 ((h38 ρ a2) 36 mem19) (smaller (h73 ρ a0) sub30)
theorem h79 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a2 : Fits s29 (ρ 2)) : All tab ρ b5 s2 :=
  appAll len17 d17 c17 sub3 ((h41 ρ a2) 17 mem3) (smaller (h71 ρ a0) sub8)
theorem h80 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b6 s5 :=
  botAll ((h26 ρ a1) 0 mem11)
theorem h81 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b6 s5 :=
  botAll ((h26 ρ a1) 0 mem11)
theorem h82 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s9 (ρ 2)) : All tab ρ b6 s5 :=
  appAll len2 d2 c2 sub18 ((h27 ρ a1) 2 mem0) Positive.none
theorem h83 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b6 s5 :=
  appAll len2 d2 c2 sub18 ((h27 ρ a1) 2 mem0) Positive.none
theorem h84 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s13 (ρ 2)) : All tab ρ b6 s2 :=
  appAll len4 d4 c4 sub3 ((h28 ρ a1) 4 mem2) (smaller (h77 ρ a0 a2) sub3)
theorem h85 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s16 (ρ 2)) : All tab ρ b6 s12 :=
  appAll len22 d22 c22 sub26 ((h30 ρ a1) 22 mem5) (smaller (h74 ρ a0 a2) sub6)
theorem h86 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b6 s2 :=
  appAll len4 d4 c4 sub3 ((h28 ρ a1) 4 mem2) (smaller (h75 ρ a0 a2) sub3)
theorem h87 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b6 s5 :=
  appAll len2 d2 c2 sub18 ((h27 ρ a1) 2 mem0) Positive.none
theorem h88 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s26 (ρ 1)) (a2 : Fits s22 (ρ 2)) : All tab ρ b6 s5 :=
  appAll len34 d34 c34 sub18 ((h32 ρ a1) 34 mem20) (smaller (h76 ρ a0 a2) sub18)
theorem h89 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b6 s2 :=
  appAll len4 d4 c4 sub3 ((h28 ρ a1) 4 mem2) (smaller (h78 ρ a0 a2) sub3)
theorem h90 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s24 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b6 s5 :=
  appAll len10 d10 c10 sub18 ((h34 ρ a1) 10 mem13) (smaller (h79 ρ a0 a2) sub3)
theorem h91 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b7 s2 :=
  (consAll (lamAt d2 c2 (smaller (h80 (SelfintRecursiveTypes.cons s0 ρ) sub46 a0 a1) sub18)) Positive.none)
theorem h92 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b7 s2 :=
  (consAll (lamAt d2 c2 (smaller (h81 (SelfintRecursiveTypes.cons s0 ρ) sub46 a0 a1) sub18)) Positive.none)
theorem h93 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b7 s2 :=
  (consAll (lamAt d2 c2 (smaller (h82 (SelfintRecursiveTypes.cons s0 ρ) sub46 a0 a1) sub18)) Positive.none)
theorem h94 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b7 s2 :=
  (consAll (lamAt d2 c2 (smaller (h83 (SelfintRecursiveTypes.cons s0 ρ) sub46 a0 a1) sub18)) Positive.none)
theorem h95 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b7 s14 :=
  (consAll (lamAt d17 c17 (smaller (h84 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0 a1) sub3)) Positive.none)
theorem h96 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s16 (ρ 1)) : All tab ρ b7 s17 :=
  (consAll (lamAt d22 c22 (smaller (h85 (SelfintRecursiveTypes.cons s10 ρ) sub6 a0 a1) sub26)) Positive.none)
theorem h97 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b7 s12 :=
  (consAll (lamAt d4 c4 (smaller (h86 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0 a1) sub3)) (consAll (lamAt d17 c17 (smaller (h89 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0 a1) sub3)) Positive.none))
theorem h98 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b7 s10 :=
  (consAll (lamAt d4 c4 (smaller (h86 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0 a1) sub3)) Positive.none)
theorem h99 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b7 s2 :=
  (consAll (lamAt d2 c2 (smaller (h87 (SelfintRecursiveTypes.cons s0 ρ) sub46 a0 a1) sub18)) Positive.none)
theorem h100 (ρ : Env) (a0 : Fits s26 (ρ 0)) (a1 : Fits s22 (ρ 1)) : All tab ρ b7 s23 :=
  (consAll (lamAt d31 c31 (smaller (h88 (SelfintRecursiveTypes.cons s24 ρ) sub20 a0 a1) sub18)) Positive.none)
theorem h101 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s29 (ρ 1)) : All tab ρ b7 s30 :=
  (consAll (lamAt d39 c39 (smaller (h90 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0 a1) sub18)) Positive.none)
theorem h102 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b8 s6 :=
  (consAll (lamAt d4 c4 (smaller (h94 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub3)) (consAll (lamAt d7 c7 (smaller (h91 (SelfintRecursiveTypes.cons s5 ρ) sub18 a0) sub3)) Positive.none))
theorem h103 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b8 s8 :=
  (consAll (lamAt d7 c7 (smaller (h92 (SelfintRecursiveTypes.cons s5 ρ) sub18 a0) sub3)) Positive.none)
theorem h104 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b8 s10 :=
  (consAll (lamAt d4 c4 (smaller (h93 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub3)) Positive.none)
theorem h105 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b8 s15 :=
  (consAll (lamAt d19 c19 (smaller (h95 (SelfintRecursiveTypes.cons s10 ρ) sub6 a0) sub8)) Positive.none)
theorem h106 (ρ : Env) (a0 : Fits s16 (ρ 0)) : All tab ρ b8 s18 :=
  (consAll (lamAt d24 c24 (smaller (h96 (SelfintRecursiveTypes.cons s17 ρ) sub11 a0) sub11)) Positive.none)
theorem h107 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b8 s11 :=
  (consAll (lamAt d4 c4 (smaller (h99 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub3)) (consAll (lamAt d22 c22 (smaller (h97 (SelfintRecursiveTypes.cons s10 ρ) sub6 a0) sub26)) (consAll (lamAt d27 c27 (smaller (h98 (SelfintRecursiveTypes.cons s10 ρ) sub6 a0) sub6)) Positive.none)))
end Blc.H44.H44F4846434860086
