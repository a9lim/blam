import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof5

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h216 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s29 :=
  appAll len87 d87 c87 sub62 ((h193 ρ a1) 87 mem52) (smaller (h207 ρ a0 a2) sub77)
theorem h217 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s54 :=
  appAll len88 d88 c88 sub19 ((h193 ρ a1) 88 mem53) (smaller (h207 ρ a0 a2) sub77)
theorem h218 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s25 :=
  appAll len89 d89 c89 sub61 ((h193 ρ a1) 89 mem54) (smaller (h207 ρ a0 a2) sub77)
theorem h219 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s54 :=
  appAll len78 d78 c78 sub19 ((h190 ρ a1) 78 mem58) (smaller (h205 ρ a0 a2) sub61)
theorem h220 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s17 :=
  appAll len92 d92 c92 sub17 ((h193 ρ a1) 92 mem55) (smaller (h207 ρ a0 a2) sub77)
theorem h221 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s55 :=
  appAll len93 d93 c93 sub87 ((h193 ρ a1) 93 mem56) (smaller (h207 ρ a0 a2) sub77)
theorem h222 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b109 s45 :=
  appAll len94 d94 c94 sub63 ((h193 ρ a1) 94 mem57) (smaller (h207 ρ a0 a2) sub77)
theorem h223 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b110 s45 :=
  (consAll (lamAt d61 c61 (smaller (h209 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub16)) (consAll (lamAt d64 c64 (smaller (h208 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub87)) (consAll (lamAt d68 c68 (smaller (h219 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub33)) (consAll (lamAt d71 c71 (smaller (h219 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub31)) (consAll (lamAt d78 c78 (smaller (h219 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub19)) (consAll (lamAt d79 c79 (smaller (h219 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub68)) Positive.none))))))
theorem h224 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b110 s42 :=
  (consAll (lamAt d60 c60 (smaller (h210 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub17)) Positive.none)
theorem h225 (ρ : Env) (a0 : Fits s72 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b110 s25 :=
  (consAll (lamAt d61 c61 (smaller (h211 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub16)) (consAll (lamAt d65 c65 (smaller (h212 (SelfintRecursiveTypes.cons s46 ρ) sub65 a0 a1) sub63)) (consAll (lamAt d71 c71 (smaller (h213 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub61)) (consAll (lamAt d76 c76 (smaller (h214 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub83)) (consAll (lamAt d80 c80 (smaller (h214 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub84)) (consAll (lamAt d81 c81 (smaller (h214 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub85)) (consAll (lamAt d82 c82 (smaller (h214 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub86)) (consAll (lamAt d85 c85 (smaller (h214 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub80)) Positive.none))))))))
theorem h226 (ρ : Env) (a0 : Fits s73 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b110 s56 :=
  (consAll (lamAt d34 c34 (smaller (h216 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub62)) (consAll (lamAt d60 c60 (smaller (h220 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub17)) (consAll (lamAt d61 c61 (smaller (h215 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub16)) (consAll (lamAt d64 c64 (smaller (h217 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub64)) (consAll (lamAt d65 c65 (smaller (h222 (SelfintRecursiveTypes.cons s46 ρ) sub65 a0 a1) sub63)) (consAll (lamAt d68 c68 (smaller (h217 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub33)) (consAll (lamAt d71 c71 (smaller (h218 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub61)) (consAll (lamAt d76 c76 (smaller (h217 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub67)) (consAll (lamAt d78 c78 (smaller (h217 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub19)) (consAll (lamAt d79 c79 (smaller (h217 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub68)) (consAll (lamAt d80 c80 (smaller (h217 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub32)) (consAll (lamAt d81 c81 (smaller (h217 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub33)) (consAll (lamAt d82 c82 (smaller (h217 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub31)) (consAll (lamAt d85 c85 (smaller (h217 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub68)) Positive.none))))))))))))))
theorem h227 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b111 s25 :=
  (consAll (lamAt d61 c61 (smaller (h224 (SelfintRecursiveTypes.cons s25 ρ) sub89 a0) sub16)) (consAll (lamAt d65 c65 (smaller (h223 (SelfintRecursiveTypes.cons s46 ρ) sub90 a0) sub63)) (consAll (lamAt d71 c71 (smaller (h225 (SelfintRecursiveTypes.cons s25 ρ) sub91 a0) sub61)) (consAll (lamAt d76 c76 (smaller (h226 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub83)) (consAll (lamAt d80 c80 (smaller (h226 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub84)) (consAll (lamAt d81 c81 (smaller (h226 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub85)) (consAll (lamAt d82 c82 (smaller (h226 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub86)) (consAll (lamAt d85 c85 (smaller (h226 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub80)) Positive.none))))))))
theorem h228 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b112 s9 :=
  appAll len27 d27 c27 sub13 ((h188 ρ a0) 27 mem73) (smaller (h227 ρ a0) sub61)
theorem h229 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b112 s9 :=
  botAll ((h189 ρ a0) 0 mem15)
theorem h230 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b114 s9 :=
  botAll ((h228 ρ a0) 0 mem15)
theorem h231 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b114 s9 :=
  botAll ((h229 ρ a0) 0 mem15)
theorem h232 (ρ : Env)  : All tab ρ b115 s82 :=
  (consAll (lamAt d10 c10 (smaller (h231 (SelfintRecursiveTypes.cons s9 ρ) sub13) sub13)) (consAll (lamAt d26 c26 (smaller (h230 (SelfintRecursiveTypes.cons s24 ρ) sub106) sub13)) Positive.none))
theorem h233 (ρ : Env) (a0 : Fits s23 (ρ 0)) : All tab ρ b116 s23 :=
  varAll (fun i hi => a0 i (sub107 i hi))
theorem h234 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b116 s29 :=
  varAll (fun i hi => a0 i (sub62 i hi))
theorem h235 (ρ : Env) (a1 : Fits s20 (ρ 1)) : All tab ρ b117 s20 :=
  varAll (fun i hi => a1 i (sub99 i hi))
theorem h236 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s20 (ρ 1)) : All tab ρ b118 s24 :=
  appAll len28 d28 c28 sub106 ((h233 ρ a0) 28 mem74) (smaller (h235 ρ a1) sub112)
theorem h237 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s20 (ρ 1)) : All tab ρ b118 s9 :=
  appAll len33 d33 c33 sub13 ((h234 ρ a0) 33 mem75) (smaller (h235 ρ a1) sub113)
theorem h238 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s20 (ρ 1)) : All tab ρ b119 s9 :=
  appAll len26 d26 c26 sub13 ((h232 ρ) 26 mem76) (smaller (h236 ρ a0 a1) sub106)
theorem h239 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s20 (ρ 1)) : All tab ρ b119 s9 :=
  appAll len10 d10 c10 sub13 ((h232 ρ) 10 mem77) (smaller (h237 ρ a0 a1) sub13)
theorem h240 (ρ : Env) (a0 : Fits s20 (ρ 0)) : All tab ρ b120 s22 :=
  (consAll (lamAt d25 c25 (smaller (h238 (SelfintRecursiveTypes.cons s23 ρ) sub107 a0) sub13)) (consAll (lamAt d32 c32 (smaller (h239 (SelfintRecursiveTypes.cons s29 ρ) sub62 a0) sub13)) Positive.none))
theorem h241 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b121 s51 :=
  appAll len24 d24 c24 sub18 ((h187 ρ a1) 24 mem78) (smaller (h240 ρ a0) sub108)
theorem h242 (ρ : Env) (a0 : Fits s21 (ρ 0)) : All tab ρ b122 s19 :=
  (consAll (lamAt d22 c22 (smaller (h241 (SelfintRecursiveTypes.cons s20 ρ) sub99 a0) sub18)) Positive.none)
theorem h243 (ρ : Env)  : All tab ρ b123 s18 :=
  (consAll (lamAt d23 c23 (smaller (h242 (SelfintRecursiveTypes.cons s21 ρ) sub109) sub70)) Positive.none)
theorem h244 (ρ : Env)  : All tab ρ b124 s52 :=
  appAll len20 d20 c20 sub100 ((h186 ρ) 20 mem79) (smaller (h243 ρ) sub101)
theorem h245 (ρ : Env) (a0 : Fits s16 (ρ 0)) : All tab ρ b125 s16 :=
  varAll (fun i hi => a0 i (sub34 i hi))
theorem h246 (ρ : Env) (a0 : Fits s35 (ρ 0)) : All tab ρ b125 s35 :=
  varAll (fun i hi => a0 i (sub14 i hi))
theorem h247 (ρ : Env) (a0 : Fits s39 (ρ 0)) : All tab ρ b125 s39 :=
  varAll (fun i hi => a0 i (sub15 i hi))
theorem h248 (ρ : Env) (a0 : Fits s42 (ρ 0)) : All tab ρ b125 s42 :=
  varAll (fun i hi => a0 i (sub16 i hi))
theorem h249 (ρ : Env) (a1 : Fits s14 (ρ 1)) : All tab ρ b126 s14 :=
  varAll (fun i hi => a1 i (sub114 i hi))
theorem h250 (ρ : Env) (a1 : Fits s34 (ρ 1)) : All tab ρ b126 s34 :=
  varAll (fun i hi => a1 i (sub58 i hi))
theorem h251 (ρ : Env) (a1 : Fits s30 (ρ 1)) : All tab ρ b126 s30 :=
  varAll (fun i hi => a1 i (sub60 i hi))
end Blc.H45.H45F9692402711770
