import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363331614Proof0

set_option Elab.async false
namespace Blc.H44.H44F4846363331614
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b8 s1 :=
  appAll len11 d11 c11 sub0 ((h6 ρ a0) 11 mem3) Positive.none
theorem h37 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len19 d19 c19 sub4 ((h9 ρ a0) 19 mem8) Positive.none
theorem h38 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len19 d19 c19 sub4 ((h9 ρ a0) 19 mem8) Positive.none
theorem h39 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b8 s5 :=
  appAll len19 d19 c19 sub4 ((h9 ρ a0) 19 mem8) Positive.none
theorem h40 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b8 s10 :=
  appAll len20 d20 c20 sub9 ((h10 ρ a0) 20 mem9) Positive.none
theorem h41 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s11 :=
  appAll len5 d5 c5 sub15 ((h15 ρ a2) 5 mem10) (smaller (h26 ρ a0 a1) sub14)
theorem h42 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s2 :=
  appAll len8 d8 c8 sub14 ((h15 ρ a2) 8 mem11) (smaller (h27 ρ a0 a1) sub4)
theorem h43 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len10 d10 c10 sub4 ((h16 ρ a2) 10 mem12) (smaller (h29 ρ a0 a1) sub6)
theorem h44 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len2 d2 c2 sub4 ((h15 ρ a2) 2 mem0) (smaller (h28 ρ a0 a1) sub0)
theorem h45 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len2 d2 c2 sub4 ((h15 ρ a2) 2 mem0) (smaller (h30 ρ a0 a1) sub0)
theorem h46 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s2 :=
  appAll len8 d8 c8 sub14 ((h15 ρ a2) 8 mem11) (smaller (h31 ρ a0 a1) sub4)
theorem h47 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s11 :=
  appAll len5 d5 c5 sub15 ((h15 ρ a2) 5 mem10) (smaller (h32 ρ a0 a1) sub14)
theorem h48 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len14 d14 c14 sub4 ((h16 ρ a2) 14 mem13) (smaller (h33 ρ a0 a1) sub3)
theorem h49 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len3 d3 c3 sub4 ((h15 ρ a2) 3 mem14) (smaller (h26 ρ a0 a1) sub14)
theorem h50 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len3 d3 c3 sub4 ((h15 ρ a2) 3 mem14) (smaller (h32 ρ a0 a1) sub14)
theorem h51 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len3 d3 c3 sub4 ((h15 ρ a2) 3 mem14) (smaller (h34 ρ a0 a1) sub14)
theorem h52 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s2 :=
  appAll len8 d8 c8 sub14 ((h15 ρ a2) 8 mem11) (smaller (h35 ρ a0 a1) sub4)
theorem h53 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len2 d2 c2 sub4 ((h15 ρ a2) 2 mem0) (smaller (h36 ρ a0 a1) sub0)
theorem h54 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s11 :=
  appAll len5 d5 c5 sub15 ((h15 ρ a2) 5 mem10) (smaller (h34 ρ a0 a1) sub14)
theorem h55 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len17 d17 c17 sub4 ((h16 ρ a2) 17 mem15) (smaller (h40 ρ a0 a1) sub9)
theorem h56 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len18 d18 c18 sub4 ((h15 ρ a2) 18 mem16) (smaller (h37 ρ a0 a1) sub4)
theorem h57 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len18 d18 c18 sub4 ((h15 ρ a2) 18 mem16) (smaller (h38 ρ a0 a1) sub4)
theorem h58 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len18 d18 c18 sub4 ((h15 ρ a2) 18 mem16) (smaller (h39 ρ a0 a1) sub4)
theorem h59 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b10 s2 :=
  (consAll (lamAt d4 c4 (smaller (h41 (SelfintRecursiveTypes.cons s3 ρ) sub3 a0 a1) sub15)) (consAll (lamAt d7 c7 (smaller (h42 (SelfintRecursiveTypes.cons s4 ρ) sub5 a0 a1) sub14)) (consAll (lamAt d10 c10 (smaller (h44 (SelfintRecursiveTypes.cons s7 ρ) sub6 a0 a1) sub4)) (consAll (lamAt d14 c14 (smaller (h49 (SelfintRecursiveTypes.cons s3 ρ) sub3 a0 a1) sub4)) (consAll (lamAt d17 c17 (smaller (h57 (SelfintRecursiveTypes.cons s10 ρ) sub9 a0 a1) sub4)) Positive.none)))))
theorem h60 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s4 :=
  (consAll (lamAt d9 c9 (smaller (h43 (SelfintRecursiveTypes.cons s6 ρ) sub7 a0 a1) sub4)) (consAll (lamAt d13 c13 (smaller (h48 (SelfintRecursiveTypes.cons s8 ρ) sub8 a0 a1) sub4)) (consAll (lamAt d16 c16 (smaller (h55 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0 a1) sub4)) Positive.none)))
theorem h61 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b10 s2 :=
  (consAll (lamAt d4 c4 (smaller (h47 (SelfintRecursiveTypes.cons s3 ρ) sub3 a0 a1) sub15)) (consAll (lamAt d7 c7 (smaller (h46 (SelfintRecursiveTypes.cons s4 ρ) sub5 a0 a1) sub14)) (consAll (lamAt d10 c10 (smaller (h45 (SelfintRecursiveTypes.cons s7 ρ) sub6 a0 a1) sub4)) (consAll (lamAt d14 c14 (smaller (h50 (SelfintRecursiveTypes.cons s3 ρ) sub3 a0 a1) sub4)) (consAll (lamAt d17 c17 (smaller (h58 (SelfintRecursiveTypes.cons s10 ρ) sub9 a0 a1) sub4)) Positive.none)))))
theorem h62 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b10 s2 :=
  (consAll (lamAt d4 c4 (smaller (h54 (SelfintRecursiveTypes.cons s3 ρ) sub3 a0 a1) sub15)) (consAll (lamAt d7 c7 (smaller (h52 (SelfintRecursiveTypes.cons s4 ρ) sub5 a0 a1) sub14)) (consAll (lamAt d10 c10 (smaller (h53 (SelfintRecursiveTypes.cons s7 ρ) sub6 a0 a1) sub4)) (consAll (lamAt d14 c14 (smaller (h51 (SelfintRecursiveTypes.cons s3 ρ) sub3 a0 a1) sub4)) (consAll (lamAt d17 c17 (smaller (h56 (SelfintRecursiveTypes.cons s10 ρ) sub9 a0 a1) sub4)) Positive.none)))))
theorem h63 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b11 s5 :=
  appAll len3 d3 c3 sub4 ((h13 ρ a1) 3 mem17) (smaller (h59 ρ a0 a1) sub14)
theorem h64 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b11 s2 :=
  appAll len7 d7 c7 sub14 ((h14 ρ a1) 7 mem18) (smaller (h60 ρ a0 a1) sub5)
theorem h65 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len5 d5 c5 sub15 ((h13 ρ a1) 5 mem19) (smaller (h61 ρ a0 a1) sub14)
theorem h66 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len5 d5 c5 sub15 ((h13 ρ a1) 5 mem19) (smaller (h62 ρ a0 a1) sub14)
theorem h67 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b12 s1 :=
  (consAll (lamAt d2 c2 (smaller (h63 (SelfintRecursiveTypes.cons s1 ρ) sub0 a0) sub4)) (consAll (lamAt d3 c3 (smaller (h65 (SelfintRecursiveTypes.cons s2 ρ) sub14 a0) sub16)) (consAll (lamAt d5 c5 (smaller (h65 (SelfintRecursiveTypes.cons s2 ρ) sub14 a0) sub15)) (consAll (lamAt d8 c8 (smaller (h66 (SelfintRecursiveTypes.cons s5 ρ) sub4 a0) sub17)) (consAll (lamAt d18 c18 (smaller (h66 (SelfintRecursiveTypes.cons s5 ρ) sub4 a0) sub16)) Positive.none)))))
theorem h68 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s3 :=
  (consAll (lamAt d6 c6 (smaller (h64 (SelfintRecursiveTypes.cons s0 ρ) sub18 a0) sub14)) Positive.none)
theorem h69 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b13 s5 :=
  appAll len2 d2 c2 sub4 ((h1 ρ a0) 2 mem20) (smaller (h67 ρ a0) sub0)
theorem h70 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b13 s11 :=
  appAll len4 d4 c4 sub15 ((h2 ρ a0) 4 mem21) (smaller (h68 ρ a0) sub3)
theorem h71 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b13 s11 :=
  botAll ((h4 ρ a0) 0 mem22)
end Blc.H44.H44F4846363331614
