import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402989098Proof1

set_option Elab.async false
namespace Blc.H45.H45F9692402989098
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h72 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len11 d11 c11 sub4 ((h11 ρ a2) 11 mem39) (smaller (h39 ρ a0 a1) sub4)
theorem h73 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s12 :=
  (consAll (lamAt d4 c4 (smaller (h40 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub4)) Positive.none)
theorem h74 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b10 s13 :=
  (consAll (lamAt d8 c8 (smaller (h41 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub6)) Positive.none)
theorem h75 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s5 :=
  (consAll (lamAt d4 c4 (smaller (h71 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub4)) (consAll (lamAt d6 c6 (smaller (h45 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h42 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub4)) (consAll (lamAt d11 c11 (smaller (h53 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub25)) (consAll (lamAt d13 c13 (smaller (h55 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h62 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub27)) (consAll (lamAt d17 c17 (smaller (h53 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub23)) (consAll (lamAt d18 c18 (smaller (h45 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub28)) (consAll (lamAt d19 c19 (smaller (h51 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub6)) (consAll (lamAt d24 c24 (smaller (h55 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub23)) (consAll (lamAt d25 c25 (smaller (h61 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub2)) (consAll (lamAt d26 c26 (smaller (h62 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub23)) (consAll (lamAt d27 c27 (smaller (h68 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub5)) (consAll (lamAt d28 c28 (smaller (h45 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub23)) Positive.none))))))))))))))
theorem h76 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s14 :=
  (consAll (lamAt d4 c4 (smaller (h58 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub4)) (consAll (lamAt d6 c6 (smaller (h46 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub4)) (consAll (lamAt d7 c7 (smaller (h43 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub4)) (consAll (lamAt d11 c11 (smaller (h56 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub4)) Positive.none))))
theorem h77 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s16 :=
  (consAll (lamAt d7 c7 (smaller (h44 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub4)) Positive.none)
theorem h78 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b10 s18 :=
  (consAll (lamAt d19 c19 (smaller (h47 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub6)) Positive.none)
theorem h79 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s5 :=
  (consAll (lamAt d4 c4 (smaller (h72 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub4)) (consAll (lamAt d6 c6 (smaller (h50 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub25)) (consAll (lamAt d7 c7 (smaller (h48 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub4)) (consAll (lamAt d11 c11 (smaller (h54 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub25)) (consAll (lamAt d13 c13 (smaller (h57 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub26)) (consAll (lamAt d16 c16 (smaller (h65 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub27)) (consAll (lamAt d17 c17 (smaller (h54 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub23)) (consAll (lamAt d18 c18 (smaller (h50 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub28)) (consAll (lamAt d19 c19 (smaller (h52 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub6)) (consAll (lamAt d24 c24 (smaller (h57 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub23)) (consAll (lamAt d25 c25 (smaller (h63 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub2)) (consAll (lamAt d26 c26 (smaller (h65 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub23)) (consAll (lamAt d27 c27 (smaller (h69 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub5)) (consAll (lamAt d28 c28 (smaller (h50 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub23)) Positive.none))))))))))))))
theorem h80 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s19 :=
  (consAll (lamAt d4 c4 (smaller (h70 (SelfintRecursiveTypes.cons s3 ρ) sub2 a0 a1) sub4)) (consAll (lamAt d6 c6 (smaller (h60 (SelfintRecursiveTypes.cons s5 ρ) sub6 a0 a1) sub4)) (consAll (lamAt d19 c19 (smaller (h49 (SelfintRecursiveTypes.cons s6 ρ) sub5 a0 a1) sub6)) (consAll (lamAt d25 c25 (smaller (h59 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub2)) (consAll (lamAt d27 c27 (smaller (h66 (SelfintRecursiveTypes.cons s9 ρ) sub4 a0 a1) sub5)) Positive.none)))))
theorem h81 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b11 s3 :=
  (consAll (lamAt d5 c5 (smaller (h73 (SelfintRecursiveTypes.cons s4 ρ) sub12 a0) sub29)) (consAll (lamAt d10 c10 (smaller (h75 (SelfintRecursiveTypes.cons s8 ρ) sub13 a0) sub6)) (consAll (lamAt d12 c12 (smaller (h76 (SelfintRecursiveTypes.cons s7 ρ) sub14 a0) sub19)) Positive.none)))
theorem h82 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b11 s4 :=
  (consAll (lamAt d9 c9 (smaller (h74 (SelfintRecursiveTypes.cons s7 ρ) sub14 a0) sub18)) Positive.none)
theorem h83 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b11 s6 :=
  (consAll (lamAt d15 c15 (smaller (h77 (SelfintRecursiveTypes.cons s10 ρ) sub15 a0) sub30)) (consAll (lamAt d21 c21 (smaller (h79 (SelfintRecursiveTypes.cons s11 ρ) sub16 a0) sub6)) (consAll (lamAt d22 c22 (smaller (h80 (SelfintRecursiveTypes.cons s7 ρ) sub14 a0) sub21)) Positive.none)))
theorem h84 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b11 s10 :=
  (consAll (lamAt d20 c20 (smaller (h78 (SelfintRecursiveTypes.cons s7 ρ) sub14 a0) sub20)) Positive.none)
theorem h85 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s9 :=
  appAll len4 d4 c4 sub4 ((h1 ρ a0) 4 mem43) (smaller (h81 ρ a0) sub2)
theorem h86 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b12 s12 :=
  appAll len5 d5 c5 sub29 ((h2 ρ a0) 5 mem44) (smaller (h82 ρ a0) sub12)
theorem h87 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s9 :=
  appAll len7 d7 c7 sub4 ((h3 ρ a0) 7 mem45) (smaller (h83 ρ a0) sub5)
theorem h88 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b12 s9 :=
  botAll ((h4 ρ a0) 0 mem46)
theorem h89 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b12 s16 :=
  appAll len15 d15 c15 sub30 ((h5 ρ a0) 15 mem47) (smaller (h84 ρ a0) sub15)
theorem h90 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b13 s9 :=
  botAll ((h85 ρ a0) 0 mem46)
theorem h91 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b13 s9 :=
  appAll len4 d4 c4 sub4 ((h86 ρ a0) 4 mem43) (smaller (h2 ρ a0) sub2)
theorem h92 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b13 s9 :=
  botAll ((h87 ρ a0) 0 mem46)
theorem h93 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b13 s17 :=
  botAll ((h88 ρ a0) 0 mem46)
theorem h94 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b13 s9 :=
  appAll len7 d7 c7 sub4 ((h89 ρ a0) 7 mem45) (smaller (h5 ρ a0) sub5)
theorem h95 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b13 s9 :=
  botAll ((h88 ρ a0) 0 mem46)
theorem h96 (ρ : Env)  : All tab ρ b14 s1 :=
  (consAll (lamAt d3 c3 (smaller (h90 (SelfintRecursiveTypes.cons s2 ρ) sub8) sub4)) (consAll (lamAt d4 c4 (smaller (h91 (SelfintRecursiveTypes.cons s3 ρ) sub2) sub4)) (consAll (lamAt d6 c6 (smaller (h92 (SelfintRecursiveTypes.cons s5 ρ) sub6) sub4)) (consAll (lamAt d7 c7 (smaller (h94 (SelfintRecursiveTypes.cons s6 ρ) sub5) sub4)) (consAll (lamAt d11 c11 (smaller (h93 (SelfintRecursiveTypes.cons s9 ρ) sub4) sub25)) (consAll (lamAt d17 c17 (smaller (h93 (SelfintRecursiveTypes.cons s9 ρ) sub4) sub23)) (consAll (lamAt d23 c23 (smaller (h93 (SelfintRecursiveTypes.cons s9 ρ) sub4) sub28)) (consAll (lamAt d25 c25 (smaller (h93 (SelfintRecursiveTypes.cons s9 ρ) sub4) sub26)) (consAll (lamAt d27 c27 (smaller (h93 (SelfintRecursiveTypes.cons s9 ρ) sub4) sub27)) Positive.none)))))))))
theorem h97 (ρ : Env)  : All tab ρ b15 s9 :=
  appAll len2 d2 c2 sub4 ((h8 ρ) 2 mem48) (smaller (h96 ρ) sub0)
theorem h98 (ρ : Env)  : All tab ρ b16 s9 :=
  botAll ((h97 ρ) 0 mem46)
theorem h99 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b30 s24 :=
  botAll ((h98 ρ) 0 mem46)
end Blc.H45.H45F9692402989098
