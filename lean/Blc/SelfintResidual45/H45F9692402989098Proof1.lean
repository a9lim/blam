import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402989098Proof0

set_option Elab.async false
namespace Blc.H45.H45F9692402989098
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b8 s3 :=
  appAll len25 d25 c25 sub2 ((h24 ρ a1) 25 mem17) (smaller (h4 ρ a0) sub4)
theorem h37 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len6 d6 c6 sub4 ((h24 ρ a1) 6 mem18) (smaller (h6 ρ a0) sub6)
theorem h38 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b8 s6 :=
  appAll len27 d27 c27 sub5 ((h24 ρ a1) 27 mem19) (smaller (h4 ρ a0) sub4)
theorem h39 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b8 s9 :=
  appAll len4 d4 c4 sub4 ((h24 ρ a1) 4 mem20) (smaller (h2 ρ a0) sub2)
theorem h40 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len6 d6 c6 sub4 ((h9 ρ a2) 6 mem21) (smaller (h25 ρ a0 a1) sub6)
theorem h41 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len10 d10 c10 sub6 ((h10 ρ a2) 10 mem22) (smaller (h27 ρ a0 a1) sub22)
theorem h42 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len11 d11 c11 sub4 ((h9 ρ a2) 11 mem23) (smaller (h26 ρ a0 a1) sub4)
theorem h43 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len7 d7 c7 sub4 ((h9 ρ a2) 7 mem24) (smaller (h28 ρ a0 a1) sub5)
theorem h44 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len6 d6 c6 sub4 ((h11 ρ a2) 6 mem25) (smaller (h31 ρ a0 a1) sub6)
theorem h45 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len17 d17 c17 sub23 ((h9 ρ a2) 17 mem26) (smaller (h29 ρ a0 a1) sub4)
theorem h46 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len6 d6 c6 sub4 ((h9 ρ a2) 6 mem21) (smaller (h30 ρ a0 a1) sub6)
theorem h47 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len21 d21 c21 sub6 ((h12 ρ a2) 21 mem27) (smaller (h28 ρ a0 a1) sub24)
theorem h48 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len6 d6 c6 sub4 ((h11 ρ a2) 6 mem25) (smaller (h32 ρ a0 a1) sub6)
theorem h49 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len19 d19 c19 sub6 ((h11 ρ a2) 19 mem28) (smaller (h28 ρ a0 a1) sub5)
theorem h50 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len17 d17 c17 sub23 ((h11 ρ a2) 17 mem29) (smaller (h37 ρ a0 a1) sub4)
theorem h51 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len23 d23 c23 sub6 ((h9 ρ a2) 23 mem30) (smaller (h26 ρ a0 a1) sub4)
theorem h52 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s5 :=
  appAll len18 d18 c18 sub6 ((h11 ρ a2) 18 mem31) (smaller (h32 ρ a0 a1) sub6)
theorem h53 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len17 d17 c17 sub23 ((h9 ρ a2) 17 mem26) (smaller (h33 ρ a0 a1) sub4)
theorem h54 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len24 d24 c24 sub23 ((h11 ρ a2) 24 mem32) (smaller (h36 ρ a0 a1) sub2)
theorem h55 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len17 d17 c17 sub23 ((h9 ρ a2) 17 mem26) (smaller (h34 ρ a0 a1) sub4)
theorem h56 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len11 d11 c11 sub4 ((h9 ρ a2) 11 mem23) (smaller (h35 ρ a0 a1) sub4)
theorem h57 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len17 d17 c17 sub23 ((h11 ρ a2) 17 mem29) (smaller (h39 ρ a0 a1) sub4)
theorem h58 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len4 d4 c4 sub4 ((h9 ρ a2) 4 mem33) (smaller (h27 ρ a0 a1) sub2)
theorem h59 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s3 :=
  appAll len25 d25 c25 sub2 ((h11 ρ a2) 25 mem34) (smaller (h35 ρ a0 a1) sub4)
theorem h60 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len6 d6 c6 sub4 ((h11 ρ a2) 6 mem25) (smaller (h30 ρ a0 a1) sub6)
theorem h61 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s3 :=
  appAll len25 d25 c25 sub2 ((h9 ρ a2) 25 mem35) (smaller (h33 ρ a0 a1) sub4)
theorem h62 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len17 d17 c17 sub23 ((h9 ρ a2) 17 mem26) (smaller (h26 ρ a0 a1) sub4)
theorem h63 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s3 :=
  appAll len13 d13 c13 sub2 ((h11 ρ a2) 13 mem36) (smaller (h36 ρ a0 a1) sub2)
theorem h64 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len11 d11 c11 sub4 ((h9 ρ a2) 11 mem23) (smaller (h29 ρ a0 a1) sub4)
theorem h65 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len28 d28 c28 sub23 ((h11 ρ a2) 28 mem37) (smaller (h32 ρ a0 a1) sub6)
theorem h66 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s6 :=
  appAll len27 d27 c27 sub5 ((h11 ρ a2) 27 mem38) (smaller (h35 ρ a0 a1) sub4)
theorem h67 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len11 d11 c11 sub4 ((h11 ρ a2) 11 mem39) (smaller (h37 ρ a0 a1) sub4)
theorem h68 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s6 :=
  appAll len27 d27 c27 sub5 ((h9 ρ a2) 27 mem40) (smaller (h33 ρ a0 a1) sub4)
theorem h69 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s6 :=
  appAll len16 d16 c16 sub5 ((h11 ρ a2) 16 mem41) (smaller (h38 ρ a0 a1) sub5)
theorem h70 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len4 d4 c4 sub4 ((h11 ρ a2) 4 mem42) (smaller (h27 ρ a0 a1) sub2)
theorem h71 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b9 s9 :=
  appAll len11 d11 c11 sub4 ((h9 ρ a2) 11 mem23) (smaller (h34 ρ a0 a1) sub4)
end Blc.H45.H45F9692402989098
