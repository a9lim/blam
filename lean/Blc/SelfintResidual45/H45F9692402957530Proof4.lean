import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof3

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h144 (ρ : Env) (a0 : Fits s61 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s144 :=
  appAll len135 d135 c135 sub115 ((h103 ρ a0) 135 mem11) (smaller (h114 ρ a1) sub105)
theorem h145 (ρ : Env) (a0 : Fits s55 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s56 :=
  appAll len287 d287 c287 sub119 ((h104 ρ a0) 287 mem25) (smaller (h114 ρ a1) sub105)
theorem h146 (ρ : Env) (a0 : Fits s63 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s144 :=
  appAll len135 d135 c135 sub115 ((h105 ρ a0) 135 mem11) (smaller (h114 ρ a1) sub105)
theorem h147 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len244 d244 c244 sub5 ((h106 ρ a0) 244 mem19) (smaller (h117 ρ a1) sub107)
theorem h148 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len132 d132 c132 sub5 ((h106 ρ a0) 132 mem14) (smaller (h114 ρ a1) sub105)
theorem h149 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s84 :=
  botAll ((h102 ρ a0) 0 mem23)
theorem h150 (ρ : Env) (a0 : Fits s84 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len311 d311 c311 sub118 ((h101 ρ a0) 311 mem26) (smaller (h114 ρ a1) sub105)
theorem h151 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len315 d315 c315 sub5 ((h92 ρ a0) 315 mem27) (smaller (h118 ρ a1) sub108)
theorem h152 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b20 s79 :=
  appAll len318 d318 c318 sub110 ((h100 ρ a0) 318 mem28) (smaller (h118 ρ a1) sub108)
theorem h153 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len315 d315 c315 sub5 ((h106 ρ a0) 315 mem27) (smaller (h118 ρ a1) sub108)
theorem h154 (ρ : Env) (a0 : Fits s89 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s144 :=
  appAll len135 d135 c135 sub115 ((h107 ρ a0) 135 mem11) (smaller (h114 ρ a1) sub105)
theorem h155 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len311 d311 c311 sub118 ((h108 ρ a0) 311 mem29) (smaller (h114 ρ a1) sub105)
theorem h156 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len331 d331 c331 sub118 ((h108 ρ a0) 331 mem30) (smaller (h118 ρ a1) sub108)
theorem h157 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b20 s84 :=
  botAll ((h102 ρ a0) 0 mem23)
theorem h158 (ρ : Env) (a0 : Fits s92 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s144 :=
  appAll len135 d135 c135 sub115 ((h109 ρ a0) 135 mem11) (smaller (h114 ρ a1) sub105)
theorem h159 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b20 s97 :=
  appAll len338 d338 c338 sub120 ((h110 ρ a0) 338 mem31) (smaller (h117 ρ a1) sub107)
theorem h160 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s97 :=
  appAll len339 d339 c339 sub120 ((h110 ρ a0) 339 mem32) (smaller (h114 ρ a1) sub105)
theorem h161 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b20 s97 :=
  appAll len340 d340 c340 sub120 ((h110 ρ a0) 340 mem33) (smaller (h118 ρ a1) sub108)
theorem h162 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len132 d132 c132 sub5 ((h111 ρ a0) 132 mem34) (smaller (h114 ρ a1) sub105)
theorem h163 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b20 s79 :=
  appAll len353 d353 c353 sub110 ((h100 ρ a0) 353 mem35) (smaller (h119 ρ a1) sub109)
theorem h164 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len165 d165 c165 sub5 ((h92 ρ a0) 165 mem36) (smaller (h119 ρ a1) sub109)
theorem h165 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b20 s97 :=
  appAll len354 d354 c354 sub120 ((h110 ρ a0) 354 mem37) (smaller (h119 ρ a1) sub109)
theorem h166 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b20 s79 :=
  appAll len356 d356 c356 sub110 ((h100 ρ a0) 356 mem38) (smaller (h120 ρ a1) sub110)
theorem h167 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len299 d299 c299 sub5 ((h92 ρ a0) 299 mem39) (smaller (h120 ρ a1) sub110)
theorem h168 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b20 s97 :=
  appAll len357 d357 c357 sub120 ((h110 ρ a0) 357 mem40) (smaller (h120 ρ a1) sub110)
theorem h169 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b20 s79 :=
  appAll len358 d358 c358 sub110 ((h100 ρ a0) 358 mem41) (smaller (h121 ρ a1) sub5)
theorem h170 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len116 d116 c116 sub5 ((h92 ρ a0) 116 mem42) (smaller (h121 ρ a1) sub5)
theorem h171 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b20 s97 :=
  appAll len359 d359 c359 sub120 ((h110 ρ a0) 359 mem43) (smaller (h121 ρ a1) sub5)
theorem h172 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len281 d281 c281 sub118 ((h108 ρ a0) 281 mem44) (smaller (h117 ρ a1) sub107)
theorem h173 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len165 d165 c165 sub5 ((h106 ρ a0) 165 mem36) (smaller (h119 ρ a1) sub109)
theorem h174 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len299 d299 c299 sub5 ((h106 ρ a0) 299 mem39) (smaller (h120 ρ a1) sub110)
theorem h175 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b20 s11 :=
  appAll len116 d116 c116 sub5 ((h106 ρ a0) 116 mem42) (smaller (h121 ρ a1) sub5)
theorem h176 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len368 d368 c368 sub118 ((h108 ρ a0) 368 mem45) (smaller (h119 ρ a1) sub109)
theorem h177 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b20 s84 :=
  botAll ((h102 ρ a0) 0 mem23)
theorem h178 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b20 s84 :=
  appAll len369 d369 c369 sub118 ((h108 ρ a0) 369 mem46) (smaller (h120 ρ a1) sub110)
theorem h179 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b20 s84 :=
  botAll ((h102 ρ a0) 0 mem23)
end Blc.H45.H45F9692402957530
