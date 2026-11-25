import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363332110Proof1

set_option Elab.async false
namespace Blc.H44.H44F4846363332110
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h72 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h19 ρ a2) 8 mem10) (smaller (h44 ρ a0 a1) sub4)
theorem h73 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h19 ρ a2) 8 mem10) (smaller (h45 ρ a0 a1) sub4)
theorem h74 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h24 ρ a2) 8 mem10) (smaller (h43 ρ a0 a1) sub4)
theorem h75 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h24 ρ a2) 8 mem10) (smaller (h44 ρ a0 a1) sub4)
theorem h76 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h24 ρ a2) 8 mem10) (smaller (h45 ρ a0 a1) sub4)
theorem h77 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h52 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h47 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h65 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h52 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h52 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h78 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h51 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h48 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h64 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h51 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h51 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h79 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b9 s9 :=
  (consAll (lamAt d12 c12 (smaller (h49 (SelfintRecursiveTypes.cons s0 ρ) sub27 a0 a1) sub21)) Positive.none)
theorem h80 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b9 s9 :=
  (consAll (lamAt d12 c12 (smaller (h50 (SelfintRecursiveTypes.cons s0 ρ) sub27 a0 a1) sub21)) Positive.none)
theorem h81 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b9 s9 :=
  (consAll (lamAt d12 c12 (smaller (h53 (SelfintRecursiveTypes.cons s0 ρ) sub27 a0 a1) sub21)) Positive.none)
theorem h82 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b9 s9 :=
  (consAll (lamAt d12 c12 (smaller (h54 (SelfintRecursiveTypes.cons s0 ρ) sub27 a0 a1) sub21)) Positive.none)
theorem h83 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h55 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h56 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h63 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h55 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h55 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h84 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h60 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h57 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h66 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h60 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h60 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h85 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h61 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h58 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h67 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h61 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h61 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h86 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h62 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h59 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h68 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h62 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h62 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h87 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b9 s9 :=
  (consAll (lamAt d12 c12 (smaller (h69 (SelfintRecursiveTypes.cons s0 ρ) sub27 a0 a1) sub21)) Positive.none)
theorem h88 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b9 s9 :=
  (consAll (lamAt d12 c12 (smaller (h70 (SelfintRecursiveTypes.cons s0 ρ) sub27 a0 a1) sub21)) Positive.none)
theorem h89 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h72 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h71 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h73 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h72 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h72 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h90 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s5 :=
  (consAll (lamAt d6 c6 (smaller (h75 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h74 (SelfintRecursiveTypes.cons s6 ρ) sub21 a0 a1) sub24)) (consAll (lamAt d8 c8 (smaller (h76 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub24)) (consAll (lamAt d14 c14 (smaller (h75 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h75 (SelfintRecursiveTypes.cons s5 ρ) sub22 a0 a1) sub24)) Positive.none)))))
theorem h91 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len6 d6 c6 sub4 ((h8 ρ a1) 6 mem16) (smaller (h77 ρ a0 a1) sub22)
theorem h92 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len10 d10 c10 sub4 ((h10 ρ a1) 10 mem17) (smaller (h79 ρ a0 a1) sub10)
theorem h93 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len6 d6 c6 sub4 ((h8 ρ a1) 6 mem16) (smaller (h78 ρ a0 a1) sub22)
theorem h94 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len10 d10 c10 sub4 ((h12 ρ a1) 10 mem17) (smaller (h80 ρ a0 a1) sub10)
theorem h95 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s6 :=
  appAll len14 d14 c14 sub21 ((h8 ρ a1) 14 mem18) (smaller (h78 ρ a0 a1) sub22)
theorem h96 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s6 :=
  appAll len14 d14 c14 sub21 ((h14 ρ a1) 14 mem19) (smaller (h85 ρ a0 a1) sub22)
theorem h97 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s14 :=
  appAll len16 d16 c16 sub24 ((h14 ρ a1) 16 mem20) (smaller (h86 ρ a0 a1) sub22)
theorem h98 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len6 d6 c6 sub4 ((h14 ρ a1) 6 mem21) (smaller (h85 ρ a0 a1) sub22)
theorem h99 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len10 d10 c10 sub4 ((h12 ρ a1) 10 mem17) (smaller (h81 ρ a0 a1) sub10)
theorem h100 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len10 d10 c10 sub4 ((h10 ρ a1) 10 mem17) (smaller (h82 ρ a0 a1) sub10)
theorem h101 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s6 :=
  appAll len14 d14 c14 sub21 ((h8 ρ a1) 14 mem18) (smaller (h83 ρ a0 a1) sub22)
theorem h102 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s6 :=
  appAll len14 d14 c14 sub21 ((h14 ρ a1) 14 mem19) (smaller (h84 ρ a0 a1) sub22)
theorem h103 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len10 d10 c10 sub4 ((h12 ρ a1) 10 mem17) (smaller (h87 ρ a0 a1) sub10)
theorem h104 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b10 s7 :=
  appAll len10 d10 c10 sub4 ((h10 ρ a1) 10 mem17) (smaller (h88 ρ a0 a1) sub10)
theorem h105 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s6 :=
  appAll len14 d14 c14 sub21 ((h8 ρ a1) 14 mem18) (smaller (h89 ρ a0 a1) sub22)
theorem h106 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s6 :=
  appAll len14 d14 c14 sub21 ((h14 ρ a1) 14 mem19) (smaller (h90 ρ a0 a1) sub22)
theorem h107 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b11 s3 :=
  (consAll (lamAt d5 c5 (smaller (h91 (SelfintRecursiveTypes.cons s4 ρ) sub8 a0) sub4)) (consAll (lamAt d10 c10 (smaller (h93 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub4)) (consAll (lamAt d13 c13 (smaller (h95 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0) sub21)) (consAll (lamAt d18 c18 (smaller (h101 (SelfintRecursiveTypes.cons s11 ρ) sub14 a0) sub21)) (consAll (lamAt d22 c22 (smaller (h105 (SelfintRecursiveTypes.cons s13 ρ) sub16 a0) sub21)) Positive.none)))))
end Blc.H44.H44F4846363332110
