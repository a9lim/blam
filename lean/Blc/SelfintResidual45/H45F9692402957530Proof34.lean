import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof33

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1224 (ρ : Env) (a0 : Fits s68 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s79 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h996 ρ a0 a1) 0 mem23)
theorem h1225 (ρ : Env) (a0 : Fits s88 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s79 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len348 d348 c348 sub105 ((h1038 ρ a0 a1) 348 mem306) (smaller (h1047 ρ a2) sub110)
theorem h1226 (ρ : Env) (a0 : Fits s68 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h996 ρ a0 a1) 0 mem23)
theorem h1227 (ρ : Env) (a0 : Fits s88 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len349 d349 c349 sub105 ((h1038 ρ a0 a1) 349 mem308) (smaller (h1048 ρ a2) sub5)
theorem h1228 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s87 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h1039 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1229 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s3 (ρ 3)) : All tab ρ b61 s100 :=
  appAll len8 d8 c8 sub9 ((h909 ρ a3) 8 mem309) (smaller (h1049 ρ a0 a1 a2) sub4)
theorem h1230 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s4 (ρ 2)) (a3 : Fits s8 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len2 d2 c2 sub5 ((h910 ρ a3) 2 mem103) Positive.none
theorem h1231 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s3 (ρ 3)) : All tab ρ b61 s6 :=
  appAll len20 d20 c20 sub4 ((h909 ρ a3) 20 mem310) (smaller (h1050 ρ a0 a1 a2) sub5)
theorem h1232 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s0 (ρ 2)) (a3 : Fits s8 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len2 d2 c2 sub5 ((h910 ρ a3) 2 mem103) Positive.none
theorem h1233 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s14 (ρ 3)) : All tab ρ b61 s106 :=
  appAll len30 d30 c30 sub185 ((h911 ρ a3) 30 mem311) (smaller (h1051 ρ a0 a1 a2) sub4)
theorem h1234 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s12 (ρ 1)) (a2 : Fits s15 (ρ 2)) (a3 : Fits s8 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len2 d2 c2 sub5 ((h910 ρ a3) 2 mem103) Positive.none
theorem h1235 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s14 (ρ 3)) : All tab ρ b61 s6 :=
  appAll len35 d35 c35 sub4 ((h911 ρ a3) 35 mem312) (smaller (h1052 ρ a0 a1 a2) sub6)
theorem h1236 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s19 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s14 (ρ 3)) : All tab ρ b61 s109 :=
  appAll len42 d42 c42 sub187 ((h911 ρ a3) 42 mem313) (smaller (h1053 ρ a0 a1 a2) sub4)
theorem h1237 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s20 (ρ 2)) (a3 : Fits s8 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len2 d2 c2 sub5 ((h910 ρ a3) 2 mem103) Positive.none
theorem h1238 (ρ : Env) (a0 : Fits s22 (ρ 0)) (a1 : Fits s19 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s14 (ρ 3)) : All tab ρ b61 s6 :=
  appAll len20 d20 c20 sub4 ((h911 ρ a3) 20 mem314) (smaller (h1054 ρ a0 a1 a2) sub5)
theorem h1239 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s0 (ρ 2)) (a3 : Fits s23 (ρ 3)) : All tab ρ b61 s111 :=
  appAll len50 d50 c50 sub188 ((h912 ρ a3) 50 mem315) Positive.none
theorem h1240 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s33 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s14 (ρ 3)) : All tab ρ b61 s120 :=
  appAll len69 d69 c69 sub189 ((h911 ρ a3) 69 mem316) (smaller (h1055 ρ a0 a1 a2) sub160)
theorem h1241 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s34 (ρ 2)) (a3 : Fits s37 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len2 d2 c2 sub5 ((h913 ρ a3) 2 mem317) Positive.none
theorem h1242 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s33 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s14 (ρ 3)) : All tab ρ b61 s36 :=
  appAll len79 d79 c79 sub160 ((h911 ρ a3) 79 mem318) (smaller (h1055 ρ a0 a1 a2) sub160)
theorem h1243 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s0 (ρ 2)) (a3 : Fits s37 (ρ 3)) : All tab ρ b61 s111 :=
  appAll len50 d50 c50 sub188 ((h913 ρ a3) 50 mem319) Positive.none
theorem h1244 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s2 (ρ 2)) (a3 : Fits s39 (ρ 3)) : All tab ρ b61 s11 :=
  botAll ((h914 ρ a3) 0 mem23)
theorem h1245 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s32 (ρ 2)) (a3 : Fits s42 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len90 d90 c90 sub5 ((h915 ρ a3) 90 mem320) (smaller (h1065 ρ a0 a1 a2) sub151)
theorem h1246 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s32 (ρ 3)) : All tab ρ b61 s129 :=
  appAll len96 d96 c96 sub191 ((h916 ρ a3) 96 mem321) (smaller (h1060 ρ a0 a1 a2) sub380)
theorem h1247 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s2 (ρ 3)) : All tab ρ b61 s129 :=
  appAll len102 d102 c102 sub191 ((h917 ρ a3) 102 mem322) (smaller (h1060 ρ a0 a1 a2) sub381)
theorem h1248 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s46 (ρ 1)) (a2 : Fits s48 (ρ 2)) (a3 : Fits s7 (ρ 3)) : All tab ρ b61 s11 :=
  appAll len106 d106 c106 sub5 ((h918 ρ a3) 106 mem323) (smaller (h1056 ρ a0 a1 a2) sub155)
theorem h1249 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s46 (ρ 1)) (a2 : Fits s48 (ρ 2)) (a3 : Fits s7 (ρ 3)) : All tab ρ b61 s51 :=
  appAll len120 d120 c120 sub155 ((h918 ρ a3) 120 mem324) (smaller (h1056 ρ a0 a1 a2) sub155)
theorem h1250 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s32 (ρ 3)) : All tab ρ b61 s136 :=
  appAll len122 d122 c122 sub125 ((h916 ρ a3) 122 mem325) (smaller (h1059 ρ a0 a1 a2) sub380)
theorem h1251 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s2 (ρ 3)) : All tab ρ b61 s136 :=
  appAll len123 d123 c123 sub125 ((h917 ρ a3) 123 mem326) (smaller (h1059 ρ a0 a1 a2) sub381)
theorem h1252 (ρ : Env) (a0 : Fits s59 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s48 (ρ 2)) (a3 : Fits s7 (ρ 3)) : All tab ρ b61 s139 :=
  appAll len127 d127 c127 sub193 ((h918 ρ a3) 127 mem327) (smaller (h1057 ρ a0 a1 a2) sub382)
theorem h1253 (ρ : Env) (a0 : Fits s60 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s48 (ρ 2)) (a3 : Fits s7 (ρ 3)) : All tab ρ b61 s140 :=
  appAll len131 d131 c131 sub163 ((h918 ρ a3) 131 mem328) (smaller (h1058 ρ a0 a1 a2) sub382)
theorem h1254 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s32 (ρ 3)) : All tab ρ b61 s144 :=
  appAll len137 d137 c137 sub115 ((h916 ρ a3) 137 mem329) (smaller (h1061 ρ a0 a1 a2) sub380)
theorem h1255 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s2 (ρ 3)) : All tab ρ b61 s144 :=
  appAll len135 d135 c135 sub115 ((h917 ρ a3) 135 mem330) (smaller (h1061 ρ a0 a1 a2) sub381)
theorem h1256 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s32 (ρ 3)) : All tab ρ b61 s145 :=
  appAll len138 d138 c138 sub383 ((h916 ρ a3) 138 mem331) (smaller (h1059 ρ a0 a1 a2) sub380)
theorem h1257 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) (a3 : Fits s2 (ρ 3)) : All tab ρ b61 s145 :=
  appAll len139 d139 c139 sub383 ((h917 ρ a3) 139 mem332) (smaller (h1059 ρ a0 a1 a2) sub381)
theorem h1258 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s48 (ρ 2)) (a3 : Fits s7 (ρ 3)) : All tab ρ b61 s129 :=
  appAll len141 d141 c141 sub191 ((h918 ρ a3) 141 mem333) (smaller (h1062 ρ a0 a1 a2) sub155)
theorem h1259 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s48 (ρ 2)) (a3 : Fits s7 (ρ 3)) : All tab ρ b61 s136 :=
  appAll len142 d142 c142 sub125 ((h918 ρ a3) 142 mem334) (smaller (h1063 ρ a0 a1 a2) sub155)
end Blc.H45.H45F9692402957530
