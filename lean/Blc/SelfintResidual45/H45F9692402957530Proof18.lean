import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof17

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h648 (ρ : Env) (a1 : Fits s48 (ρ 1)) : All tab ρ b35 s48 :=
  varAll (fun i hi => a1 i (sub105 i hi))
theorem h649 (ρ : Env) (a1 : Fits s71 (ρ 1)) : All tab ρ b35 s71 :=
  varAll (fun i hi => a1 i (sub107 i hi))
theorem h650 (ρ : Env) (a1 : Fits s70 (ρ 1)) : All tab ρ b35 s70 :=
  varAll (fun i hi => a1 i (sub109 i hi))
theorem h651 (ρ : Env) (a1 : Fits s11 (ρ 1)) : All tab ρ b35 s11 :=
  varAll (fun i hi => a1 i (sub5 i hi))
theorem h652 (ρ : Env) (a1 : Fits s79 (ρ 1)) : All tab ρ b35 s79 :=
  varAll (fun i hi => a1 i (sub110 i hi))
theorem h653 (ρ : Env) (a1 : Fits s86 (ρ 1)) : All tab ρ b35 s86 :=
  varAll (fun i hi => a1 i (sub108 i hi))
theorem h654 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s55 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len168 d168 c168 sub5 ((h641 ρ a0) 168 mem136) (smaller (h646 ρ a1) sub153)
theorem h655 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s56 (ρ 1)) : All tab ρ b36 s56 :=
  appAll len258 d258 c258 sub119 ((h642 ρ a0) 258 mem137) (smaller (h647 ρ a1) sub119)
theorem h656 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len116 d116 c116 sub5 ((h643 ρ a0) 116 mem42) (smaller (h651 ρ a1) sub5)
theorem h657 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b36 s56 :=
  appAll len287 d287 c287 sub119 ((h642 ρ a0) 287 mem138) (smaller (h648 ρ a1) sub105)
theorem h658 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len132 d132 c132 sub5 ((h644 ρ a0) 132 mem14) (smaller (h648 ρ a1) sub105)
theorem h659 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len244 d244 c244 sub5 ((h644 ρ a0) 244 mem19) (smaller (h649 ρ a1) sub107)
theorem h660 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len165 d165 c165 sub5 ((h644 ρ a0) 165 mem36) (smaller (h650 ρ a1) sub109)
theorem h661 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len299 d299 c299 sub5 ((h644 ρ a0) 299 mem39) (smaller (h652 ρ a1) sub110)
theorem h662 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len132 d132 c132 sub5 ((h643 ρ a0) 132 mem14) (smaller (h648 ρ a1) sub105)
theorem h663 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len244 d244 c244 sub5 ((h643 ρ a0) 244 mem19) (smaller (h649 ρ a1) sub107)
theorem h664 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len165 d165 c165 sub5 ((h643 ρ a0) 165 mem36) (smaller (h650 ρ a1) sub109)
theorem h665 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len299 d299 c299 sub5 ((h643 ρ a0) 299 mem39) (smaller (h652 ρ a1) sub110)
theorem h666 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len315 d315 c315 sub5 ((h644 ρ a0) 315 mem27) (smaller (h653 ρ a1) sub108)
theorem h667 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len315 d315 c315 sub5 ((h643 ρ a0) 315 mem27) (smaller (h653 ρ a1) sub108)
theorem h668 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b36 s86 :=
  appAll len341 d341 c341 sub108 ((h645 ρ a0) 341 mem139) (smaller (h653 ρ a1) sub108)
theorem h669 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b36 s86 :=
  appAll len342 d342 c342 sub108 ((h645 ρ a0) 342 mem140) (smaller (h648 ρ a1) sub105)
theorem h670 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b36 s86 :=
  appAll len343 d343 c343 sub108 ((h645 ρ a0) 343 mem141) (smaller (h649 ρ a1) sub107)
theorem h671 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b36 s86 :=
  appAll len344 d344 c344 sub108 ((h645 ρ a0) 344 mem142) (smaller (h650 ρ a1) sub109)
theorem h672 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b36 s86 :=
  appAll len345 d345 c345 sub108 ((h645 ρ a0) 345 mem143) (smaller (h652 ρ a1) sub110)
theorem h673 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b36 s86 :=
  appAll len346 d346 c346 sub108 ((h645 ρ a0) 346 mem144) (smaller (h651 ρ a1) sub5)
theorem h674 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b36 s11 :=
  appAll len116 d116 c116 sub5 ((h644 ρ a0) 116 mem42) (smaller (h651 ρ a1) sub5)
theorem h675 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s55 (ρ 1)) (a2 : Fits s51 (ρ 2)) : All tab ρ b37 s11 :=
  appAll len116 d116 c116 sub5 ((h636 ρ a2) 116 mem53) (smaller (h654 ρ a0 a1) sub5)
theorem h676 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s56 (ρ 1)) (a2 : Fits s27 (ρ 2)) : All tab ρ b37 s55 :=
  appAll len210 d210 c210 sub153 ((h637 ρ a2) 210 mem145) (smaller (h655 ρ a0 a1) sub119)
theorem h677 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b37 s71 :=
  appAll len231 d231 c231 sub107 ((h638 ρ a2) 231 mem146) (smaller (h661 ρ a0 a1) sub5)
theorem h678 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b37 s76 :=
  appAll len232 d232 c232 sub154 ((h638 ρ a2) 232 mem147) (smaller (h661 ρ a0 a1) sub5)
theorem h679 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b37 s71 :=
  appAll len231 d231 c231 sub107 ((h638 ρ a2) 231 mem146) (smaller (h660 ρ a0 a1) sub5)
theorem h680 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b37 s76 :=
  appAll len232 d232 c232 sub154 ((h638 ρ a2) 232 mem147) (smaller (h660 ρ a0 a1) sub5)
theorem h681 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s32 (ρ 2)) : All tab ρ b37 s70 :=
  appAll len273 d273 c273 sub109 ((h639 ρ a2) 273 mem148) (smaller (h673 ρ a0 a1) sub108)
theorem h682 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b37 s70 :=
  appAll len274 d274 c274 sub109 ((h640 ρ a2) 274 mem149) (smaller (h656 ρ a0 a1) sub5)
theorem h683 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b37 s71 :=
  appAll len231 d231 c231 sub107 ((h638 ρ a2) 231 mem146) (smaller (h658 ρ a0 a1) sub5)
end Blc.H45.H45F9692402957530
