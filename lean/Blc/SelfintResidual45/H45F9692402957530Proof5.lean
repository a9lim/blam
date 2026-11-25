import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof4

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h180 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len370 d370 c370 sub118 ((h108 ρ a0) 370 mem47) (smaller (h121 ρ a1) sub5)
theorem h181 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b20 s84 :=
  botAll ((h102 ρ a0) 0 mem23)
theorem h182 (ρ : Env) (a0 : Fits s87 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s144 :=
  appAll len135 d135 c135 sub115 ((h112 ρ a0) 135 mem11) (smaller (h114 ρ a1) sub105)
theorem h183 (ρ : Env) (a0 : Fits s1 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b21 s11 :=
  appAll len24 d24 c24 sub5 ((h59 ρ a2) 24 mem48) (smaller (h122 ρ a0 a1) sub111)
theorem h184 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s13 (ρ 2)) : All tab ρ b21 s108 :=
  appAll len38 d38 c38 sub121 ((h60 ρ a2) 38 mem49) (smaller (h123 ρ a0 a1) sub112)
theorem h185 (ρ : Env) (a0 : Fits s19 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s19 (ρ 2)) : All tab ρ b21 s118 :=
  appAll len63 d63 c63 sub122 ((h61 ρ a2) 63 mem50) (smaller (h125 ρ a0 a1) sub114)
theorem h186 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s33 (ρ 2)) : All tab ρ b21 s124 :=
  appAll len80 d80 c80 sub123 ((h62 ρ a2) 80 mem51) (smaller (h124 ρ a0 a1) sub113)
theorem h187 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len121 d121 c121 sub125 ((h63 ρ a2) 121 mem52) (smaller (h126 ρ a0 a1) sub124)
theorem h188 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b21 s11 :=
  appAll len116 d116 c116 sub5 ((h64 ρ a2) 116 mem53) (smaller (h129 ρ a0 a1) sub5)
theorem h189 (ρ : Env) (a0 : Fits s45 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b21 s11 :=
  appAll len116 d116 c116 sub5 ((h65 ρ a2) 116 mem53) (smaller (h127 ρ a0 a1) sub5)
theorem h190 (ρ : Env) (a0 : Fits s45 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s45 (ρ 2)) : All tab ρ b21 s11 :=
  appAll len116 d116 c116 sub5 ((h65 ρ a2) 116 mem53) (smaller (h128 ρ a0 a1) sub5)
theorem h191 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b21 s148 :=
  appAll len160 d160 c160 sub126 ((h66 ρ a2) 160 mem54) (smaller (h130 ρ a0 a1) sub116)
theorem h192 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b21 s11 :=
  botAll ((h67 ρ a2) 0 mem23)
theorem h193 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b21 s148 :=
  appAll len160 d160 c160 sub126 ((h66 ρ a2) 160 mem54) (smaller (h131 ρ a0 a1) sub116)
theorem h194 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len121 d121 c121 sub125 ((h63 ρ a2) 121 mem52) (smaller (h132 ρ a0 a1) sub124)
theorem h195 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len188 d188 c188 sub125 ((h68 ρ a2) 188 mem55) (smaller (h126 ρ a0 a1) sub127)
theorem h196 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len188 d188 c188 sub125 ((h68 ρ a2) 188 mem55) (smaller (h132 ρ a0 a1) sub127)
theorem h197 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b21 s155 :=
  appAll len189 d189 c189 sub128 ((h69 ρ a2) 189 mem56) (smaller (h133 ρ a0 a1) sub117)
theorem h198 (ρ : Env) (a0 : Fits s55 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s55 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len191 d191 c191 sub125 ((h70 ρ a2) 191 mem57) (smaller (h145 ρ a0 a1) sub119)
theorem h199 (ρ : Env) (a0 : Fits s76 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s76 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len201 d201 c201 sub125 ((h71 ρ a2) 201 mem58) (smaller (h139 ρ a0 a1) sub110)
theorem h200 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b21 s155 :=
  appAll len189 d189 c189 sub128 ((h69 ρ a2) 189 mem56) (smaller (h134 ρ a0 a1) sub117)
theorem h201 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b21 s11 :=
  appAll len116 d116 c116 sub5 ((h64 ρ a2) 116 mem53) (smaller (h135 ρ a0 a1) sub5)
theorem h202 (ρ : Env) (a0 : Fits s78 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len188 d188 c188 sub125 ((h68 ρ a2) 188 mem55) (smaller (h136 ρ a0 a1) sub127)
theorem h203 (ρ : Env) (a0 : Fits s78 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len121 d121 c121 sub125 ((h63 ρ a2) 121 mem52) (smaller (h136 ρ a0 a1) sub124)
theorem h204 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s78 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len250 d250 c250 sub125 ((h72 ρ a2) 250 mem59) (smaller (h126 ρ a0 a1) sub129)
theorem h205 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s78 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len250 d250 c250 sub125 ((h72 ρ a2) 250 mem59) (smaller (h132 ρ a0 a1) sub129)
theorem h206 (ρ : Env) (a0 : Fits s78 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s78 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len250 d250 c250 sub125 ((h72 ρ a2) 250 mem59) (smaller (h136 ρ a0 a1) sub129)
theorem h207 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b21 s141 :=
  appAll len251 d251 c251 sub130 ((h73 ρ a2) 251 mem60) (smaller (h140 ρ a0 a1) sub110)
theorem h208 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s24 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len188 d188 c188 sub125 ((h68 ρ a2) 188 mem55) (smaller (h137 ρ a0 a1) sub127)
theorem h209 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len121 d121 c121 sub125 ((h63 ρ a2) 121 mem52) (smaller (h137 ρ a0 a1) sub124)
theorem h210 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s78 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len250 d250 c250 sub125 ((h72 ρ a2) 250 mem59) (smaller (h137 ρ a0 a1) sub129)
theorem h211 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len265 d265 c265 sub125 ((h74 ρ a2) 265 mem61) (smaller (h126 ρ a0 a1) sub131)
theorem h212 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len265 d265 c265 sub125 ((h74 ρ a2) 265 mem61) (smaller (h132 ρ a0 a1) sub131)
theorem h213 (ρ : Env) (a0 : Fits s78 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len265 d265 c265 sub125 ((h74 ρ a2) 265 mem61) (smaller (h136 ρ a0 a1) sub131)
theorem h214 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b21 s136 :=
  appAll len265 d265 c265 sub125 ((h74 ρ a2) 265 mem61) (smaller (h137 ρ a0 a1) sub131)
theorem h215 (ρ : Env) (a0 : Fits s84 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b21 s11 :=
  botAll ((h67 ρ a2) 0 mem23)
end Blc.H45.H45F9692402957530
