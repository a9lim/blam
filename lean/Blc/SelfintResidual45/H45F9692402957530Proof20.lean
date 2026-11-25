import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof19

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h720 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s32 (ρ 1)) : All tab ρ b38 s69 :=
  (consAll (lamAt d242 c242 (smaller (h698 (SelfintRecursiveTypes.cons s32 ρ) sub106 a0 a1) sub109)) Positive.none)
theorem h721 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b38 s74 :=
  (consAll (lamAt d243 c243 (smaller (h699 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub109)) Positive.none)
theorem h722 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b38 s30 :=
  (consAll (lamAt d206 c206 (smaller (h701 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub154)) (consAll (lamAt d226 c226 (smaller (h700 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub107)) Positive.none))
theorem h723 (ρ : Env) (a0 : Fits s55 (ρ 0)) (a1 : Fits s51 (ρ 1)) (a2 : Fits s27 (ρ 2)) : All tab ρ b39 s135 :=
  appAll len113 d113 c113 sub282 ((h631 ρ a2) 113 mem150) (smaller (h702 ρ a0 a1) sub119)
theorem h724 (ρ : Env) (a0 : Fits s56 (ρ 0)) (a1 : Fits s27 (ρ 1)) (a2 : Fits s53 (ρ 2)) : All tab ρ b39 s136 :=
  appAll len199 d199 c199 sub125 ((h632 ρ a2) 199 mem151) (smaller (h703 ρ a0 a1) sub283)
theorem h725 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s136 :=
  appAll len212 d212 c212 sub125 ((h633 ρ a2) 212 mem152) (smaller (h704 ρ a0 a1) sub117)
theorem h726 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s164 :=
  appAll len236 d236 c236 sub284 ((h633 ρ a2) 236 mem153) (smaller (h705 ρ a0 a1) sub117)
theorem h727 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s165 :=
  appAll len237 d237 c237 sub285 ((h633 ρ a2) 237 mem154) (smaller (h705 ρ a0 a1) sub117)
theorem h728 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s154 :=
  appAll len252 d252 c252 sub287 ((h634 ρ a2) 252 mem155) (smaller (h706 ρ a0 a1) sub286)
theorem h729 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s172 :=
  appAll len253 d253 c253 sub289 ((h635 ρ a2) 253 mem156) (smaller (h707 ρ a0 a1) sub288)
theorem h730 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s173 :=
  appAll len262 d262 c262 sub290 ((h633 ρ a2) 262 mem157) (smaller (h704 ρ a0 a1) sub117)
theorem h731 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s79 :=
  appAll len289 d289 c289 sub110 ((h633 ρ a2) 289 mem158) (smaller (h708 ρ a0 a1) sub117)
theorem h732 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s79 :=
  appAll len289 d289 c289 sub110 ((h633 ρ a2) 289 mem158) (smaller (h709 ρ a0 a1) sub117)
theorem h733 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len164 d164 c164 sub5 ((h634 ρ a2) 164 mem159) (smaller (h706 ρ a0 a1) sub286)
theorem h734 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len175 d175 c175 sub5 ((h635 ρ a2) 175 mem160) (smaller (h707 ρ a0 a1) sub288)
theorem h735 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s27 (ρ 1)) (a2 : Fits s53 (ρ 2)) : All tab ρ b39 s56 :=
  appAll len294 d294 c294 sub119 ((h632 ρ a2) 294 mem161) (smaller (h710 ρ a0 a1) sub283)
theorem h736 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len164 d164 c164 sub5 ((h634 ρ a2) 164 mem159) (smaller (h711 ρ a0 a1) sub286)
theorem h737 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len175 d175 c175 sub5 ((h635 ρ a2) 175 mem160) (smaller (h712 ρ a0 a1) sub288)
theorem h738 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len164 d164 c164 sub5 ((h634 ρ a2) 164 mem159) (smaller (h713 ρ a0 a1) sub286)
theorem h739 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len175 d175 c175 sub5 ((h635 ρ a2) 175 mem160) (smaller (h714 ρ a0 a1) sub288)
theorem h740 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len164 d164 c164 sub5 ((h634 ρ a2) 164 mem159) (smaller (h715 ρ a0 a1) sub286)
theorem h741 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len175 d175 c175 sub5 ((h635 ρ a2) 175 mem160) (smaller (h716 ρ a0 a1) sub288)
theorem h742 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len164 d164 c164 sub5 ((h634 ρ a2) 164 mem159) (smaller (h717 ρ a0 a1) sub286)
theorem h743 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len175 d175 c175 sub5 ((h635 ρ a2) 175 mem160) (smaller (h718 ρ a0 a1) sub288)
theorem h744 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s79 :=
  appAll len289 d289 c289 sub110 ((h633 ρ a2) 289 mem158) (smaller (h719 ρ a0 a1) sub117)
theorem h745 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s32 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len164 d164 c164 sub5 ((h634 ρ a2) 164 mem159) (smaller (h720 ρ a0 a1) sub286)
theorem h746 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s72 (ρ 2)) : All tab ρ b39 s11 :=
  appAll len175 d175 c175 sub5 ((h635 ρ a2) 175 mem160) (smaller (h721 ρ a0 a1) sub288)
theorem h747 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s29 (ρ 2)) : All tab ρ b39 s79 :=
  appAll len289 d289 c289 sub110 ((h633 ρ a2) 289 mem158) (smaller (h722 ρ a0 a1) sub117)
theorem h748 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s27 (ρ 1)) : All tab ρ b40 s52 :=
  (consAll (lamAt d111 c111 (smaller (h723 (SelfintRecursiveTypes.cons s55 ρ) sub153 a0 a1) sub291)) (consAll (lamAt d202 c202 (smaller (h723 (SelfintRecursiveTypes.cons s55 ρ) sub153 a0 a1) sub292)) Positive.none))
theorem h749 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s53 (ρ 1)) : All tab ρ b40 s55 :=
  (consAll (lamAt d191 c191 (smaller (h724 (SelfintRecursiveTypes.cons s56 ρ) sub119 a0 a1) sub125)) (consAll (lamAt d287 c287 (smaller (h735 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub119)) Positive.none))
theorem h750 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s29 (ρ 1)) : All tab ρ b40 s76 :=
  (consAll (lamAt d201 c201 (smaller (h725 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub125)) (consAll (lamAt d279 c279 (smaller (h731 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub110)) Positive.none))
theorem h751 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s29 (ρ 1)) : All tab ρ b40 s71 :=
  (consAll (lamAt d206 c206 (smaller (h726 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub293)) (consAll (lamAt d226 c226 (smaller (h727 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub294)) (consAll (lamAt d251 c251 (smaller (h730 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub295)) (consAll (lamAt d279 c279 (smaller (h731 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub110)) (consAll (lamAt d280 c280 (smaller (h732 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub110)) (consAll (lamAt d318 c318 (smaller (h744 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub110)) (consAll (lamAt d353 c353 (smaller (h726 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub296)) (consAll (lamAt d356 c356 (smaller (h730 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub297)) (consAll (lamAt d358 c358 (smaller (h747 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub110)) Positive.none)))))))))
theorem h752 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s67 (ρ 1)) : All tab ρ b40 s70 :=
  (consAll (lamAt d116 c116 (smaller (h733 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d132 c132 (smaller (h736 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub5)) (consAll (lamAt d165 c165 (smaller (h740 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub5)) (consAll (lamAt d231 c231 (smaller (h728 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub298)) (consAll (lamAt d232 c232 (smaller (h728 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub299)) (consAll (lamAt d244 c244 (smaller (h738 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h742 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) (consAll (lamAt d315 c315 (smaller (h745 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub5)) Positive.none))))))))
theorem h753 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s72 (ρ 1)) : All tab ρ b40 s70 :=
  (consAll (lamAt d116 c116 (smaller (h734 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d132 c132 (smaller (h737 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub5)) (consAll (lamAt d165 c165 (smaller (h741 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub5)) (consAll (lamAt d231 c231 (smaller (h729 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub300)) (consAll (lamAt d232 c232 (smaller (h729 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub301)) (consAll (lamAt d244 c244 (smaller (h739 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h743 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) (consAll (lamAt d315 c315 (smaller (h746 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub5)) Positive.none))))))))
theorem h754 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b41 s28 :=
  (consAll (lamAt d112 c112 (smaller (h748 (SelfintRecursiveTypes.cons s51 ρ) sub155 a0) sub302)) Positive.none)
theorem h755 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b41 s54 :=
  (consAll (lamAt d198 c198 (smaller (h749 (SelfintRecursiveTypes.cons s27 ρ) sub281 a0) sub153)) Positive.none)
end Blc.H45.H45F9692402957530
