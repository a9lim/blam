import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4786765230946Proof8

set_option Elab.async false
namespace Blc.H44.H44F4786765230946
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h324 (ρ : Env) (a0 : Fits s69 (ρ 0)) : All tab ρ b9 s66 :=
  (consAll (lamAt d36 c36 (smaller (h305 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub199)) (consAll (lamAt d97 c97 (smaller (h297 (SelfintRecursiveTypes.cons s33 ρ) sub18 a0) sub166)) (consAll (lamAt d126 c126 (smaller (h305 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub200)) (consAll (lamAt d129 c129 (smaller (h305 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub201)) Positive.none))))
theorem h325 (ρ : Env) (a0 : Fits s71 (ρ 0)) : All tab ρ b9 s100 :=
  (consAll (lamAt d108 c108 (smaller (h299 (SelfintRecursiveTypes.cons s52 ρ) sub38 a0) sub32)) Positive.none)
theorem h326 (ρ : Env) (a0 : Fits s73 (ρ 0)) : All tab ρ b9 s101 :=
  (consAll (lamAt d110 c110 (smaller (h300 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub32)) Positive.none)
theorem h327 (ρ : Env) (a0 : Fits s76 (ρ 0)) : All tab ρ b9 s73 :=
  (consAll (lamAt d36 c36 (smaller (h302 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub199)) (consAll (lamAt d114 c114 (smaller (h301 (SelfintRecursiveTypes.cons s33 ρ) sub18 a0) sub170)) (consAll (lamAt d126 c126 (smaller (h302 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub200)) (consAll (lamAt d129 c129 (smaller (h302 (SelfintRecursiveTypes.cons s29 ρ) sub19 a0) sub201)) Positive.none))))
theorem h328 (ρ : Env)  : All tab ρ b10 s143 :=
  (consAll (lamAt d6 c6 (smaller (h306 (SelfintRecursiveTypes.cons s4 ρ) sub202) sub203)) (consAll (lamAt d9 c9 (smaller (h307 (SelfintRecursiveTypes.cons s7 ρ) sub109) sub151)) (consAll (lamAt d14 c14 (smaller (h308 (SelfintRecursiveTypes.cons s12 ρ) sub6) sub109)) (consAll (lamAt d16 c16 (smaller (h310 (SelfintRecursiveTypes.cons s14 ρ) sub152) sub153)) (consAll (lamAt d18 c18 (smaller (h309 (SelfintRecursiveTypes.cons s3 ρ) sub5) sub63)) (consAll (lamAt d23 c23 (smaller (h311 (SelfintRecursiveTypes.cons s18 ρ) sub112) sub133)) (consAll (lamAt d28 c28 (smaller (h312 (SelfintRecursiveTypes.cons s23 ρ) sub77) sub112)) (consAll (lamAt d35 c35 (smaller (h313 (SelfintRecursiveTypes.cons s28 ρ) sub154) sub155)) (consAll (lamAt d38 c38 (smaller (h314 (SelfintRecursiveTypes.cons s31 ρ) sub115) sub134)) (consAll (lamAt d43 c43 (smaller (h315 (SelfintRecursiveTypes.cons s35 ρ) sub71) sub115)) (consAll (lamAt d55 c55 (smaller (h316 (SelfintRecursiveTypes.cons s42 ρ) sub156) sub157)) (consAll (lamAt d58 c58 (smaller (h317 (SelfintRecursiveTypes.cons s44 ρ) sub119) sub136)) (consAll (lamAt d63 c63 (smaller (h318 (SelfintRecursiveTypes.cons s47 ρ) sub103) sub119)) (consAll (lamAt d72 c72 (smaller (h319 (SelfintRecursiveTypes.cons s53 ρ) sub160) sub161)) (consAll (lamAt d75 c75 (smaller (h320 (SelfintRecursiveTypes.cons s55 ρ) sub123) sub137)) (consAll (lamAt d80 c80 (smaller (h321 (SelfintRecursiveTypes.cons s58 ρ) sub102) sub123)) (consAll (lamAt d92 c92 (smaller (h322 (SelfintRecursiveTypes.cons s64 ρ) sub164) sub165)) (consAll (lamAt d95 c95 (smaller (h323 (SelfintRecursiveTypes.cons s66 ρ) sub127) sub139)) (consAll (lamAt d100 c100 (smaller (h324 (SelfintRecursiveTypes.cons s69 ρ) sub98) sub127)) (consAll (lamAt d109 c109 (smaller (h325 (SelfintRecursiveTypes.cons s71 ρ) sub168) sub169)) (consAll (lamAt d112 c112 (smaller (h326 (SelfintRecursiveTypes.cons s73 ρ) sub130) sub140)) (consAll (lamAt d117 c117 (smaller (h327 (SelfintRecursiveTypes.cons s76 ρ) sub94) sub130)) Positive.none))))))))))))))))))))))
theorem h329 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b11 s81 :=
  appAll len9 d9 c9 sub151 ((h328 ρ) 9 mem129) (smaller (h120 ρ a0 a1) sub109)
theorem h330 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s2 (ρ 1)) : All tab ρ b11 s7 :=
  appAll len14 d14 c14 sub109 ((h328 ρ) 14 mem130) (smaller (h121 ρ a0 a1) sub6)
theorem h331 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s4 :=
  (consAll (lamAt d8 c8 (smaller (h329 (SelfintRecursiveTypes.cons s6 ρ) sub62 a0) sub151)) (consAll (lamAt d13 c13 (smaller (h330 (SelfintRecursiveTypes.cons s11 ρ) sub63 a0) sub109)) Positive.none))
theorem h332 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b13 s80 :=
  appAll len6 d6 c6 sub203 ((h328 ρ) 6 mem131) (smaller (h331 ρ a0) sub202)
theorem h333 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b14 s8 :=
  appAll len5 d5 c5 sub106 ((h332 ρ a0) 5 mem132) (smaller (h272 ρ) sub204)
theorem h334 (ρ : Env)  : All tab ρ b15 s144 :=
  (consAll (lamAt d4 c4 (smaller (h333 (SelfintRecursiveTypes.cons s2 ρ) sub3) sub106)) Positive.none)
theorem h335 (ρ : Env)  : All tab ρ b16 s8 :=
  appAll len4 d4 c4 sub106 ((h334 ρ) 4 mem133) (smaller (h328 ρ) sub205)
theorem h336 (ρ : Env)  : All tab ρ b17 s1 :=
  (consAll (lamAt d2 c2 (smaller (h272 (SelfintRecursiveTypes.cons s0 ρ)) sub206)) Positive.none)
theorem h337 (ρ : Env)  : All tab ρ b18 s1 :=
  appAll len3 d3 c3 sub107 ((h335 ρ) 3 mem134) (smaller (h336 ρ) sub107)
theorem h338 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b40 s79 :=
  appAll len2 d2 c2 sub207 ((h337 ρ) 2 mem135) Positive.none
end Blc.H44.H44F4786765230946
