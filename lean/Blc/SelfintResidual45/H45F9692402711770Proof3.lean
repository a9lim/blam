import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof2

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h108 (ρ : Env) (a1 : Fits s40 (ρ 1)) : All tab ρ b56 s40 :=
  varAll (fun i hi => a1 i (sub37 i hi))
theorem h109 (ρ : Env) (a1 : Fits s43 (ρ 1)) : All tab ρ b56 s43 :=
  varAll (fun i hi => a1 i (sub38 i hi))
theorem h110 (ρ : Env) (a1 : Fits s19 (ρ 1)) : All tab ρ b57 s19 :=
  varAll (fun i hi => a1 i (sub70 i hi))
theorem h111 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b58 s9 :=
  varAll (fun i hi => a0 i (sub13 i hi))
theorem h112 (ρ : Env) (a0 : Fits s45 (ρ 0)) : All tab ρ b58 s69 :=
  varAll (fun i hi => a0 i (sub71 i hi))
theorem h113 (ρ : Env) (a1 : Fits s70 (ρ 1)) : All tab ρ b59 s70 :=
  varAll (fun i hi => a1 i (sub72 i hi))
theorem h114 (ρ : Env) (a1 : Fits s71 (ρ 1)) : All tab ρ b59 s71 :=
  varAll (fun i hi => a1 i (sub73 i hi))
theorem h115 (ρ : Env) (a1 : Fits s72 (ρ 1)) : All tab ρ b59 s72 :=
  varAll (fun i hi => a1 i (sub74 i hi))
theorem h116 (ρ : Env) (a1 : Fits s73 (ρ 1)) : All tab ρ b59 s73 :=
  varAll (fun i hi => a1 i (sub75 i hi))
theorem h117 (ρ : Env) (a3 : Fits s45 (ρ 3)) : All tab ρ b60 s74 :=
  varAll (fun i hi => a3 i (sub76 i hi))
theorem h118 (ρ : Env) (a0 : Fits s49 (ρ 0)) : All tab ρ b61 s49 :=
  varAll (fun i hi => a0 i (sub77 i hi))
theorem h119 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b61 s48 :=
  varAll (fun i hi => a0 i (sub78 i hi))
theorem h120 (ρ : Env) (a1 : Fits s25 (ρ 1)) : All tab ρ b62 s25 :=
  varAll (fun i hi => a1 i (sub61 i hi))
theorem h121 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b63 s25 :=
  appAll len83 d83 c83 sub61 ((h118 ρ a0) 83 mem37) (smaller (h120 ρ a1) sub79)
theorem h122 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b63 s25 :=
  appAll len71 d71 c71 sub61 ((h119 ρ a0) 71 mem38) (smaller (h120 ρ a1) sub61)
theorem h123 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s45 (ρ 3)) : All tab ρ b64 s42 :=
  appAll len61 d61 c61 sub16 ((h117 ρ a3) 61 mem39) (smaller (h122 ρ a0 a1) sub61)
theorem h124 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s45 (ρ 3)) : All tab ρ b64 s45 :=
  appAll len68 d68 c68 sub63 ((h117 ρ a3) 68 mem40) (smaller (h122 ρ a0 a1) sub61)
theorem h125 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s45 (ρ 3)) : All tab ρ b64 s25 :=
  appAll len71 d71 c71 sub61 ((h117 ρ a3) 71 mem41) (smaller (h122 ρ a0 a1) sub61)
theorem h126 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s45 (ρ 3)) : All tab ρ b64 s56 :=
  appAll len79 d79 c79 sub80 ((h117 ρ a3) 79 mem42) (smaller (h121 ρ a0 a1) sub61)
theorem h127 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s45 (ρ 3)) : All tab ρ b64 s54 :=
  appAll len78 d78 c78 sub19 ((h117 ρ a3) 78 mem43) (smaller (h121 ρ a0 a1) sub61)
theorem h128 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s45 (ρ 2)) : All tab ρ b65 s25 :=
  (consAll (lamAt d61 c61 (smaller (h123 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub16)) (consAll (lamAt d65 c65 (smaller (h124 (SelfintRecursiveTypes.cons s46 ρ) sub81 a0 a2) sub63)) (consAll (lamAt d71 c71 (smaller (h125 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub61)) (consAll (lamAt d76 c76 (smaller (h126 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub83)) (consAll (lamAt d80 c80 (smaller (h126 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub84)) (consAll (lamAt d81 c81 (smaller (h126 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub85)) (consAll (lamAt d82 c82 (smaller (h126 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub86)) (consAll (lamAt d85 c85 (smaller (h126 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub80)) Positive.none))))))))
theorem h129 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s45 (ρ 2)) : All tab ρ b65 s47 :=
  (consAll (lamAt d61 c61 (smaller (h123 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub16)) (consAll (lamAt d65 c65 (smaller (h124 (SelfintRecursiveTypes.cons s46 ρ) sub81 a0 a2) sub63)) (consAll (lamAt d71 c71 (smaller (h125 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub61)) (consAll (lamAt d76 c76 (smaller (h127 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub67)) (consAll (lamAt d80 c80 (smaller (h127 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub32)) (consAll (lamAt d81 c81 (smaller (h127 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub33)) (consAll (lamAt d82 c82 (smaller (h127 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub31)) (consAll (lamAt d83 c83 (smaller (h125 (SelfintRecursiveTypes.cons s48 ρ) sub78 a0 a2) sub61)) (consAll (lamAt d85 c85 (smaller (h127 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub68)) (consAll (lamAt d86 c86 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub32)) (consAll (lamAt d87 c87 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub30)) (consAll (lamAt d88 c88 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub19)) (consAll (lamAt d89 c89 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub31)) (consAll (lamAt d92 c92 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub67)) (consAll (lamAt d93 c93 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub64)) (consAll (lamAt d94 c94 (smaller (h127 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub33)) Positive.none))))))))))))))))
theorem h130 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s45 (ρ 2)) : All tab ρ b65 s49 :=
  (consAll (lamAt d83 c83 (smaller (h125 (SelfintRecursiveTypes.cons s48 ρ) sub78 a0 a2) sub61)) Positive.none)
theorem h131 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s42 :=
  appAll len61 d61 c61 sub16 ((h113 ρ a1) 61 mem44) (smaller (h128 ρ a0 a2) sub61)
theorem h132 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s55 :=
  appAll len64 d64 c64 sub87 ((h113 ρ a1) 64 mem45) (smaller (h128 ρ a0 a2) sub61)
theorem h133 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s17 :=
  appAll len76 d76 c76 sub17 ((h114 ρ a1) 76 mem46) (smaller (h129 ρ a0 a2) sub88)
theorem h134 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s42 :=
  appAll len80 d80 c80 sub16 ((h115 ρ a1) 80 mem47) (smaller (h129 ρ a0 a2) sub88)
theorem h135 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s45 :=
  appAll len81 d81 c81 sub63 ((h115 ρ a1) 81 mem48) (smaller (h129 ρ a0 a2) sub88)
theorem h136 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s25 :=
  appAll len82 d82 c82 sub61 ((h115 ρ a1) 82 mem49) (smaller (h129 ρ a0 a2) sub88)
theorem h137 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s56 :=
  appAll len85 d85 c85 sub80 ((h115 ρ a1) 85 mem50) (smaller (h129 ρ a0 a2) sub88)
theorem h138 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s42 :=
  appAll len86 d86 c86 sub16 ((h116 ρ a1) 86 mem51) (smaller (h130 ρ a0 a2) sub77)
theorem h139 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s29 :=
  appAll len87 d87 c87 sub62 ((h116 ρ a1) 87 mem52) (smaller (h130 ρ a0 a2) sub77)
theorem h140 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s54 :=
  appAll len88 d88 c88 sub19 ((h116 ρ a1) 88 mem53) (smaller (h130 ρ a0 a2) sub77)
theorem h141 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s25 :=
  appAll len89 d89 c89 sub61 ((h116 ρ a1) 89 mem54) (smaller (h130 ρ a0 a2) sub77)
theorem h142 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s17 :=
  appAll len92 d92 c92 sub17 ((h116 ρ a1) 92 mem55) (smaller (h130 ρ a0 a2) sub77)
theorem h143 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s55 :=
  appAll len93 d93 c93 sub87 ((h116 ρ a1) 93 mem56) (smaller (h130 ρ a0 a2) sub77)
end Blc.H45.H45F9692402711770
