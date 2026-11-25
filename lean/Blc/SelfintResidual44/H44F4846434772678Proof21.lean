import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Proof20

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h756 (ρ : Env) (a0 : Fits s76 (ρ 0)) : All tab ρ b12 s170 :=
  appAll len180 d180 c180 sub228 ((h65 ρ a0) 180 mem355) Positive.none
theorem h757 (ρ : Env) (a0 : Fits s77 (ρ 0)) : All tab ρ b12 s173 :=
  appAll len189 d189 c189 sub231 ((h68 ρ a0) 189 mem356) Positive.none
theorem h758 (ρ : Env) (a0 : Fits s79 (ρ 0)) : All tab ρ b12 s177 :=
  appAll len198 d198 c198 sub234 ((h70 ρ a0) 198 mem357) Positive.none
theorem h759 (ρ : Env) (a0 : Fits s80 (ρ 0)) : All tab ρ b12 s181 :=
  appAll len206 d206 c206 sub237 ((h72 ρ a0) 206 mem358) Positive.none
theorem h760 (ρ : Env) (a0 : Fits s82 (ρ 0)) : All tab ρ b12 s184 :=
  appAll len215 d215 c215 sub240 ((h75 ρ a0) 215 mem359) Positive.none
theorem h761 (ρ : Env) (a0 : Fits s83 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h77 ρ a0) 4 mem360) (smaller (h731 ρ a0) sub3)
theorem h762 (ρ : Env) (a0 : Fits s94 (ρ 0)) : All tab ρ b12 s189 :=
  appAll len231 d231 c231 sub245 ((h79 ρ a0) 231 mem361) Positive.none
theorem h763 (ρ : Env) (a0 : Fits s98 (ρ 0)) : All tab ρ b12 s196 :=
  appAll len251 d251 c251 sub252 ((h85 ρ a0) 251 mem362) Positive.none
theorem h764 (ρ : Env) (a0 : Fits s100 (ρ 0)) : All tab ρ b12 s199 :=
  appAll len260 d260 c260 sub255 ((h88 ρ a0) 260 mem363) Positive.none
theorem h765 (ρ : Env) (a0 : Fits s102 (ρ 0)) : All tab ρ b12 s202 :=
  appAll len268 d268 c268 sub258 ((h91 ρ a0) 268 mem364) Positive.none
theorem h766 (ρ : Env) (a0 : Fits s103 (ρ 0)) : All tab ρ b12 s205 :=
  appAll len276 d276 c276 sub261 ((h93 ρ a0) 276 mem365) Positive.none
theorem h767 (ρ : Env) (a0 : Fits s105 (ρ 0)) : All tab ρ b12 s208 :=
  appAll len284 d284 c284 sub264 ((h95 ρ a0) 284 mem366) Positive.none
theorem h768 (ρ : Env) (a0 : Fits s106 (ρ 0)) : All tab ρ b12 s211 :=
  appAll len292 d292 c292 sub267 ((h97 ρ a0) 292 mem367) Positive.none
theorem h769 (ρ : Env) (a0 : Fits s109 (ρ 0)) : All tab ρ b12 s214 :=
  appAll len300 d300 c300 sub270 ((h99 ρ a0) 300 mem368) Positive.none
theorem h770 (ρ : Env) (a0 : Fits s111 (ρ 0)) : All tab ρ b12 s217 :=
  appAll len308 d308 c308 sub273 ((h102 ρ a0) 308 mem369) Positive.none
theorem h771 (ρ : Env) (a0 : Fits s113 (ρ 0)) : All tab ρ b12 s220 :=
  appAll len316 d316 c316 sub276 ((h104 ρ a0) 316 mem370) Positive.none
theorem h772 (ρ : Env) (a0 : Fits s115 (ρ 0)) : All tab ρ b12 s223 :=
  appAll len324 d324 c324 sub279 ((h107 ρ a0) 324 mem371) Positive.none
theorem h773 (ρ : Env) (a0 : Fits s116 (ρ 0)) : All tab ρ b12 s226 :=
  appAll len332 d332 c332 sub282 ((h109 ρ a0) 332 mem372) Positive.none
theorem h774 (ρ : Env) (a0 : Fits s117 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h111 ρ a0) 4 mem373) (smaller (h732 ρ a0) sub3)
theorem h775 (ρ : Env)  : All tab ρ b13 s1 :=
  (consAll (lamAt d2 c2 (smaller (h733 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub3)) (consAll (lamAt d3 c3 (smaller (h734 (SelfintRecursiveTypes.cons s2 ρ) sub373) sub3)) (consAll (lamAt d4 c4 (smaller (h736 (SelfintRecursiveTypes.cons s3 ρ) sub3) sub3)) (consAll (lamAt d5 c5 (smaller (h735 (SelfintRecursiveTypes.cons s4 ρ) sub379) sub373)) (consAll (lamAt d8 c8 (smaller (h737 (SelfintRecursiveTypes.cons s7 ρ) sub4) sub3)) (consAll (lamAt d16 c16 (smaller (h738 (SelfintRecursiveTypes.cons s11 ρ) sub164) sub3)) (consAll (lamAt d17 c17 (smaller (h739 (SelfintRecursiveTypes.cons s12 ρ) sub128) sub3)) (consAll (lamAt d26 c26 (smaller (h740 (SelfintRecursiveTypes.cons s17 ρ) sub13) sub180)) (consAll (lamAt d34 c34 (smaller (h741 (SelfintRecursiveTypes.cons s19 ρ) sub15) sub183)) (consAll (lamAt d42 c42 (smaller (h742 (SelfintRecursiveTypes.cons s22 ρ) sub18) sub186)) (consAll (lamAt d49 c49 (smaller (h743 (SelfintRecursiveTypes.cons s26 ρ) sub132) sub3)) (consAll (lamAt d56 c56 (smaller (h744 (SelfintRecursiveTypes.cons s30 ρ) sub133) sub3)) (consAll (lamAt d71 c71 (smaller (h745 (SelfintRecursiveTypes.cons s37 ρ) sub29) sub194)) (consAll (lamAt d82 c82 (smaller (h746 (SelfintRecursiveTypes.cons s39 ρ) sub34) sub197)) (consAll (lamAt d90 c90 (smaller (h747 (SelfintRecursiveTypes.cons s40 ρ) sub36) sub200)) (consAll (lamAt d94 c94 (smaller (h748 (SelfintRecursiveTypes.cons s42 ρ) sub138) sub3)) (consAll (lamAt d106 c106 (smaller (h749 (SelfintRecursiveTypes.cons s50 ρ) sub41) sub204)) (consAll (lamAt d120 c120 (smaller (h750 (SelfintRecursiveTypes.cons s58 ρ) sub45) sub209)) (consAll (lamAt d131 c131 (smaller (h751 (SelfintRecursiveTypes.cons s59 ρ) sub50) sub212)) (consAll (lamAt d140 c140 (smaller (h752 (SelfintRecursiveTypes.cons s62 ρ) sub53) sub215)) (consAll (lamAt d148 c148 (smaller (h753 (SelfintRecursiveTypes.cons s64 ρ) sub56) sub218)) (consAll (lamAt d151 c151 (smaller (h754 (SelfintRecursiveTypes.cons s65 ρ) sub145) sub3)) (consAll (lamAt d162 c162 (smaller (h755 (SelfintRecursiveTypes.cons s71 ρ) sub60) sub222)) (consAll (lamAt d179 c179 (smaller (h756 (SelfintRecursiveTypes.cons s76 ρ) sub65) sub228)) (consAll (lamAt d188 c188 (smaller (h757 (SelfintRecursiveTypes.cons s77 ρ) sub68) sub231)) (consAll (lamAt d197 c197 (smaller (h758 (SelfintRecursiveTypes.cons s79 ρ) sub70) sub234)) (consAll (lamAt d205 c205 (smaller (h759 (SelfintRecursiveTypes.cons s80 ρ) sub72) sub237)) (consAll (lamAt d214 c214 (smaller (h760 (SelfintRecursiveTypes.cons s82 ρ) sub75) sub240)) (consAll (lamAt d217 c217 (smaller (h761 (SelfintRecursiveTypes.cons s83 ρ) sub150) sub3)) (consAll (lamAt d230 c230 (smaller (h762 (SelfintRecursiveTypes.cons s94 ρ) sub79) sub245)) (consAll (lamAt d250 c250 (smaller (h763 (SelfintRecursiveTypes.cons s98 ρ) sub85) sub252)) (consAll (lamAt d259 c259 (smaller (h764 (SelfintRecursiveTypes.cons s100 ρ) sub88) sub255)) (consAll (lamAt d267 c267 (smaller (h765 (SelfintRecursiveTypes.cons s102 ρ) sub91) sub258)) (consAll (lamAt d275 c275 (smaller (h766 (SelfintRecursiveTypes.cons s103 ρ) sub93) sub261)) (consAll (lamAt d283 c283 (smaller (h767 (SelfintRecursiveTypes.cons s105 ρ) sub95) sub264)) (consAll (lamAt d291 c291 (smaller (h768 (SelfintRecursiveTypes.cons s106 ρ) sub97) sub267)) (consAll (lamAt d299 c299 (smaller (h769 (SelfintRecursiveTypes.cons s109 ρ) sub99) sub270)) (consAll (lamAt d307 c307 (smaller (h770 (SelfintRecursiveTypes.cons s111 ρ) sub102) sub273)) (consAll (lamAt d315 c315 (smaller (h771 (SelfintRecursiveTypes.cons s113 ρ) sub104) sub276)) (consAll (lamAt d323 c323 (smaller (h772 (SelfintRecursiveTypes.cons s115 ρ) sub107) sub279)) (consAll (lamAt d331 c331 (smaller (h773 (SelfintRecursiveTypes.cons s116 ρ) sub109) sub282)) (consAll (lamAt d334 c334 (smaller (h774 (SelfintRecursiveTypes.cons s117 ρ) sub162) sub3)) Positive.none))))))))))))))))))))))))))))))))))))))))))
theorem h776 (ρ : Env)  : All tab ρ b14 s3 :=
  appAll len2 d2 c2 sub3 ((h117 ρ) 2 mem374) (smaller (h775 ρ) sub0)
end Blc.H44.H44F4846434772678
