import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Proof2

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h108 (ρ : Env) (a0 : Fits s112 (ρ 0)) : All tab ρ b0 s112 :=
  varAll (fun i hi => a0 i (sub108 i hi))
theorem h109 (ρ : Env) (a0 : Fits s116 (ρ 0)) : All tab ρ b0 s116 :=
  varAll (fun i hi => a0 i (sub109 i hi))
theorem h110 (ρ : Env) (a0 : Fits s88 (ρ 0)) : All tab ρ b0 s88 :=
  varAll (fun i hi => a0 i (sub110 i hi))
theorem h111 (ρ : Env) (a0 : Fits s117 (ρ 0)) : All tab ρ b0 s255 :=
  varAll (fun i hi => a0 i (sub111 i hi))
theorem h112 (ρ : Env) (a0 : Fits s86 (ρ 0)) : All tab ρ b0 s86 :=
  varAll (fun i hi => a0 i (sub112 i hi))
theorem h113 (ρ : Env) (a0 : Fits s119 (ρ 0)) : All tab ρ b0 s119 :=
  varAll (fun i hi => a0 i (sub113 i hi))
theorem h114 (ρ : Env) (a0 : Fits s118 (ρ 0)) : All tab ρ b0 s118 :=
  varAll (fun i hi => a0 i (sub114 i hi))
theorem h115 (ρ : Env) (a0 : Fits s95 (ρ 0)) : All tab ρ b0 s132 :=
  varAll (fun i hi => a0 i (sub115 i hi))
theorem h116 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s3 :=
  appAll len2 d2 c2 sub3 ((h0 ρ a0) 2 mem0) (smaller (h0 ρ a0) sub0)
theorem h117 (ρ : Env)  : All tab ρ b2 s256 :=
  (consAll (lamAt d2 c2 (smaller (h116 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub3)) Positive.none)
theorem h118 (ρ : Env) (a2 : Fits s1 (ρ 2)) : All tab ρ b3 s257 :=
  varAll (fun i hi => a2 i (sub116 i hi))
theorem h119 (ρ : Env) (a2 : Fits s2 (ρ 2)) : All tab ρ b3 s258 :=
  varAll (fun i hi => a2 i (sub117 i hi))
theorem h120 (ρ : Env) (a2 : Fits s7 (ρ 2)) : All tab ρ b3 s259 :=
  varAll (fun i hi => a2 i (sub118 i hi))
theorem h121 (ρ : Env) (a2 : Fits s4 (ρ 2)) : All tab ρ b3 s260 :=
  varAll (fun i hi => a2 i (sub119 i hi))
theorem h122 (ρ : Env) (a2 : Fits s11 (ρ 2)) : All tab ρ b3 s261 :=
  varAll (fun i hi => a2 i (sub120 i hi))
theorem h123 (ρ : Env) (a2 : Fits s12 (ρ 2)) : All tab ρ b3 s262 :=
  varAll (fun i hi => a2 i (sub121 i hi))
theorem h124 (ρ : Env) (a2 : Fits s26 (ρ 2)) : All tab ρ b3 s263 :=
  varAll (fun i hi => a2 i (sub122 i hi))
theorem h125 (ρ : Env) (a2 : Fits s30 (ρ 2)) : All tab ρ b3 s264 :=
  varAll (fun i hi => a2 i (sub123 i hi))
theorem h126 (ρ : Env) (a2 : Fits s42 (ρ 2)) : All tab ρ b3 s265 :=
  varAll (fun i hi => a2 i (sub124 i hi))
theorem h127 (ρ : Env) (a2 : Fits s65 (ρ 2)) : All tab ρ b3 s266 :=
  varAll (fun i hi => a2 i (sub125 i hi))
theorem h128 (ρ : Env) (a2 : Fits s83 (ρ 2)) : All tab ρ b3 s267 :=
  varAll (fun i hi => a2 i (sub126 i hi))
theorem h129 (ρ : Env) (a2 : Fits s117 (ρ 2)) : All tab ρ b3 s268 :=
  varAll (fun i hi => a2 i (sub127 i hi))
theorem h130 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b4 s5 :=
  varAll (fun i hi => a1 i (sub8 i hi))
theorem h131 (ρ : Env) (a1 : Fits s10 (ρ 1)) : All tab ρ b4 s10 :=
  varAll (fun i hi => a1 i (sub10 i hi))
theorem h132 (ρ : Env) (a1 : Fits s12 (ρ 1)) : All tab ρ b4 s12 :=
  varAll (fun i hi => a1 i (sub128 i hi))
theorem h133 (ρ : Env) (a1 : Fits s14 (ρ 1)) : All tab ρ b4 s14 :=
  varAll (fun i hi => a1 i (sub129 i hi))
theorem h134 (ρ : Env) (a1 : Fits s19 (ρ 1)) : All tab ρ b4 s19 :=
  varAll (fun i hi => a1 i (sub15 i hi))
theorem h135 (ρ : Env) (a1 : Fits s15 (ρ 1)) : All tab ρ b4 s269 :=
  varAll (fun i hi => a1 i (sub130 i hi))
theorem h136 (ρ : Env) (a1 : Fits s22 (ρ 1)) : All tab ρ b4 s22 :=
  varAll (fun i hi => a1 i (sub18 i hi))
theorem h137 (ρ : Env) (a1 : Fits s16 (ρ 1)) : All tab ρ b4 s270 :=
  varAll (fun i hi => a1 i (sub131 i hi))
theorem h138 (ρ : Env) (a1 : Fits s3 (ρ 1)) : All tab ρ b4 s3 :=
  varAll (fun i hi => a1 i (sub3 i hi))
theorem h139 (ρ : Env) (a1 : Fits s26 (ρ 1)) : All tab ρ b4 s26 :=
  varAll (fun i hi => a1 i (sub132 i hi))
theorem h140 (ρ : Env) (a1 : Fits s30 (ρ 1)) : All tab ρ b4 s30 :=
  varAll (fun i hi => a1 i (sub133 i hi))
theorem h141 (ρ : Env) (a1 : Fits s37 (ρ 1)) : All tab ρ b4 s37 :=
  varAll (fun i hi => a1 i (sub29 i hi))
theorem h142 (ρ : Env) (a1 : Fits s21 (ρ 1)) : All tab ρ b4 s21 :=
  varAll (fun i hi => a1 i (sub134 i hi))
theorem h143 (ρ : Env) (a1 : Fits s18 (ρ 1)) : All tab ρ b4 s271 :=
  varAll (fun i hi => a1 i (sub135 i hi))
end Blc.H44.H44F4846434772678
