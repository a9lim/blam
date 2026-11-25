import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof4

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h180 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b92 s23 :=
  (consAll (lamAt d28 c28 (smaller (h179 (SelfintRecursiveTypes.cons s26 ρ) sub103 a0) sub106)) Positive.none)
theorem h181 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b93 s9 :=
  appAll len25 d25 c25 sub13 ((h169 ρ a0) 25 mem70) (smaller (h180 ρ a0) sub107)
theorem h182 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b95 s51 :=
  botAll ((h181 ρ a0) 0 mem15)
theorem h183 (ρ : Env)  : All tab ρ b96 s21 :=
  (consAll (lamAt d24 c24 (smaller (h182 (SelfintRecursiveTypes.cons s22 ρ) sub108) sub18)) Positive.none)
theorem h184 (ρ : Env) (a0 : Fits s18 (ρ 0)) : All tab ρ b97 s19 :=
  appAll len23 d23 c23 sub70 ((h168 ρ a0) 23 mem71) (smaller (h183 ρ) sub109)
theorem h185 (ρ : Env) (a0 : Fits s18 (ρ 0)) : All tab ρ b98 s52 :=
  appAll len21 d21 c21 sub100 ((h167 ρ) 21 mem72) (smaller (h184 ρ a0) sub70)
theorem h186 (ρ : Env)  : All tab ρ b99 s80 :=
  (consAll (lamAt d20 c20 (smaller (h185 (SelfintRecursiveTypes.cons s18 ρ) sub101) sub100)) Positive.none)
theorem h187 (ρ : Env) (a1 : Fits s21 (ρ 1)) : All tab ρ b100 s21 :=
  varAll (fun i hi => a1 i (sub109 i hi))
theorem h188 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b101 s81 :=
  varAll (fun i hi => a0 i (sub110 i hi))
theorem h189 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b101 s9 :=
  varAll (fun i hi => a0 i (sub13 i hi))
theorem h190 (ρ : Env) (a1 : Fits s70 (ρ 1)) : All tab ρ b102 s70 :=
  varAll (fun i hi => a1 i (sub72 i hi))
theorem h191 (ρ : Env) (a1 : Fits s71 (ρ 1)) : All tab ρ b102 s71 :=
  varAll (fun i hi => a1 i (sub73 i hi))
theorem h192 (ρ : Env) (a1 : Fits s72 (ρ 1)) : All tab ρ b102 s72 :=
  varAll (fun i hi => a1 i (sub74 i hi))
theorem h193 (ρ : Env) (a1 : Fits s73 (ρ 1)) : All tab ρ b102 s73 :=
  varAll (fun i hi => a1 i (sub75 i hi))
theorem h194 (ρ : Env) (a3 : Fits s24 (ρ 3)) : All tab ρ b103 s74 :=
  varAll (fun i hi => a3 i (sub111 i hi))
theorem h195 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b104 s48 :=
  varAll (fun i hi => a0 i (sub78 i hi))
theorem h196 (ρ : Env) (a0 : Fits s49 (ρ 0)) : All tab ρ b104 s49 :=
  varAll (fun i hi => a0 i (sub77 i hi))
theorem h197 (ρ : Env) (a1 : Fits s25 (ρ 1)) : All tab ρ b105 s25 :=
  varAll (fun i hi => a1 i (sub61 i hi))
theorem h198 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b106 s25 :=
  appAll len71 d71 c71 sub61 ((h195 ρ a0) 71 mem38) (smaller (h197 ρ a1) sub61)
theorem h199 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b106 s25 :=
  appAll len83 d83 c83 sub61 ((h196 ρ a0) 83 mem37) (smaller (h197 ρ a1) sub79)
theorem h200 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s24 (ρ 3)) : All tab ρ b107 s45 :=
  appAll len68 d68 c68 sub63 ((h194 ρ a3) 68 mem40) (smaller (h198 ρ a0 a1) sub61)
theorem h201 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s24 (ρ 3)) : All tab ρ b107 s42 :=
  appAll len61 d61 c61 sub16 ((h194 ρ a3) 61 mem39) (smaller (h198 ρ a0 a1) sub61)
theorem h202 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s24 (ρ 3)) : All tab ρ b107 s25 :=
  appAll len71 d71 c71 sub61 ((h194 ρ a3) 71 mem41) (smaller (h198 ρ a0 a1) sub61)
theorem h203 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s24 (ρ 3)) : All tab ρ b107 s54 :=
  appAll len78 d78 c78 sub19 ((h194 ρ a3) 78 mem43) (smaller (h199 ρ a0 a1) sub61)
theorem h204 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s24 (ρ 3)) : All tab ρ b107 s56 :=
  appAll len79 d79 c79 sub80 ((h194 ρ a3) 79 mem42) (smaller (h199 ρ a0 a1) sub61)
theorem h205 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s24 (ρ 2)) : All tab ρ b108 s25 :=
  (consAll (lamAt d61 c61 (smaller (h201 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub16)) (consAll (lamAt d65 c65 (smaller (h200 (SelfintRecursiveTypes.cons s46 ρ) sub81 a0 a2) sub63)) (consAll (lamAt d71 c71 (smaller (h202 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub61)) (consAll (lamAt d76 c76 (smaller (h204 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub83)) (consAll (lamAt d80 c80 (smaller (h204 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub84)) (consAll (lamAt d81 c81 (smaller (h204 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub85)) (consAll (lamAt d82 c82 (smaller (h204 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub86)) (consAll (lamAt d85 c85 (smaller (h204 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub80)) Positive.none))))))))
theorem h206 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s24 (ρ 2)) : All tab ρ b108 s47 :=
  (consAll (lamAt d61 c61 (smaller (h201 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub16)) (consAll (lamAt d65 c65 (smaller (h200 (SelfintRecursiveTypes.cons s46 ρ) sub81 a0 a2) sub63)) (consAll (lamAt d71 c71 (smaller (h202 (SelfintRecursiveTypes.cons s25 ρ) sub79 a0 a2) sub61)) (consAll (lamAt d76 c76 (smaller (h203 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub67)) (consAll (lamAt d80 c80 (smaller (h203 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub32)) (consAll (lamAt d81 c81 (smaller (h203 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub33)) (consAll (lamAt d82 c82 (smaller (h203 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub31)) (consAll (lamAt d83 c83 (smaller (h202 (SelfintRecursiveTypes.cons s48 ρ) sub78 a0 a2) sub61)) (consAll (lamAt d85 c85 (smaller (h203 (SelfintRecursiveTypes.cons s47 ρ) sub82 a0 a2) sub68)) (consAll (lamAt d86 c86 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub32)) (consAll (lamAt d87 c87 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub30)) (consAll (lamAt d88 c88 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub19)) (consAll (lamAt d89 c89 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub31)) (consAll (lamAt d92 c92 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub67)) (consAll (lamAt d93 c93 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub64)) (consAll (lamAt d94 c94 (smaller (h203 (SelfintRecursiveTypes.cons s49 ρ) sub77 a0 a2) sub33)) Positive.none))))))))))))))))
theorem h207 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s24 (ρ 2)) : All tab ρ b108 s49 :=
  (consAll (lamAt d83 c83 (smaller (h202 (SelfintRecursiveTypes.cons s48 ρ) sub78 a0 a2) sub61)) Positive.none)
theorem h208 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s55 :=
  appAll len64 d64 c64 sub87 ((h190 ρ a1) 64 mem45) (smaller (h205 ρ a0 a2) sub61)
theorem h209 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s42 :=
  appAll len61 d61 c61 sub16 ((h190 ρ a1) 61 mem44) (smaller (h205 ρ a0 a2) sub61)
theorem h210 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s17 :=
  appAll len76 d76 c76 sub17 ((h191 ρ a1) 76 mem46) (smaller (h206 ρ a0 a2) sub88)
theorem h211 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s42 :=
  appAll len80 d80 c80 sub16 ((h192 ρ a1) 80 mem47) (smaller (h206 ρ a0 a2) sub88)
theorem h212 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s45 :=
  appAll len81 d81 c81 sub63 ((h192 ρ a1) 81 mem48) (smaller (h206 ρ a0 a2) sub88)
theorem h213 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s25 :=
  appAll len82 d82 c82 sub61 ((h192 ρ a1) 82 mem49) (smaller (h206 ρ a0 a2) sub88)
theorem h214 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s72 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s56 :=
  appAll len85 d85 c85 sub80 ((h192 ρ a1) 85 mem50) (smaller (h206 ρ a0 a2) sub88)
theorem h215 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s42 :=
  appAll len86 d86 c86 sub16 ((h193 ρ a1) 86 mem51) (smaller (h207 ρ a0 a2) sub77)
end Blc.H45.H45F9692402711770
