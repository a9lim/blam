import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434860086Proof2

set_option Elab.async false
namespace Blc.H44.H44F4846434860086
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h108 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b8 s25 :=
  (consAll (lamAt d33 c33 (smaller (h100 (SelfintRecursiveTypes.cons s26 ρ) sub28 a0) sub16)) Positive.none)
theorem h109 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b8 s31 :=
  (consAll (lamAt d41 c41 (smaller (h101 (SelfintRecursiveTypes.cons s24 ρ) sub20 a0) sub22)) Positive.none)
theorem h110 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b9 s4 :=
  appAll len8 d8 c8 sub24 ((h1 ρ a0) 8 mem21) (smaller (h102 ρ a0) sub25)
theorem h111 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b9 s2 :=
  appAll len11 d11 c11 sub3 ((h2 ρ a0) 11 mem22) (smaller (h103 ρ a0) sub4)
theorem h112 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b9 s2 :=
  appAll len13 d13 c13 sub3 ((h5 ρ a0) 13 mem23) (smaller (h104 ρ a0) sub6)
theorem h113 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b9 s2 :=
  appAll len14 d14 c14 sub3 ((h0 ρ a0) 14 mem24) (smaller (h107 ρ a0) sub27)
theorem h114 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b9 s14 :=
  appAll len18 d18 c18 sub8 ((h7 ρ a0) 18 mem25) (smaller (h105 ρ a0) sub9)
theorem h115 (ρ : Env) (a0 : Fits s16 (ρ 0)) : All tab ρ b9 s17 :=
  appAll len23 d23 c23 sub11 ((h10 ρ a0) 23 mem26) (smaller (h106 ρ a0) sub12)
theorem h116 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b9 s23 :=
  appAll len32 d32 c32 sub16 ((h15 ρ a0) 32 mem27) (smaller (h108 ρ a0) sub17)
theorem h117 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b9 s30 :=
  appAll len40 d40 c40 sub22 ((h21 ρ a0) 40 mem28) (smaller (h109 ρ a0) sub23)
theorem h118 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b10 s2 :=
  appAll len4 d4 c4 sub3 ((h0 ρ a0) 4 mem29) (smaller (h113 ρ a0) sub3)
theorem h119 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b10 s1 :=
  appAll len6 d6 c6 sub47 ((h1 ρ a0) 6 mem30) (smaller (h110 ρ a0) sub24)
theorem h120 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b10 s5 :=
  appAll len10 d10 c10 sub18 ((h2 ρ a0) 10 mem31) (smaller (h111 ρ a0) sub3)
theorem h121 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b10 s5 :=
  appAll len10 d10 c10 sub18 ((h5 ρ a0) 10 mem32) (smaller (h112 ρ a0) sub3)
theorem h122 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b10 s2 :=
  appAll len17 d17 c17 sub3 ((h7 ρ a0) 17 mem33) (smaller (h114 ρ a0) sub8)
theorem h123 (ρ : Env) (a0 : Fits s16 (ρ 0)) : All tab ρ b10 s12 :=
  appAll len21 d21 c21 sub26 ((h10 ρ a0) 21 mem34) (smaller (h115 ρ a0) sub11)
theorem h124 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b10 s5 :=
  appAll len30 d30 c30 sub18 ((h15 ρ a0) 30 mem35) (smaller (h116 ρ a0) sub16)
theorem h125 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b10 s5 :=
  appAll len38 d38 c38 sub18 ((h21 ρ a0) 38 mem36) (smaller (h117 ρ a0) sub22)
theorem h126 (ρ : Env)  : All tab ρ b11 s39 :=
  (consAll (lamAt d3 c3 (smaller (h118 (SelfintRecursiveTypes.cons s1 ρ) sub47) sub3)) (consAll (lamAt d5 c5 (smaller (h119 (SelfintRecursiveTypes.cons s3 ρ) sub1) sub47)) (consAll (lamAt d9 c9 (smaller (h120 (SelfintRecursiveTypes.cons s7 ρ) sub2) sub18)) (consAll (lamAt d12 c12 (smaller (h121 (SelfintRecursiveTypes.cons s9 ρ) sub5) sub18)) (consAll (lamAt d16 c16 (smaller (h122 (SelfintRecursiveTypes.cons s13 ρ) sub7) sub3)) (consAll (lamAt d20 c20 (smaller (h123 (SelfintRecursiveTypes.cons s16 ρ) sub48) sub26)) (consAll (lamAt d29 c29 (smaller (h124 (SelfintRecursiveTypes.cons s22 ρ) sub49) sub18)) (consAll (lamAt d37 c37 (smaller (h125 (SelfintRecursiveTypes.cons s29 ρ) sub50) sub18)) Positive.none))))))))
theorem h127 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s5 :=
  appAll len9 d9 c9 sub18 ((h126 ρ) 9 mem37) (smaller (h63 ρ a0) sub2)
theorem h128 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s5 :=
  appAll len12 d12 c12 sub18 ((h126 ρ) 12 mem38) (smaller (h64 ρ a0) sub5)
theorem h129 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b12 s2 :=
  appAll len16 d16 c16 sub3 ((h126 ρ) 16 mem39) (smaller (h65 ρ a0) sub7)
theorem h130 (ρ : Env) (a0 : Fits s11 (ρ 0)) : All tab ρ b12 s12 :=
  appAll len20 d20 c20 sub26 ((h126 ρ) 20 mem40) (smaller (h66 ρ a0) sub48)
theorem h131 (ρ : Env) (a0 : Fits s21 (ρ 0)) : All tab ρ b12 s5 :=
  appAll len29 d29 c29 sub18 ((h126 ρ) 29 mem41) (smaller (h68 ρ a0) sub49)
theorem h132 (ρ : Env) (a0 : Fits s28 (ρ 0)) : All tab ρ b12 s5 :=
  appAll len37 d37 c37 sub18 ((h126 ρ) 37 mem42) (smaller (h72 ρ a0) sub50)
theorem h133 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b13 s2 :=
  appAll len7 d7 c7 sub3 ((h24 ρ a1) 7 mem43) (smaller (h128 ρ a0) sub18)
theorem h134 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b13 s2 :=
  appAll len7 d7 c7 sub3 ((h25 ρ a1) 7 mem44) (smaller (h127 ρ a0) sub18)
theorem h135 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b13 s2 :=
  appAll len15 d15 c15 sub3 ((h24 ρ a1) 15 mem45) (smaller (h130 ρ a0) sub26)
theorem h136 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b13 s2 :=
  appAll len4 d4 c4 sub3 ((h25 ρ a1) 4 mem46) (smaller (h129 ρ a0) sub3)
theorem h137 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b13 s2 :=
  appAll len7 d7 c7 sub3 ((h24 ρ a1) 7 mem43) (smaller (h131 ρ a0) sub18)
theorem h138 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b13 s2 :=
  appAll len7 d7 c7 sub3 ((h24 ρ a1) 7 mem43) (smaller (h132 ρ a0) sub18)
theorem h139 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b14 s1 :=
  (consAll (lamAt d4 c4 (smaller (h133 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub3)) (consAll (lamAt d14 c14 (smaller (h135 (SelfintRecursiveTypes.cons s11 ρ) sub27 a0) sub3)) (consAll (lamAt d28 c28 (smaller (h137 (SelfintRecursiveTypes.cons s21 ρ) sub29 a0) sub3)) (consAll (lamAt d36 c36 (smaller (h138 (SelfintRecursiveTypes.cons s28 ρ) sub30 a0) sub3)) Positive.none))))
theorem h140 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b14 s4 :=
  (consAll (lamAt d7 c7 (smaller (h134 (SelfintRecursiveTypes.cons s5 ρ) sub18 a0) sub3)) (consAll (lamAt d15 c15 (smaller (h136 (SelfintRecursiveTypes.cons s12 ρ) sub26 a0) sub3)) Positive.none))
theorem h141 (ρ : Env)  : All tab ρ b15 s3 :=
  (consAll (lamAt d6 c6 (smaller (h139 (SelfintRecursiveTypes.cons s4 ρ) sub24) sub47)) (consAll (lamAt d8 c8 (smaller (h140 (SelfintRecursiveTypes.cons s6 ρ) sub25) sub24)) Positive.none))
theorem h142 (ρ : Env)  : All tab ρ b16 s1 :=
  appAll len5 d5 c5 sub47 ((h126 ρ) 5 mem47) (smaller (h141 ρ) sub1)
theorem h143 (ρ : Env)  : All tab ρ b17 s2 :=
  appAll len3 d3 c3 sub3 ((h126 ρ) 3 mem48) (smaller (h142 ρ) sub47)
end Blc.H44.H44F4846434860086
