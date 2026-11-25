import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9676763418166Proof0

set_option Elab.async false
namespace Blc.H45.H45F9676763418166
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b7 s16 :=
  appAll len9 d9 c9 sub6 ((h20 ρ a1) 9 mem9) Positive.none
theorem h37 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s15 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len24 d24 c24 sub4 ((h21 ρ a1) 24 mem10) Positive.none
theorem h38 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len25 d25 c25 sub4 ((h22 ρ a1) 25 mem11) (smaller (h28 ρ a0) sub21)
theorem h39 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b7 s3 :=
  appAll len27 d27 c27 sub15 ((h23 ρ a1) 27 mem12) Positive.none
theorem h40 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b7 s12 :=
  appAll len28 d28 c28 sub20 ((h24 ρ a1) 28 mem13) Positive.none
theorem h41 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len8 d8 c8 sub6 ((h10 ρ a2) 8 mem14) (smaller (h29 ρ a0 a1) sub4)
theorem h42 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s18 :=
  appAll len12 d12 c12 sub25 ((h11 ρ a2) 12 mem15) (smaller (h31 ρ a0 a1) sub13)
theorem h43 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len8 d8 c8 sub6 ((h10 ρ a2) 8 mem14) (smaller (h30 ρ a0 a1) sub4)
theorem h44 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len11 d11 c11 sub6 ((h12 ρ a2) 11 mem16) (smaller (h34 ρ a0 a1) sub16)
theorem h45 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len8 d8 c8 sub6 ((h10 ρ a2) 8 mem14) (smaller (h32 ρ a0 a1) sub4)
theorem h46 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s7 :=
  appAll len15 d15 c15 sub4 ((h11 ρ a2) 15 mem17) (smaller (h34 ρ a0 a1) sub16)
theorem h47 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s19 :=
  appAll len17 d17 c17 sub26 ((h10 ρ a2) 17 mem18) (smaller (h33 ρ a0 a1) sub24)
theorem h48 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s14 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len8 d8 c8 sub6 ((h12 ρ a2) 8 mem19) (smaller (h38 ρ a0 a1) sub4)
theorem h49 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len8 d8 c8 sub6 ((h10 ρ a2) 8 mem14) (smaller (h35 ρ a0 a1) sub4)
theorem h50 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s15 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s7 :=
  appAll len22 d22 c22 sub4 ((h11 ρ a2) 22 mem20) (smaller (h37 ρ a0 a1) sub4)
theorem h51 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len23 d23 c23 sub6 ((h10 ρ a2) 23 mem21) (smaller (h36 ρ a0 a1) sub6)
theorem h52 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s13 (ρ 2)) : All tab ρ b8 s7 :=
  appAll len26 d26 c26 sub4 ((h13 ρ a2) 26 mem22) (smaller (h40 ρ a0 a1) sub20)
theorem h53 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s16 :=
  appAll len4 d4 c4 sub6 ((h12 ρ a2) 4 mem23) (smaller (h39 ρ a0 a1) sub15)
theorem h54 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h41 ρ a0 a1 a2) 0 mem24)
theorem h55 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s16 :=
  appAll len11 d11 c11 sub6 ((h42 ρ a0 a1 a2) 11 mem25) (smaller (h16 ρ a1) sub27)
theorem h56 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h43 ρ a0 a1 a2) 0 mem24)
theorem h57 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h44 ρ a0 a1 a2) 0 mem24)
theorem h58 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h45 ρ a0 a1 a2) 0 mem24)
theorem h59 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s16 :=
  appAll len9 d9 c9 sub6 ((h46 ρ a0 a1 a2) 9 mem9) Positive.none
theorem h60 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b9 s16 :=
  appAll len16 d16 c16 sub6 ((h47 ρ a0 a1 a2) 16 mem26) (smaller (h18 ρ a1) sub28)
theorem h61 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s14 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h48 ρ a0 a1 a2) 0 mem24)
theorem h62 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h49 ρ a0 a1 a2) 0 mem24)
theorem h63 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s15 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s16 :=
  appAll len9 d9 c9 sub6 ((h50 ρ a0 a1 a2) 9 mem9) Positive.none
theorem h64 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h51 ρ a0 a1 a2) 0 mem24)
theorem h65 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s13 (ρ 2)) : All tab ρ b9 s16 :=
  appAll len9 d9 c9 sub6 ((h52 ρ a0 a1 a2) 9 mem9) Positive.none
theorem h66 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s16 :=
  botAll ((h53 ρ a0 a1 a2) 0 mem24)
theorem h67 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s2 :=
  (consAll (lamAt d4 c4 (smaller (h54 (SelfintRecursiveTypes.cons s3 ρ) sub15 a0 a1) sub6)) (consAll (lamAt d8 c8 (smaller (h62 (SelfintRecursiveTypes.cons s7 ρ) sub4 a0 a1) sub6)) (consAll (lamAt d11 c11 (smaller (h58 (SelfintRecursiveTypes.cons s9 ρ) sub16 a0 a1) sub6)) Positive.none)))
theorem h68 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h55 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h69 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s18 :=
  (consAll (lamAt d11 c11 (smaller (h56 (SelfintRecursiveTypes.cons s9 ρ) sub16 a0 a1) sub6)) Positive.none)
theorem h70 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h57 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
theorem h71 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s7 :=
  (consAll (lamAt d9 c9 (smaller (h59 (SelfintRecursiveTypes.cons s0 ρ) sub29 a0 a1) sub6)) Positive.none)
end Blc.H45.H45F9676763418166
