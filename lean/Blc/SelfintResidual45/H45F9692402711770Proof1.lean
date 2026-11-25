import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof0

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h36 (ρ : Env) (a0 : Fits s42 (ρ 0)) (a1 : Fits s36 (ρ 1)) (a2 : Fits s12 (ρ 2)) : All tab ρ b9 s17 :=
  appAll len56 d56 c56 sub17 ((h4 ρ a1) 56 mem13) (smaller (h31 ρ a0 a2) sub38)
theorem h37 (ρ : Env) (a0 : Fits s15 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s12 :=
  (consAll (lamAt d10 c10 (smaller (h34 (SelfintRecursiveTypes.cons s9 ρ) sub13 a0 a1) sub22)) (consAll (lamAt d14 c14 (smaller (h32 (SelfintRecursiveTypes.cons s13 ρ) sub12 a0 a1) sub13)) (consAll (lamAt d30 c30 (smaller (h34 (SelfintRecursiveTypes.cons s9 ρ) sub13 a0 a1) sub18)) (consAll (lamAt d58 c58 (smaller (h34 (SelfintRecursiveTypes.cons s9 ρ) sub13 a0 a1) sub27)) Positive.none))))
theorem h38 (ρ : Env) (a0 : Fits s36 (ρ 0)) (a1 : Fits s12 (ρ 1)) : All tab ρ b10 s33 :=
  (consAll (lamAt d42 c42 (smaller (h33 (SelfintRecursiveTypes.cons s35 ρ) sub14 a0 a1) sub36)) (consAll (lamAt d50 c50 (smaller (h35 (SelfintRecursiveTypes.cons s39 ρ) sub15 a0 a1) sub30)) (consAll (lamAt d55 c55 (smaller (h36 (SelfintRecursiveTypes.cons s42 ρ) sub16 a0 a1) sub17)) (consAll (lamAt d66 c66 (smaller (h35 (SelfintRecursiveTypes.cons s39 ρ) sub15 a0 a1) sub19)) (consAll (lamAt d72 c72 (smaller (h35 (SelfintRecursiveTypes.cons s39 ρ) sub15 a0 a1) sub31)) (consAll (lamAt d77 c77 (smaller (h35 (SelfintRecursiveTypes.cons s39 ρ) sub15 a0 a1) sub32)) (consAll (lamAt d95 c95 (smaller (h35 (SelfintRecursiveTypes.cons s39 ρ) sub15 a0 a1) sub33)) Positive.none)))))))
theorem h39 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b11 s6 :=
  (consAll (lamAt d17 c17 (smaller (h37 (SelfintRecursiveTypes.cons s15 ρ) sub3 a0) sub39)) Positive.none)
theorem h40 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b11 s13 :=
  (consAll (lamAt d43 c43 (smaller (h38 (SelfintRecursiveTypes.cons s36 ρ) sub4 a0) sub40)) Positive.none)
theorem h41 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s9 :=
  appAll len7 d7 c7 sub13 ((h1 ρ a0) 7 mem14) (smaller (h39 ρ a0) sub41)
theorem h42 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b12 s9 :=
  appAll len14 d14 c14 sub13 ((h2 ρ a0) 14 mem0) (smaller (h40 ρ a0) sub12)
theorem h43 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b14 s9 :=
  botAll ((h41 ρ a0) 0 mem15)
theorem h44 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b14 s9 :=
  botAll ((h42 ρ a0) 0 mem15)
theorem h45 (ρ : Env)  : All tab ρ b15 s62 :=
  (consAll (lamAt d6 c6 (smaller (h43 (SelfintRecursiveTypes.cons s5 ρ) sub42) sub13)) (consAll (lamAt d13 c13 (smaller (h44 (SelfintRecursiveTypes.cons s12 ρ) sub39) sub13)) Positive.none))
theorem h46 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b16 s4 :=
  varAll (fun i hi => a0 i (sub43 i hi))
theorem h47 (ρ : Env) (a0 : Fits s11 (ρ 0)) : All tab ρ b16 s11 :=
  varAll (fun i hi => a0 i (sub44 i hi))
theorem h48 (ρ : Env) (a1 : Fits s1 (ρ 1)) : All tab ρ b17 s1 :=
  varAll (fun i hi => a1 i (sub45 i hi))
theorem h49 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b18 s5 :=
  appAll len8 d8 c8 sub42 ((h46 ρ a0) 8 mem16) (smaller (h48 ρ a1) sub46)
theorem h50 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b18 s12 :=
  appAll len15 d15 c15 sub39 ((h47 ρ a0) 15 mem17) (smaller (h48 ρ a1) sub47)
theorem h51 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b19 s9 :=
  appAll len6 d6 c6 sub13 ((h45 ρ) 6 mem18) (smaller (h49 ρ a0 a1) sub42)
theorem h52 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b19 s9 :=
  appAll len13 d13 c13 sub13 ((h45 ρ) 13 mem19) (smaller (h50 ρ a0 a1) sub39)
theorem h53 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b20 s3 :=
  (consAll (lamAt d5 c5 (smaller (h51 (SelfintRecursiveTypes.cons s4 ρ) sub43 a0) sub13)) (consAll (lamAt d12 c12 (smaller (h52 (SelfintRecursiveTypes.cons s11 ρ) sub44 a0) sub13)) Positive.none))
theorem h54 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b21 s9 :=
  appAll len4 d4 c4 sub13 ((h0 ρ a1) 4 mem20) (smaller (h53 ρ a0) sub48)
theorem h55 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b22 s50 :=
  (consAll (lamAt d2 c2 (smaller (h54 (SelfintRecursiveTypes.cons s1 ρ) sub45 a0) sub13)) Positive.none)
theorem h56 (ρ : Env)  : All tab ρ b23 s63 :=
  (consAll (lamAt d3 c3 (smaller (h55 (SelfintRecursiveTypes.cons s2 ρ) sub0) sub49)) Positive.none)
theorem h57 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b24 s64 :=
  varAll (fun i hi => a0 i (sub50 i hi))
theorem h58 (ρ : Env) (a1 : Fits s7 (ρ 1)) : All tab ρ b25 s7 :=
  varAll (fun i hi => a1 i (sub51 i hi))
theorem h59 (ρ : Env) (a3 : Fits s3 (ρ 3)) : All tab ρ b26 s65 :=
  varAll (fun i hi => a3 i (sub52 i hi))
theorem h60 (ρ : Env) (a0 : Fits s10 (ρ 0)) : All tab ρ b27 s10 :=
  varAll (fun i hi => a0 i (sub53 i hi))
theorem h61 (ρ : Env) (a0 : Fits s32 (ρ 0)) : All tab ρ b27 s32 :=
  varAll (fun i hi => a0 i (sub54 i hi))
theorem h62 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b28 s6 :=
  varAll (fun i hi => a1 i (sub41 i hi))
theorem h63 (ρ : Env) (a1 : Fits s9 (ρ 1)) : All tab ρ b28 s9 :=
  varAll (fun i hi => a1 i (sub13 i hi))
theorem h64 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b29 s11 :=
  appAll len16 d16 c16 sub44 ((h60 ρ a0) 16 mem21) (smaller (h62 ρ a1) sub41)
theorem h65 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s9 (ρ 1)) : All tab ρ b29 s11 :=
  appAll len39 d39 c39 sub44 ((h61 ρ a0) 39 mem22) (smaller (h63 ρ a1) sub13)
theorem h66 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a3 : Fits s3 (ρ 3)) : All tab ρ b30 s9 :=
  appAll len12 d12 c12 sub13 ((h59 ρ a3) 12 mem23) (smaller (h64 ρ a0 a1) sub44)
theorem h67 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s9 (ρ 1)) (a3 : Fits s3 (ρ 3)) : All tab ρ b30 s9 :=
  appAll len12 d12 c12 sub13 ((h59 ρ a3) 12 mem23) (smaller (h65 ρ a0 a1) sub44)
theorem h68 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s3 (ρ 2)) : All tab ρ b31 s8 :=
  (consAll (lamAt d11 c11 (smaller (h66 (SelfintRecursiveTypes.cons s10 ρ) sub53 a0 a2) sub13)) Positive.none)
theorem h69 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a2 : Fits s3 (ρ 2)) : All tab ρ b31 s31 :=
  (consAll (lamAt d38 c38 (smaller (h67 (SelfintRecursiveTypes.cons s32 ρ) sub54 a0 a2) sub13)) Positive.none)
theorem h70 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b32 s9 :=
  appAll len9 d9 c9 sub13 ((h58 ρ a1) 9 mem24) (smaller (h68 ρ a0 a2) sub55)
theorem h71 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b32 s17 :=
  appAll len37 d37 c37 sub17 ((h58 ρ a1) 37 mem25) (smaller (h69 ρ a0 a2) sub56)
end Blc.H45.H45F9692402711770
