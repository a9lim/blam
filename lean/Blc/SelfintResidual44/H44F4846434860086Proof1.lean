import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434860086Proof0

set_option Elab.async false
namespace Blc.H44.H44F4846434860086
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a1 : Fits s14 (ρ 1)) : All tab ρ b1 s14 :=
  varAll (fun i hi => a1 i (sub8 i hi))
theorem h37 (ρ : Env) (a2 : Fits s16 (ρ 2)) : All tab ρ b2 s36 :=
  varAll (fun i hi => a2 i (sub31 i hi))
theorem h38 (ρ : Env) (a2 : Fits s1 (ρ 2)) : All tab ρ b2 s37 :=
  varAll (fun i hi => a2 i (sub32 i hi))
theorem h39 (ρ : Env) (a2 : Fits s22 (ρ 2)) : All tab ρ b2 s38 :=
  varAll (fun i hi => a2 i (sub33 i hi))
theorem h40 (ρ : Env) (a2 : Fits s13 (ρ 2)) : All tab ρ b2 s14 :=
  varAll (fun i hi => a2 i (sub34 i hi))
theorem h41 (ρ : Env) (a2 : Fits s29 (ρ 2)) : All tab ρ b2 s14 :=
  varAll (fun i hi => a2 i (sub35 i hi))
theorem h42 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len2 d2 c2 sub18 ((h3 ρ a0) 2 mem0) Positive.none
theorem h43 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b3 s2 :=
  appAll len7 d7 c7 sub3 ((h4 ρ a0) 7 mem1) (smaller (h26 ρ a1) sub18)
theorem h44 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len2 d2 c2 sub18 ((h3 ρ a0) 2 mem0) Positive.none
theorem h45 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s2 :=
  appAll len4 d4 c4 sub3 ((h6 ρ a0) 4 mem2) (smaller (h27 ρ a1) sub3)
theorem h46 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b3 s2 :=
  appAll len17 d17 c17 sub3 ((h8 ρ a0) 17 mem3) (smaller (h29 ρ a1) sub36)
theorem h47 (ρ : Env) (a0 : Fits s15 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b3 s14 :=
  appAll len19 d19 c19 sub8 ((h9 ρ a0) 19 mem4) (smaller (h29 ρ a1) sub37)
theorem h48 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b3 s12 :=
  appAll len22 d22 c22 sub26 ((h11 ρ a0) 22 mem5) (smaller (h31 ρ a1) sub38)
theorem h49 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b3 s17 :=
  appAll len24 d24 c24 sub11 ((h12 ρ a0) 24 mem6) (smaller (h31 ρ a1) sub39)
theorem h50 (ρ : Env) (a0 : Fits s19 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b3 s10 :=
  appAll len26 d26 c26 sub6 ((h13 ρ a0) 26 mem7) (smaller (h31 ρ a1) sub40)
theorem h51 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s10 (ρ 1)) : All tab ρ b3 s10 :=
  appAll len27 d27 c27 sub6 ((h14 ρ a0) 27 mem8) (smaller (h28 ρ a1) sub6)
theorem h52 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len31 d31 c31 sub18 ((h16 ρ a0) 31 mem9) (smaller (h33 ρ a1) sub41)
theorem h53 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b3 s23 :=
  appAll len33 d33 c33 sub16 ((h17 ρ a0) 33 mem10) (smaller (h33 ρ a1) sub42)
theorem h54 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s5 :=
  botAll ((h18 ρ a0) 0 mem11)
theorem h55 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len30 d30 c30 sub18 ((h19 ρ a0) 30 mem12) (smaller (h33 ρ a1) sub43)
theorem h56 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len31 d31 c31 sub18 ((h16 ρ a0) 31 mem9) (smaller (h34 ρ a1) sub20)
theorem h57 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len10 d10 c10 sub18 ((h20 ρ a0) 10 mem13) (smaller (h27 ρ a1) sub3)
theorem h58 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b3 s2 :=
  appAll len17 d17 c17 sub3 ((h8 ρ a0) 17 mem3) (smaller (h36 ρ a1) sub8)
theorem h59 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s28 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len39 d39 c39 sub18 ((h22 ρ a0) 39 mem14) (smaller (h35 ρ a1) sub44)
theorem h60 (ρ : Env) (a0 : Fits s31 (ρ 0)) (a1 : Fits s28 (ρ 1)) : All tab ρ b3 s30 :=
  appAll len41 d41 c41 sub22 ((h23 ρ a0) 41 mem15) (smaller (h35 ρ a1) sub45)
theorem h61 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b3 s5 :=
  appAll len2 d2 c2 sub18 ((h3 ρ a0) 2 mem0) Positive.none
theorem h62 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s28 (ρ 1)) : All tab ρ b3 s2 :=
  appAll len17 d17 c17 sub3 ((h8 ρ a0) 17 mem3) (smaller (h35 ρ a1) sub44)
theorem h63 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b4 s7 :=
  (consAll (lamAt d10 c10 (smaller (h42 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub18)) (consAll (lamAt d11 c11 (smaller (h43 (SelfintRecursiveTypes.cons s8 ρ) sub4 a0) sub3)) Positive.none))
theorem h64 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b4 s9 :=
  (consAll (lamAt d10 c10 (smaller (h44 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub18)) (consAll (lamAt d13 c13 (smaller (h45 (SelfintRecursiveTypes.cons s10 ρ) sub6 a0) sub3)) Positive.none))
theorem h65 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b4 s13 :=
  (consAll (lamAt d17 c17 (smaller (h46 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0) sub3)) (consAll (lamAt d18 c18 (smaller (h47 (SelfintRecursiveTypes.cons s15 ρ) sub9 a0) sub8)) Positive.none))
theorem h66 (ρ : Env) (a0 : Fits s11 (ρ 0)) : All tab ρ b4 s16 :=
  (consAll (lamAt d21 c21 (smaller (h48 (SelfintRecursiveTypes.cons s17 ρ) sub11 a0) sub26)) (consAll (lamAt d23 c23 (smaller (h49 (SelfintRecursiveTypes.cons s18 ρ) sub12 a0) sub11)) (consAll (lamAt d25 c25 (smaller (h50 (SelfintRecursiveTypes.cons s19 ρ) sub13 a0) sub6)) Positive.none)))
theorem h67 (ρ : Env) (a0 : Fits s10 (ρ 0)) : All tab ρ b4 s19 :=
  (consAll (lamAt d26 c26 (smaller (h51 (SelfintRecursiveTypes.cons s20 ρ) sub14 a0) sub6)) Positive.none)
theorem h68 (ρ : Env) (a0 : Fits s21 (ρ 0)) : All tab ρ b4 s22 :=
  (consAll (lamAt d30 c30 (smaller (h52 (SelfintRecursiveTypes.cons s23 ρ) sub16 a0) sub18)) (consAll (lamAt d32 c32 (smaller (h53 (SelfintRecursiveTypes.cons s25 ρ) sub17 a0) sub16)) (consAll (lamAt d35 c35 (smaller (h55 (SelfintRecursiveTypes.cons s27 ρ) sub19 a0) sub18)) Positive.none)))
theorem h69 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b4 s21 :=
  (consAll (lamAt d10 c10 (smaller (h44 (SelfintRecursiveTypes.cons s2 ρ) sub3 a0) sub18)) (consAll (lamAt d31 c31 (smaller (h57 (SelfintRecursiveTypes.cons s24 ρ) sub20 a0) sub18)) (consAll (lamAt d34 c34 (smaller (h54 (SelfintRecursiveTypes.cons s5 ρ) sub18 a0) sub18)) Positive.none)))
theorem h70 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b4 s27 :=
  (consAll (lamAt d30 c30 (smaller (h56 (SelfintRecursiveTypes.cons s23 ρ) sub16 a0) sub18)) Positive.none)
theorem h71 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b4 s14 :=
  (consAll (lamAt d17 c17 (smaller (h58 (SelfintRecursiveTypes.cons s14 ρ) sub8 a0) sub3)) Positive.none)
end Blc.H44.H44F4846434860086
