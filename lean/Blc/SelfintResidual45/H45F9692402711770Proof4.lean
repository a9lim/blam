import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof3

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h144 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s73 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s45 :=
  appAll len94 d94 c94 sub63 ((h116 ρ a1) 94 mem57) (smaller (h130 ρ a0 a2) sub77)
theorem h145 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b66 s54 :=
  appAll len78 d78 c78 sub19 ((h113 ρ a1) 78 mem58) (smaller (h128 ρ a0 a2) sub61)
theorem h146 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b67 s45 :=
  (consAll (lamAt d61 c61 (smaller (h131 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub16)) (consAll (lamAt d64 c64 (smaller (h132 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub87)) (consAll (lamAt d68 c68 (smaller (h145 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub33)) (consAll (lamAt d71 c71 (smaller (h145 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub31)) (consAll (lamAt d78 c78 (smaller (h145 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub19)) (consAll (lamAt d79 c79 (smaller (h145 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub68)) Positive.none))))))
theorem h147 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b67 s42 :=
  (consAll (lamAt d60 c60 (smaller (h133 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub17)) Positive.none)
theorem h148 (ρ : Env) (a0 : Fits s72 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b67 s25 :=
  (consAll (lamAt d61 c61 (smaller (h134 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub16)) (consAll (lamAt d65 c65 (smaller (h135 (SelfintRecursiveTypes.cons s46 ρ) sub65 a0 a1) sub63)) (consAll (lamAt d71 c71 (smaller (h136 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub61)) (consAll (lamAt d76 c76 (smaller (h137 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub83)) (consAll (lamAt d80 c80 (smaller (h137 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub84)) (consAll (lamAt d81 c81 (smaller (h137 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub85)) (consAll (lamAt d82 c82 (smaller (h137 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub86)) (consAll (lamAt d85 c85 (smaller (h137 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub80)) Positive.none))))))))
theorem h149 (ρ : Env) (a0 : Fits s73 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b67 s56 :=
  (consAll (lamAt d34 c34 (smaller (h139 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub62)) (consAll (lamAt d60 c60 (smaller (h142 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub17)) (consAll (lamAt d61 c61 (smaller (h138 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub16)) (consAll (lamAt d64 c64 (smaller (h140 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub64)) (consAll (lamAt d65 c65 (smaller (h144 (SelfintRecursiveTypes.cons s46 ρ) sub65 a0 a1) sub63)) (consAll (lamAt d68 c68 (smaller (h140 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub33)) (consAll (lamAt d71 c71 (smaller (h141 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub61)) (consAll (lamAt d76 c76 (smaller (h140 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub67)) (consAll (lamAt d78 c78 (smaller (h140 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub19)) (consAll (lamAt d79 c79 (smaller (h140 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub68)) (consAll (lamAt d80 c80 (smaller (h140 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub32)) (consAll (lamAt d81 c81 (smaller (h140 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub33)) (consAll (lamAt d82 c82 (smaller (h140 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub31)) (consAll (lamAt d85 c85 (smaller (h140 (SelfintRecursiveTypes.cons s47 ρ) sub66 a0 a1) sub68)) Positive.none))))))))))))))
theorem h150 (ρ : Env) (a0 : Fits s45 (ρ 0)) : All tab ρ b68 s25 :=
  (consAll (lamAt d61 c61 (smaller (h147 (SelfintRecursiveTypes.cons s25 ρ) sub89 a0) sub16)) (consAll (lamAt d65 c65 (smaller (h146 (SelfintRecursiveTypes.cons s46 ρ) sub90 a0) sub63)) (consAll (lamAt d71 c71 (smaller (h148 (SelfintRecursiveTypes.cons s25 ρ) sub91 a0) sub61)) (consAll (lamAt d76 c76 (smaller (h149 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub83)) (consAll (lamAt d80 c80 (smaller (h149 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub84)) (consAll (lamAt d81 c81 (smaller (h149 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub85)) (consAll (lamAt d82 c82 (smaller (h149 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub86)) (consAll (lamAt d85 c85 (smaller (h149 (SelfintRecursiveTypes.cons s47 ρ) sub92 a0) sub80)) Positive.none))))))))
theorem h151 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b69 s9 :=
  botAll ((h111 ρ a0) 0 mem15)
theorem h152 (ρ : Env) (a0 : Fits s45 (ρ 0)) : All tab ρ b69 s55 :=
  appAll len64 d64 c64 sub87 ((h112 ρ a0) 64 mem59) (smaller (h150 ρ a0) sub61)
theorem h153 (ρ : Env) (a0 : Fits s45 (ρ 0)) : All tab ρ b70 s30 :=
  varAll (fun i hi => a0 i (sub93 i hi))
theorem h154 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b71 s51 :=
  botAll ((h151 ρ a0) 0 mem15)
theorem h155 (ρ : Env) (a0 : Fits s45 (ρ 0)) : All tab ρ b71 s42 :=
  appAll len63 d63 c63 sub16 ((h152 ρ a0) 63 mem60) (smaller (h153 ρ a0) sub60)
theorem h156 (ρ : Env)  : All tab ρ b72 s75 :=
  (consAll (lamAt d30 c30 (smaller (h154 (SelfintRecursiveTypes.cons s9 ρ) sub13) sub18)) (consAll (lamAt d62 c62 (smaller (h155 (SelfintRecursiveTypes.cons s45 ρ) sub63) sub16)) Positive.none))
theorem h157 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b73 s27 :=
  varAll (fun i hi => a0 i (sub94 i hi))
theorem h158 (ρ : Env) (a0 : Fits s76 (ρ 0)) : All tab ρ b73 s76 :=
  varAll (fun i hi => a0 i (sub95 i hi))
theorem h159 (ρ : Env) (a1 : Fits s17 (ρ 1)) : All tab ρ b74 s17 :=
  varAll (fun i hi => a1 i (sub17 i hi))
theorem h160 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b75 s9 :=
  appAll len31 d31 c31 sub13 ((h157 ρ a0) 31 mem61) (smaller (h159 ρ a1) sub96)
theorem h161 (ρ : Env) (a0 : Fits s76 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b75 s45 :=
  appAll len65 d65 c65 sub63 ((h158 ρ a0) 65 mem62) (smaller (h159 ρ a1) sub97)
theorem h162 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b76 s51 :=
  appAll len30 d30 c30 sub18 ((h156 ρ) 30 mem63) (smaller (h160 ρ a0 a1) sub13)
theorem h163 (ρ : Env) (a0 : Fits s76 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b76 s42 :=
  appAll len62 d62 c62 sub16 ((h156 ρ) 62 mem64) (smaller (h161 ρ a0 a1) sub63)
theorem h164 (ρ : Env) (a0 : Fits s17 (ρ 0)) : All tab ρ b77 s20 :=
  (consAll (lamAt d29 c29 (smaller (h162 (SelfintRecursiveTypes.cons s27 ρ) sub94 a0) sub22)) (consAll (lamAt d61 c61 (smaller (h163 (SelfintRecursiveTypes.cons s25 ρ) sub98 a0) sub16)) (consAll (lamAt d70 c70 (smaller (h162 (SelfintRecursiveTypes.cons s27 ρ) sub94 a0) sub27)) Positive.none)))
theorem h165 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s19 (ρ 1)) : All tab ρ b78 s51 :=
  appAll len22 d22 c22 sub18 ((h110 ρ a1) 22 mem65) (smaller (h164 ρ a0) sub99)
theorem h166 (ρ : Env) (a0 : Fits s19 (ρ 0)) : All tab ρ b79 s52 :=
  (consAll (lamAt d19 c19 (smaller (h165 (SelfintRecursiveTypes.cons s17 ρ) sub17 a0) sub18)) (consAll (lamAt d48 c48 (smaller (h165 (SelfintRecursiveTypes.cons s17 ρ) sub17 a0) sub22)) Positive.none))
theorem h167 (ρ : Env)  : All tab ρ b80 s77 :=
  (consAll (lamAt d21 c21 (smaller (h166 (SelfintRecursiveTypes.cons s19 ρ) sub70) sub100)) Positive.none)
theorem h168 (ρ : Env) (a0 : Fits s18 (ρ 0)) : All tab ρ b81 s18 :=
  varAll (fun i hi => a0 i (sub101 i hi))
theorem h169 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b82 s78 :=
  varAll (fun i hi => a0 i (sub102 i hi))
theorem h170 (ρ : Env) (a1 : Fits s26 (ρ 1)) : All tab ρ b83 s26 :=
  varAll (fun i hi => a1 i (sub103 i hi))
theorem h171 (ρ : Env) (a3 : Fits s22 (ρ 3)) : All tab ρ b84 s79 :=
  varAll (fun i hi => a3 i (sub104 i hi))
theorem h172 (ρ : Env) (a0 : Fits s28 (ρ 0)) : All tab ρ b85 s28 :=
  varAll (fun i hi => a0 i (sub105 i hi))
theorem h173 (ρ : Env) (a1 : Fits s25 (ρ 1)) : All tab ρ b86 s25 :=
  varAll (fun i hi => a1 i (sub61 i hi))
theorem h174 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b87 s29 :=
  appAll len34 d34 c34 sub62 ((h172 ρ a0) 34 mem66) (smaller (h173 ρ a1) sub61)
theorem h175 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s25 (ρ 1)) (a3 : Fits s22 (ρ 3)) : All tab ρ b88 s9 :=
  appAll len32 d32 c32 sub13 ((h171 ρ a3) 32 mem67) (smaller (h174 ρ a0 a1) sub62)
theorem h176 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a2 : Fits s22 (ρ 2)) : All tab ρ b89 s27 :=
  (consAll (lamAt d31 c31 (smaller (h175 (SelfintRecursiveTypes.cons s28 ρ) sub105 a0 a2) sub13)) Positive.none)
theorem h177 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s26 (ρ 1)) (a2 : Fits s22 (ρ 2)) : All tab ρ b90 s9 :=
  appAll len29 d29 c29 sub13 ((h170 ρ a1) 29 mem68) (smaller (h176 ρ a0 a2) sub94)
theorem h178 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s26 (ρ 1)) (a2 : Fits s22 (ρ 2)) : All tab ρ b90 s54 :=
  appAll len70 d70 c70 sub19 ((h170 ρ a1) 70 mem69) (smaller (h176 ρ a0 a2) sub94)
theorem h179 (ρ : Env) (a0 : Fits s26 (ρ 0)) (a1 : Fits s22 (ρ 1)) : All tab ρ b91 s24 :=
  (consAll (lamAt d27 c27 (smaller (h177 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub13)) (consAll (lamAt d61 c61 (smaller (h178 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub32)) (consAll (lamAt d68 c68 (smaller (h178 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub33)) (consAll (lamAt d71 c71 (smaller (h178 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub31)) (consAll (lamAt d78 c78 (smaller (h178 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub19)) (consAll (lamAt d79 c79 (smaller (h178 (SelfintRecursiveTypes.cons s25 ρ) sub61 a0 a1) sub68)) Positive.none))))))
end Blc.H45.H45F9692402711770
