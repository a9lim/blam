import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Proof19

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h720 (ρ : Env) (a0 : Fits s117 (ρ 0)) : All tab ρ b10 s118 :=
  (consAll (lamAt d339 c339 (smaller (h708 (SelfintRecursiveTypes.cons s32 ρ) sub141 a0) sub113)) Positive.none)
theorem h721 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b11 s2 :=
  appAll len5 d5 c5 sub373 ((h0 ρ a0) 5 mem321) (smaller (h709 ρ a0) sub379)
theorem h722 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len7 d7 c7 sub3 ((h1 ρ a0) 7 mem322) (smaller (h710 ρ a0) sub5)
theorem h723 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len10 d10 c10 sub3 ((h4 ρ a0) 10 mem323) (smaller (h711 ρ a0) sub7)
theorem h724 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b11 s5 :=
  appAll len14 d14 c14 sub8 ((h2 ρ a0) 14 mem324) (smaller (h712 ρ a0) sub10)
theorem h725 (ρ : Env) (a0 : Fits s11 (ρ 0)) : All tab ρ b11 s12 :=
  appAll len22 d22 c22 sub128 ((h9 ρ a0) 22 mem325) (smaller (h713 ρ a0) sub129)
theorem h726 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len48 d48 c48 sub3 ((h11 ρ a0) 48 mem326) (smaller (h714 ρ a0) sub24)
theorem h727 (ρ : Env) (a0 : Fits s26 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len54 d54 c54 sub3 ((h22 ρ a0) 54 mem327) (smaller (h715 ρ a0) sub28)
theorem h728 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len93 d93 c93 sub3 ((h25 ρ a0) 93 mem328) (smaller (h716 ρ a0) sub40)
theorem h729 (ρ : Env) (a0 : Fits s42 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len99 d99 c99 sub3 ((h38 ρ a0) 99 mem329) (smaller (h717 ρ a0) sub44)
theorem h730 (ρ : Env) (a0 : Fits s65 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len153 d153 c153 sub3 ((h58 ρ a0) 153 mem330) (smaller (h718 ρ a0) sub64)
theorem h731 (ρ : Env) (a0 : Fits s83 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len219 d219 c219 sub3 ((h77 ρ a0) 219 mem331) (smaller (h719 ρ a0) sub84)
theorem h732 (ρ : Env) (a0 : Fits s117 (ρ 0)) : All tab ρ b11 s3 :=
  appAll len336 d336 c336 sub3 ((h111 ρ a0) 336 mem332) (smaller (h720 ρ a0) sub114)
theorem h733 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len3 d3 c3 sub3 ((h0 ρ a0) 3 mem333) (smaller (h721 ρ a0) sub373)
theorem h734 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h1 ρ a0) 4 mem334) (smaller (h722 ρ a0) sub3)
theorem h735 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b12 s2 :=
  appAll len6 d6 c6 sub373 ((h2 ρ a0) 6 mem335) (smaller (h724 ρ a0) sub8)
theorem h736 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b12 s3 :=
  botAll ((h3 ρ a0) 0 mem1)
theorem h737 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h4 ρ a0) 4 mem336) (smaller (h723 ρ a0) sub3)
theorem h738 (ρ : Env) (a0 : Fits s11 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len17 d17 c17 sub3 ((h9 ρ a0) 17 mem337) (smaller (h725 ρ a0) sub128)
theorem h739 (ρ : Env) (a0 : Fits s12 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h11 ρ a0) 4 mem338) (smaller (h726 ρ a0) sub3)
theorem h740 (ρ : Env) (a0 : Fits s17 (ρ 0)) : All tab ρ b12 s122 :=
  appAll len27 d27 c27 sub180 ((h13 ρ a0) 27 mem339) Positive.none
theorem h741 (ρ : Env) (a0 : Fits s19 (ρ 0)) : All tab ρ b12 s125 :=
  appAll len35 d35 c35 sub183 ((h15 ρ a0) 35 mem340) Positive.none
theorem h742 (ρ : Env) (a0 : Fits s22 (ρ 0)) : All tab ρ b12 s128 :=
  appAll len43 d43 c43 sub186 ((h18 ρ a0) 43 mem341) Positive.none
theorem h743 (ρ : Env) (a0 : Fits s26 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h22 ρ a0) 4 mem342) (smaller (h727 ρ a0) sub3)
theorem h744 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h25 ρ a0) 4 mem343) (smaller (h728 ρ a0) sub3)
theorem h745 (ρ : Env) (a0 : Fits s37 (ρ 0)) : All tab ρ b12 s136 :=
  appAll len72 d72 c72 sub194 ((h29 ρ a0) 72 mem344) Positive.none
theorem h746 (ρ : Env) (a0 : Fits s39 (ρ 0)) : All tab ρ b12 s139 :=
  appAll len83 d83 c83 sub197 ((h34 ρ a0) 83 mem345) Positive.none
theorem h747 (ρ : Env) (a0 : Fits s40 (ρ 0)) : All tab ρ b12 s142 :=
  appAll len91 d91 c91 sub200 ((h36 ρ a0) 91 mem346) Positive.none
theorem h748 (ρ : Env) (a0 : Fits s42 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h38 ρ a0) 4 mem347) (smaller (h729 ρ a0) sub3)
theorem h749 (ρ : Env) (a0 : Fits s50 (ρ 0)) : All tab ρ b12 s146 :=
  appAll len107 d107 c107 sub204 ((h41 ρ a0) 107 mem348) Positive.none
theorem h750 (ρ : Env) (a0 : Fits s58 (ρ 0)) : All tab ρ b12 s151 :=
  appAll len121 d121 c121 sub209 ((h45 ρ a0) 121 mem349) Positive.none
theorem h751 (ρ : Env) (a0 : Fits s59 (ρ 0)) : All tab ρ b12 s154 :=
  appAll len132 d132 c132 sub212 ((h50 ρ a0) 132 mem350) Positive.none
theorem h752 (ρ : Env) (a0 : Fits s62 (ρ 0)) : All tab ρ b12 s157 :=
  appAll len141 d141 c141 sub215 ((h53 ρ a0) 141 mem351) Positive.none
theorem h753 (ρ : Env) (a0 : Fits s64 (ρ 0)) : All tab ρ b12 s160 :=
  appAll len149 d149 c149 sub218 ((h56 ρ a0) 149 mem352) Positive.none
theorem h754 (ρ : Env) (a0 : Fits s65 (ρ 0)) : All tab ρ b12 s3 :=
  appAll len4 d4 c4 sub3 ((h58 ρ a0) 4 mem353) (smaller (h730 ρ a0) sub3)
theorem h755 (ρ : Env) (a0 : Fits s71 (ρ 0)) : All tab ρ b12 s164 :=
  appAll len163 d163 c163 sub222 ((h60 ρ a0) 163 mem354) Positive.none
end Blc.H44.H44F4846434772678
