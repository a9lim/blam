import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Proof4

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h180 (ρ : Env) (a1 : Fits s75 (ρ 1)) : All tab ρ b4 s75 :=
  varAll (fun i hi => a1 i (sub96 i hi))
theorem h181 (ρ : Env) (a1 : Fits s74 (ρ 1)) : All tab ρ b4 s105 :=
  varAll (fun i hi => a1 i (sub156 i hi))
theorem h182 (ρ : Env) (a1 : Fits s106 (ρ 1)) : All tab ρ b4 s106 :=
  varAll (fun i hi => a1 i (sub97 i hi))
theorem h183 (ρ : Env) (a1 : Fits s109 (ρ 1)) : All tab ρ b4 s109 :=
  varAll (fun i hi => a1 i (sub99 i hi))
theorem h184 (ρ : Env) (a1 : Fits s92 (ρ 1)) : All tab ρ b4 s277 :=
  varAll (fun i hi => a1 i (sub157 i hi))
theorem h185 (ρ : Env) (a1 : Fits s111 (ρ 1)) : All tab ρ b4 s111 :=
  varAll (fun i hi => a1 i (sub102 i hi))
theorem h186 (ρ : Env) (a1 : Fits s93 (ρ 1)) : All tab ρ b4 s111 :=
  varAll (fun i hi => a1 i (sub158 i hi))
theorem h187 (ρ : Env) (a1 : Fits s113 (ρ 1)) : All tab ρ b4 s113 :=
  varAll (fun i hi => a1 i (sub104 i hi))
theorem h188 (ρ : Env) (a1 : Fits s89 (ρ 1)) : All tab ρ b4 s278 :=
  varAll (fun i hi => a1 i (sub159 i hi))
theorem h189 (ρ : Env) (a1 : Fits s115 (ρ 1)) : All tab ρ b4 s115 :=
  varAll (fun i hi => a1 i (sub107 i hi))
theorem h190 (ρ : Env) (a1 : Fits s90 (ρ 1)) : All tab ρ b4 s115 :=
  varAll (fun i hi => a1 i (sub160 i hi))
theorem h191 (ρ : Env) (a1 : Fits s116 (ρ 1)) : All tab ρ b4 s116 :=
  varAll (fun i hi => a1 i (sub109 i hi))
theorem h192 (ρ : Env) (a1 : Fits s87 (ρ 1)) : All tab ρ b4 s116 :=
  varAll (fun i hi => a1 i (sub161 i hi))
theorem h193 (ρ : Env) (a1 : Fits s117 (ρ 1)) : All tab ρ b4 s117 :=
  varAll (fun i hi => a1 i (sub162 i hi))
theorem h194 (ρ : Env) (a1 : Fits s85 (ρ 1)) : All tab ρ b4 s117 :=
  varAll (fun i hi => a1 i (sub163 i hi))
theorem h195 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b5 s3 :=
  botAll ((h3 ρ a0) 0 mem1)
theorem h196 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b5 s7 :=
  appAll len9 d9 c9 sub4 ((h5 ρ a0) 9 mem2) (smaller (h130 ρ a1) sub8)
theorem h197 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b5 s3 :=
  appAll len12 d12 c12 sub3 ((h6 ρ a0) 12 mem3) (smaller (h130 ρ a1) sub8)
theorem h198 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b5 s9 :=
  appAll len13 d13 c13 sub6 ((h7 ρ a0) 13 mem4) (smaller (h130 ρ a1) sub8)
theorem h199 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b5 s3 :=
  appAll len12 d12 c12 sub3 ((h8 ρ a0) 12 mem5) (smaller (h130 ρ a1) sub8)
theorem h200 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s10 (ρ 1)) : All tab ρ b5 s3 :=
  appAll len15 d15 c15 sub3 ((h8 ρ a0) 15 mem6) (smaller (h131 ρ a1) sub10)
theorem h201 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s10 (ρ 1)) : All tab ρ b5 s11 :=
  appAll len18 d18 c18 sub164 ((h10 ρ a0) 18 mem7) (smaller (h131 ρ a1) sub10)
theorem h202 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s12 :=
  appAll len21 d21 c21 sub128 ((h12 ρ a0) 21 mem8) Positive.none
theorem h203 (ρ : Env) (a0 : Fits s15 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s17 :=
  appAll len28 d28 c28 sub13 ((h14 ρ a0) 28 mem9) Positive.none
theorem h204 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s19 :=
  appAll len36 d36 c36 sub15 ((h16 ρ a0) 36 mem10) Positive.none
theorem h205 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s19 :=
  appAll len36 d36 c36 sub15 ((h17 ρ a0) 36 mem10) Positive.none
theorem h206 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s22 :=
  appAll len44 d44 c44 sub18 ((h19 ρ a0) 44 mem11) Positive.none
theorem h207 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s22 :=
  appAll len44 d44 c44 sub18 ((h20 ρ a0) 44 mem11) Positive.none
theorem h208 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s3 :=
  appAll len47 d47 c47 sub3 ((h21 ρ a0) 47 mem12) Positive.none
theorem h209 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s3 :=
  botAll ((h3 ρ a0) 0 mem1)
theorem h210 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s26 :=
  appAll len52 d52 c52 sub132 ((h23 ρ a0) 52 mem13) Positive.none
theorem h211 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s26 :=
  appAll len53 d53 c53 sub132 ((h24 ρ a0) 53 mem14) (smaller (h142 ρ a1) sub134)
theorem h212 (ρ : Env) (a0 : Fits s31 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s30 :=
  appAll len59 d59 c59 sub133 ((h26 ρ a0) 59 mem15) Positive.none
theorem h213 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s30 :=
  appAll len60 d60 c60 sub133 ((h27 ρ a0) 60 mem16) (smaller (h142 ρ a1) sub134)
theorem h214 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s21 (ρ 1)) : All tab ρ b5 s29 :=
  appAll len61 d61 c61 sub27 ((h28 ρ a0) 61 mem17) (smaller (h142 ρ a1) sub134)
theorem h215 (ρ : Env) (a0 : Fits s38 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s37 :=
  appAll len73 d73 c73 sub29 ((h30 ρ a0) 73 mem18) Positive.none
end Blc.H44.H44F4846434772678
