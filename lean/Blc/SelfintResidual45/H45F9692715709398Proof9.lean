import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof8

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h324 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a2 : Fits s67 (ρ 2)) : All tab ρ b3 s82 :=
  appAll len140 d140 c140 sub75 ((h235 ρ a2) 140 mem94) (Positive.consAll ((h96 ρ a0) 145 mem91) (Positive.consAll ((h96 ρ a0) 155 mem92) (Positive.consAll ((h80 ρ a0) 169 mem93) Positive.none)))
theorem h325 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s82 :=
  appAll len141 d141 c141 sub75 ((h237 ρ a2) 141 mem64) (smaller (h75 ρ a0) sub75)
theorem h326 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a2 : Fits s89 (ρ 2)) : All tab ρ b3 s82 :=
  appAll len141 d141 c141 sub75 ((h249 ρ a2) 141 mem64) (smaller (h75 ρ a0) sub75)
theorem h327 (ρ : Env) (a0 : Fits s95 (ρ 0)) (a2 : Fits s89 (ρ 2)) : All tab ρ b3 s92 :=
  appAll len146 d146 c146 sub76 ((h248 ρ a2) 146 mem88) (smaller (h78 ρ a0) sub78)
theorem h328 (ρ : Env) (a0 : Fits s107 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s95 :=
  appAll len147 d147 c147 sub78 ((h239 ρ a2) 147 mem65) (smaller (h79 ρ a0) sub78)
theorem h329 (ρ : Env) (a0 : Fits s156 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s130 :=
  appAll len148 d148 c148 sub94 ((h239 ρ a2) 148 mem66) (smaller (h81 ρ a0) sub205)
theorem h330 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s82 :=
  appAll len145 d145 c145 sub75 ((h251 ρ a2) 145 mem49) (smaller (h84 ρ a0) sub84)
theorem h331 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a2 : Fits s82 (ρ 2)) : All tab ρ b3 s94 :=
  appAll len150 d150 c150 sub84 ((h250 ρ a2) 150 mem95) Positive.none
theorem h332 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s94 :=
  appAll len151 d151 c151 sub84 ((h240 ρ a2) 151 mem96) (smaller (h84 ρ a0) sub84)
theorem h333 (ρ : Env) (a0 : Fits s107 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s132 :=
  appAll len154 d154 c154 sub206 ((h239 ρ a2) 154 mem67) (smaller (h85 ρ a0) sub161)
theorem h334 (ρ : Env) (a0 : Fits s156 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s98 :=
  appAll len156 d156 c156 sub161 ((h239 ρ a2) 156 mem68) (smaller (h81 ρ a0) sub207)
theorem h335 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s101 :=
  appAll len159 d159 c159 sub164 ((h251 ρ a2) 159 mem51) (smaller (h87 ρ a0) sub87)
theorem h336 (ρ : Env) (a0 : Fits s97 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s99 :=
  appAll len161 d161 c161 sub87 ((h241 ρ a2) 161 mem52) (smaller (h88 ρ a0) sub88)
theorem h337 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s56 (ρ 2)) : All tab ρ b3 s102 :=
  appAll len160 d160 c160 sub165 ((h242 ρ a2) 160 mem97) (smaller (h4 ρ a0) sub4)
theorem h338 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s86 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len164 d164 c164 sub17 ((h244 ρ a2) 164 mem98) (smaller (h4 ρ a0) sub4)
theorem h339 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s54 (ρ 2)) : All tab ρ b3 s17 :=
  appAll len164 d164 c164 sub17 ((h234 ρ a2) 164 mem46) (smaller (h4 ρ a0) sub4)
theorem h340 (ρ : Env) (a0 : Fits s103 (ρ 0)) (a2 : Fits s41 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len165 d165 c165 sub4 ((h231 ρ a2) 165 mem39) (Positive.consAll ((h90 ρ a0) 6 mem61) (Positive.consAll ((h90 ρ a0) 141 mem64) (Positive.consAll ((h89 ρ a0) 166 mem99) (Positive.consAll ((h89 ρ a0) 167 mem100) Positive.none))))
theorem h341 (ρ : Env) (a0 : Fits s104 (ρ 0)) (a2 : Fits s103 (ρ 2)) : All tab ρ b3 s69 :=
  appAll len166 d166 c166 sub71 ((h252 ρ a2) 166 mem99) (smaller (h91 ρ a0) sub91)
theorem h342 (ρ : Env) (a0 : Fits s105 (ρ 0)) (a2 : Fits s103 (ρ 2)) : All tab ρ b3 s92 :=
  appAll len167 d167 c167 sub76 ((h252 ρ a2) 167 mem100) (smaller (h92 ρ a0) sub92)
theorem h343 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a2 : Fits s103 (ρ 2)) : All tab ρ b3 s3 :=
  appAll len6 d6 c6 sub15 ((h253 ρ a2) 6 mem61) (smaller (h15 ρ a0) sub15)
theorem h344 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a2 : Fits s103 (ρ 2)) : All tab ρ b3 s82 :=
  appAll len141 d141 c141 sub75 ((h253 ρ a2) 141 mem64) (smaller (h75 ρ a0) sub75)
theorem h345 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s82 :=
  appAll len169 d169 c169 sub75 ((h251 ρ a2) 169 mem53) (smaller (h17 ρ a0) sub17)
theorem h346 (ρ : Env) (a0 : Fits s157 (ρ 0)) (a2 : Fits s89 (ρ 2)) : All tab ρ b3 s69 :=
  appAll len139 d139 c139 sub71 ((h248 ρ a2) 139 mem87) (smaller (h93 ρ a0) sub208)
theorem h347 (ρ : Env) (a0 : Fits s130 (ρ 0)) (a2 : Fits s89 (ρ 2)) : All tab ρ b3 s92 :=
  appAll len146 d146 c146 sub76 ((h248 ρ a2) 146 mem88) (smaller (h94 ρ a0) sub209)
theorem h348 (ρ : Env) (a0 : Fits s107 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s130 :=
  appAll len170 d170 c170 sub94 ((h239 ρ a2) 170 mem69) (smaller (h95 ρ a0) sub79)
theorem h349 (ρ : Env) (a0 : Fits s156 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s107 :=
  appAll len171 d171 c171 sub95 ((h239 ρ a2) 171 mem70) (smaller (h81 ρ a0) sub168)
theorem h350 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s94 :=
  appAll len172 d172 c172 sub84 ((h251 ρ a2) 172 mem54) (smaller (h17 ρ a0) sub17)
theorem h351 (ρ : Env) (a0 : Fits s107 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s98 :=
  appAll len173 d173 c173 sub161 ((h239 ρ a2) 173 mem71) (smaller (h95 ρ a0) sub85)
theorem h352 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a2 : Fits s58 (ρ 2)) : All tab ρ b3 s99 :=
  appAll len174 d174 c174 sub87 ((h251 ρ a2) 174 mem55) (smaller (h87 ρ a0) sub87)
theorem h353 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a2 : Fits s56 (ρ 2)) : All tab ρ b3 s6 :=
  appAll len9 d9 c9 sub4 ((h242 ρ a2) 9 mem101) (smaller (h4 ρ a0) sub4)
theorem h354 (ρ : Env) (a0 : Fits s130 (ρ 0)) (a2 : Fits s103 (ρ 2)) : All tab ρ b3 s92 :=
  appAll len167 d167 c167 sub76 ((h252 ρ a2) 167 mem100) (smaller (h94 ρ a0) sub210)
theorem h355 (ρ : Env) (a0 : Fits s157 (ρ 0)) (a2 : Fits s103 (ρ 2)) : All tab ρ b3 s69 :=
  appAll len166 d166 c166 sub71 ((h252 ρ a2) 166 mem99) (smaller (h93 ρ a0) sub211)
theorem h356 (ρ : Env) (a0 : Fits s107 (ρ 0)) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s107 :=
  appAll len175 d175 c175 sub95 ((h239 ρ a2) 175 mem72) (smaller (h95 ρ a0) sub95)
theorem h357 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h358 (ρ : Env) (a0 : Fits s4 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h254 ρ a0 a2) sub4)
theorem h359 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s0 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
end Blc.H45.H45F9692715709398
