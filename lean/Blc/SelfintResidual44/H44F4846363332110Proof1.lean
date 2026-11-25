import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363332110Proof0

set_option Elab.async false
namespace Blc.H44.H44F4846363332110
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len17 d17 c17 sub4 ((h9 ρ a1) 17 mem4) (smaller (h30 ρ a0) sub15)
theorem h37 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b7 s5 :=
  appAll len19 d19 c19 sub22 ((h15 ρ a1) 19 mem5) Positive.none
theorem h38 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b7 s5 :=
  appAll len19 d19 c19 sub22 ((h15 ρ a1) 19 mem5) Positive.none
theorem h39 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s10 (ρ 1)) : All tab ρ b7 s11 :=
  appAll len20 d20 c20 sub14 ((h16 ρ a1) 20 mem6) Positive.none
theorem h40 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b7 s5 :=
  appAll len19 d19 c19 sub22 ((h15 ρ a1) 19 mem5) Positive.none
theorem h41 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b7 s6 :=
  appAll len12 d12 c12 sub21 ((h11 ρ a1) 12 mem2) Positive.none
theorem h42 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len21 d21 c21 sub4 ((h9 ρ a1) 21 mem7) (smaller (h31 ρ a0) sub17)
theorem h43 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len23 d23 c23 sub4 ((h17 ρ a1) 23 mem8) Positive.none
theorem h44 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len23 d23 c23 sub4 ((h17 ρ a1) 23 mem8) Positive.none
theorem h45 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b7 s7 :=
  appAll len23 d23 c23 sub4 ((h17 ρ a1) 23 mem8) Positive.none
theorem h46 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b7 s13 :=
  appAll len24 d24 c24 sub16 ((h18 ρ a1) 24 mem9) Positive.none
theorem h47 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h19 ρ a2) 8 mem10) (smaller (h32 ρ a0 a1) sub4)
theorem h48 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len7 d7 c7 sub24 ((h19 ρ a2) 7 mem11) (smaller (h33 ρ a0 a1) sub21)
theorem h49 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len13 d13 c13 sub21 ((h20 ρ a2) 13 mem12) (smaller (h34 ρ a0 a1) sub10)
theorem h50 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len13 d13 c13 sub21 ((h21 ρ a2) 13 mem12) (smaller (h34 ρ a0 a1) sub10)
theorem h51 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len7 d7 c7 sub24 ((h19 ρ a2) 7 mem11) (smaller (h35 ρ a0 a1) sub21)
theorem h52 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h19 ρ a2) 8 mem10) (smaller (h36 ρ a0 a1) sub4)
theorem h53 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len18 d18 c18 sub21 ((h21 ρ a2) 18 mem13) (smaller (h39 ρ a0 a1) sub14)
theorem h54 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len18 d18 c18 sub21 ((h20 ρ a2) 18 mem13) (smaller (h39 ρ a0 a1) sub14)
theorem h55 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len16 d16 c16 sub24 ((h19 ρ a2) 16 mem14) (smaller (h37 ρ a0 a1) sub22)
theorem h56 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len16 d16 c16 sub24 ((h19 ρ a2) 16 mem14) (smaller (h38 ρ a0 a1) sub22)
theorem h57 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len16 d16 c16 sub24 ((h24 ρ a2) 16 mem14) (smaller (h38 ρ a0 a1) sub22)
theorem h58 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len7 d7 c7 sub24 ((h24 ρ a2) 7 mem11) (smaller (h33 ρ a0 a1) sub21)
theorem h59 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h24 ρ a2) 8 mem10) (smaller (h32 ρ a0 a1) sub4)
theorem h60 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len16 d16 c16 sub24 ((h24 ρ a2) 16 mem14) (smaller (h37 ρ a0 a1) sub22)
theorem h61 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len7 d7 c7 sub24 ((h24 ρ a2) 7 mem11) (smaller (h35 ρ a0 a1) sub21)
theorem h62 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h24 ρ a2) 8 mem10) (smaller (h36 ρ a0 a1) sub4)
theorem h63 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len16 d16 c16 sub24 ((h19 ρ a2) 16 mem14) (smaller (h40 ρ a0 a1) sub22)
theorem h64 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len7 d7 c7 sub24 ((h19 ρ a2) 7 mem11) (smaller (h41 ρ a0 a1) sub21)
theorem h65 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h19 ρ a2) 8 mem10) (smaller (h42 ρ a0 a1) sub4)
theorem h66 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len16 d16 c16 sub24 ((h24 ρ a2) 16 mem14) (smaller (h40 ρ a0 a1) sub22)
theorem h67 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len7 d7 c7 sub24 ((h24 ρ a2) 7 mem11) (smaller (h41 ρ a0 a1) sub21)
theorem h68 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s4 (ρ 1)) (a2 : Fits s5 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h24 ρ a2) 8 mem10) (smaller (h42 ρ a0 a1) sub4)
theorem h69 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len22 d22 c22 sub21 ((h21 ρ a2) 22 mem15) (smaller (h46 ρ a0 a1) sub16)
theorem h70 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s6 :=
  appAll len22 d22 c22 sub21 ((h20 ρ a2) 22 mem15) (smaller (h46 ρ a0 a1) sub16)
theorem h71 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s14 :=
  appAll len8 d8 c8 sub24 ((h19 ρ a2) 8 mem10) (smaller (h43 ρ a0 a1) sub4)
end Blc.H44.H44F4846363332110
