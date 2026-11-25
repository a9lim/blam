import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof21

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h792 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b47 s30 :=
  varAll (fun i hi => a0 i (sub117 i hi))
theorem h793 (ρ : Env) (a0 : Fits s71 (ρ 0)) : All tab ρ b47 s30 :=
  varAll (fun i hi => a0 i (sub320 i hi))
theorem h794 (ρ : Env) (a0 : Fits s48 (ρ 0)) : All tab ρ b47 s281 :=
  varAll (fun i hi => a0 i (sub321 i hi))
theorem h795 (ρ : Env) (a0 : Fits s69 (ρ 0)) : All tab ρ b47 s69 :=
  varAll (fun i hi => a0 i (sub286 i hi))
theorem h796 (ρ : Env) (a0 : Fits s74 (ρ 0)) : All tab ρ b47 s74 :=
  varAll (fun i hi => a0 i (sub288 i hi))
theorem h797 (ρ : Env) (a1 : Fits s51 (ρ 1)) : All tab ρ b48 s51 :=
  varAll (fun i hi => a1 i (sub155 i hi))
theorem h798 (ρ : Env) (a1 : Fits s27 (ρ 1)) : All tab ρ b48 s27 :=
  varAll (fun i hi => a1 i (sub281 i hi))
theorem h799 (ρ : Env) (a1 : Fits s70 (ρ 1)) : All tab ρ b48 s70 :=
  varAll (fun i hi => a1 i (sub109 i hi))
theorem h800 (ρ : Env) (a1 : Fits s32 (ρ 1)) : All tab ρ b48 s32 :=
  varAll (fun i hi => a1 i (sub106 i hi))
theorem h801 (ρ : Env) (a1 : Fits s48 (ρ 1)) : All tab ρ b48 s48 :=
  varAll (fun i hi => a1 i (sub105 i hi))
theorem h802 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s51 (ρ 1)) : All tab ρ b49 s52 :=
  appAll len112 d112 c112 sub302 ((h789 ρ a0) 112 mem172) (smaller (h797 ρ a1) sub155)
theorem h803 (ρ : Env) (a0 : Fits s56 (ρ 0)) (a1 : Fits s51 (ρ 1)) : All tab ρ b49 s11 :=
  appAll len106 d106 c106 sub5 ((h790 ρ a0) 106 mem173) (smaller (h797 ρ a1) sub155)
theorem h804 (ρ : Env) (a0 : Fits s54 (ρ 0)) (a1 : Fits s27 (ρ 1)) : All tab ρ b49 s55 :=
  appAll len198 d198 c198 sub153 ((h791 ρ a0) 198 mem174) (smaller (h798 ρ a1) sub281)
theorem h805 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b49 s76 :=
  appAll len206 d206 c206 sub154 ((h792 ρ a0) 206 mem175) (smaller (h799 ρ a1) sub109)
theorem h806 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b49 s76 :=
  appAll len206 d206 c206 sub154 ((h793 ρ a0) 206 mem175) (smaller (h799 ρ a1) sub109)
theorem h807 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b49 s71 :=
  appAll len226 d226 c226 sub107 ((h792 ρ a0) 226 mem176) (smaller (h799 ρ a1) sub109)
theorem h808 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b49 s71 :=
  appAll len226 d226 c226 sub107 ((h793 ρ a0) 226 mem176) (smaller (h799 ρ a1) sub109)
theorem h809 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b49 s71 :=
  appAll len226 d226 c226 sub107 ((h794 ρ a0) 226 mem177) (smaller (h799 ρ a1) sub109)
theorem h810 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b49 s76 :=
  appAll len206 d206 c206 sub154 ((h794 ρ a0) 206 mem178) (smaller (h799 ρ a1) sub109)
theorem h811 (ρ : Env) (a0 : Fits s69 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b49 s70 :=
  appAll len242 d242 c242 sub109 ((h795 ρ a0) 242 mem179) (smaller (h800 ρ a1) sub106)
theorem h812 (ρ : Env) (a0 : Fits s74 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b49 s70 :=
  appAll len243 d243 c243 sub109 ((h796 ρ a0) 243 mem180) (smaller (h801 ρ a1) sub105)
theorem h813 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s51 (ρ 1)) : All tab ρ b49 s11 :=
  appAll len106 d106 c106 sub5 ((h794 ρ a0) 106 mem181) (smaller (h797 ρ a1) sub155)
theorem h814 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s9 (ρ 2)) : All tab ρ b50 s11 :=
  appAll len2 d2 c2 sub5 ((h779 ρ a2) 2 mem103) Positive.none
theorem h815 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b50 s102 :=
  appAll len16 d16 c16 sub303 ((h780 ρ a2) 16 mem162) Positive.none
theorem h816 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b50 s11 :=
  botAll ((h781 ρ a2) 0 mem23)
theorem h817 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s26 (ρ 2)) : All tab ρ b50 s115 :=
  appAll len56 d56 c56 sub305 ((h782 ρ a2) 56 mem182) Positive.none
theorem h818 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b50 s117 :=
  botAll ((h781 ρ a2) 0 mem23)
theorem h819 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s36 (ρ 2)) : All tab ρ b50 s117 :=
  appAll len75 d75 c75 sub306 ((h783 ρ a2) 75 mem183) Positive.none
theorem h820 (ρ : Env) (a0 : Fits s28 (ρ 0)) (a1 : Fits s51 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b50 s115 :=
  appAll len108 d108 c108 sub305 ((h784 ρ a2) 108 mem184) (smaller (h802 ρ a0 a1) sub302)
theorem h821 (ρ : Env) (a0 : Fits s54 (ρ 0)) (a1 : Fits s27 (ρ 1)) (a2 : Fits s52 (ρ 2)) : All tab ρ b50 s134 :=
  appAll len111 d111 c111 sub307 ((h785 ρ a2) 111 mem185) (smaller (h804 ρ a0 a1) sub153)
theorem h822 (ρ : Env) (a0 : Fits s56 (ρ 0)) (a1 : Fits s51 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b50 s135 :=
  appAll len114 d114 c114 sub282 ((h784 ρ a2) 114 mem186) (smaller (h803 ρ a0 a1) sub5)
theorem h823 (ρ : Env) (a0 : Fits s56 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s26 (ρ 2)) : All tab ρ b50 s135 :=
  appAll len115 d115 c115 sub282 ((h782 ρ a2) 115 mem187) Positive.none
theorem h824 (ρ : Env) (a0 : Fits s54 (ρ 0)) (a1 : Fits s53 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b50 s134 :=
  botAll ((h781 ρ a2) 0 mem23)
theorem h825 (ρ : Env) (a0 : Fits s69 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s66 (ρ 2)) : All tab ρ b50 s11 :=
  appAll len165 d165 c165 sub5 ((h786 ρ a2) 165 mem188) (smaller (h811 ρ a0 a1) sub109)
theorem h826 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s32 (ρ 2)) : All tab ρ b50 s117 :=
  appAll len171 d171 c171 sub306 ((h787 ρ a2) 171 mem189) (smaller (h807 ρ a0 a1) sub107)
theorem h827 (ρ : Env) (a0 : Fits s74 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s66 (ρ 2)) : All tab ρ b50 s11 :=
  appAll len165 d165 c165 sub5 ((h786 ρ a2) 165 mem188) (smaller (h812 ρ a0 a1) sub109)
end Blc.H45.H45F9692402957530
