import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof1

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h72 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s3 (ρ 1)) : All tab ρ b33 s5 :=
  (consAll (lamAt d7 c7 (smaller (h70 (SelfintRecursiveTypes.cons s6 ρ) sub41 a0 a1) sub13)) (consAll (lamAt d36 c36 (smaller (h71 (SelfintRecursiveTypes.cons s9 ρ) sub13 a0 a1) sub17)) Positive.none))
theorem h73 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b34 s4 :=
  (consAll (lamAt d8 c8 (smaller (h72 (SelfintRecursiveTypes.cons s7 ρ) sub51 a0) sub42)) Positive.none)
theorem h74 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b35 s9 :=
  appAll len5 d5 c5 sub13 ((h57 ρ a0) 5 mem26) (smaller (h73 ρ a0) sub43)
theorem h75 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b37 s9 :=
  botAll ((h74 ρ a0) 0 mem15)
theorem h76 (ρ : Env)  : All tab ρ b38 s2 :=
  (consAll (lamAt d4 c4 (smaller (h75 (SelfintRecursiveTypes.cons s3 ρ) sub48) sub13)) Positive.none)
theorem h77 (ρ : Env)  : All tab ρ b39 s50 :=
  appAll len3 d3 c3 sub49 ((h56 ρ) 3 mem27) (smaller (h76 ρ) sub0)
theorem h78 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b40 s9 :=
  varAll (fun i hi => a0 i (sub13 i hi))
theorem h79 (ρ : Env) (a0 : Fits s33 (ρ 0)) : All tab ρ b40 s66 :=
  varAll (fun i hi => a0 i (sub57 i hi))
theorem h80 (ρ : Env) (a1 : Fits s34 (ρ 1)) : All tab ρ b41 s34 :=
  varAll (fun i hi => a1 i (sub58 i hi))
theorem h81 (ρ : Env) (a3 : Fits s33 (ρ 3)) : All tab ρ b42 s67 :=
  varAll (fun i hi => a3 i (sub59 i hi))
theorem h82 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b43 s30 :=
  varAll (fun i hi => a0 i (sub60 i hi))
theorem h83 (ρ : Env) (a1 : Fits s25 (ρ 1)) : All tab ρ b44 s25 :=
  varAll (fun i hi => a1 i (sub61 i hi))
theorem h84 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b45 s42 :=
  appAll len61 d61 c61 sub16 ((h82 ρ a0) 61 mem28) (smaller (h83 ρ a1) sub61)
theorem h85 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s33 (ρ 3)) : All tab ρ b46 s17 :=
  appAll len55 d55 c55 sub17 ((h81 ρ a3) 55 mem29) (smaller (h84 ρ a0 a1) sub16)
theorem h86 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s33 (ρ 2)) : All tab ρ b47 s39 :=
  (consAll (lamAt d54 c54 (smaller (h85 (SelfintRecursiveTypes.cons s30 ρ) sub60 a0 a2) sub17)) Positive.none)
theorem h87 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s34 (ρ 1)) (a2 : Fits s33 (ρ 2)) : All tab ρ b48 s29 :=
  appAll len50 d50 c50 sub62 ((h80 ρ a1) 50 mem30) (smaller (h86 ρ a0 a2) sub15)
theorem h88 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s34 (ρ 1)) (a2 : Fits s33 (ρ 2)) : All tab ρ b48 s54 :=
  appAll len66 d66 c66 sub19 ((h80 ρ a1) 66 mem31) (smaller (h86 ρ a0 a2) sub15)
theorem h89 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s34 (ρ 1)) (a2 : Fits s33 (ρ 2)) : All tab ρ b48 s25 :=
  appAll len72 d72 c72 sub61 ((h80 ρ a1) 72 mem32) (smaller (h86 ρ a0 a2) sub15)
theorem h90 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s34 (ρ 1)) (a2 : Fits s33 (ρ 2)) : All tab ρ b48 s42 :=
  appAll len77 d77 c77 sub16 ((h80 ρ a1) 77 mem33) (smaller (h86 ρ a0 a2) sub15)
theorem h91 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s34 (ρ 1)) (a2 : Fits s33 (ρ 2)) : All tab ρ b48 s45 :=
  appAll len95 d95 c95 sub63 ((h80 ρ a1) 95 mem34) (smaller (h86 ρ a0 a2) sub15)
theorem h92 (ρ : Env) (a0 : Fits s34 (ρ 0)) (a1 : Fits s33 (ρ 1)) : All tab ρ b49 s17 :=
  (consAll (lamAt d34 c34 (smaller (h87 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub62)) (consAll (lamAt d61 c61 (smaller (h88 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub32)) (consAll (lamAt d64 c64 (smaller (h88 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub64)) (consAll (lamAt d65 c65 (smaller (h91 (SelfintRecursiveTypes.cons s46 ρ) sub65 a0 a1) sub63)) (consAll (lamAt d71 c71 (smaller (h89 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub61)) (consAll (lamAt d76 c76 (smaller (h88 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub67)) (consAll (lamAt d78 c78 (smaller (h88 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub19)) (consAll (lamAt d80 c80 (smaller (h88 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub32)) (consAll (lamAt d81 c81 (smaller (h88 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub33)) (consAll (lamAt d82 c82 (smaller (h88 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub31)) (consAll (lamAt d85 c85 (smaller (h88 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub68)) Positive.none)))))))))))
theorem h93 (ρ : Env) (a0 : Fits s33 (ρ 0)) : All tab ρ b50 s35 :=
  (consAll (lamAt d49 c49 (smaller (h92 (SelfintRecursiveTypes.cons s34 ρ) sub58 a0) sub17)) Positive.none)
theorem h94 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b51 s9 :=
  botAll ((h78 ρ a0) 0 mem15)
theorem h95 (ρ : Env) (a0 : Fits s33 (ρ 0)) : All tab ρ b51 s53 :=
  appAll len42 d42 c42 sub36 ((h79 ρ a0) 42 mem35) (smaller (h93 ρ a0) sub14)
theorem h96 (ρ : Env) (a0 : Fits s33 (ρ 0)) : All tab ρ b52 s34 :=
  varAll (fun i hi => a0 i (sub69 i hi))
theorem h97 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b53 s9 :=
  botAll ((h94 ρ a0) 0 mem15)
theorem h98 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b53 s17 :=
  botAll ((h94 ρ a0) 0 mem15)
theorem h99 (ρ : Env) (a0 : Fits s33 (ρ 0)) : All tab ρ b53 s9 :=
  appAll len41 d41 c41 sub13 ((h95 ρ a0) 41 mem36) (smaller (h96 ρ a0) sub58)
theorem h100 (ρ : Env)  : All tab ρ b54 s68 :=
  (consAll (lamAt d10 c10 (smaller (h97 (SelfintRecursiveTypes.cons s9 ρ) sub13) sub13)) (consAll (lamAt d36 c36 (smaller (h98 (SelfintRecursiveTypes.cons s9 ρ) sub13) sub17)) (consAll (lamAt d40 c40 (smaller (h99 (SelfintRecursiveTypes.cons s33 ρ) sub40) sub13)) Positive.none)))
theorem h101 (ρ : Env) (a0 : Fits s8 (ρ 0)) : All tab ρ b55 s8 :=
  varAll (fun i hi => a0 i (sub55 i hi))
theorem h102 (ρ : Env) (a0 : Fits s31 (ρ 0)) : All tab ρ b55 s31 :=
  varAll (fun i hi => a0 i (sub56 i hi))
theorem h103 (ρ : Env) (a0 : Fits s13 (ρ 0)) : All tab ρ b55 s13 :=
  varAll (fun i hi => a0 i (sub12 i hi))
theorem h104 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b55 s9 :=
  varAll (fun i hi => a0 i (sub13 i hi))
theorem h105 (ρ : Env) (a1 : Fits s6 (ρ 1)) : All tab ρ b56 s6 :=
  varAll (fun i hi => a1 i (sub41 i hi))
theorem h106 (ρ : Env) (a1 : Fits s9 (ρ 1)) : All tab ρ b56 s9 :=
  varAll (fun i hi => a1 i (sub13 i hi))
theorem h107 (ρ : Env) (a1 : Fits s37 (ρ 1)) : All tab ρ b56 s37 :=
  varAll (fun i hi => a1 i (sub35 i hi))
end Blc.H45.H45F9692402711770
