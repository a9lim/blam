import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof20

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h756 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b41 s30 :=
  (consAll (lamAt d206 c206 (smaller (h750 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0) sub154)) (consAll (lamAt d226 c226 (smaller (h751 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0) sub107)) Positive.none))
theorem h757 (ρ : Env) (a0 : Fits s67 (ρ 0)) : All tab ρ b41 s69 :=
  (consAll (lamAt d242 c242 (smaller (h752 (SelfintRecursiveTypes.cons s32 ρ) sub106 a0) sub109)) Positive.none)
theorem h758 (ρ : Env) (a0 : Fits s72 (ρ 0)) : All tab ρ b41 s74 :=
  (consAll (lamAt d243 c243 (smaller (h753 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0) sub109)) Positive.none)
theorem h759 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b42 s11 :=
  appAll len2 d2 c2 sub5 ((h624 ρ a0) 2 mem103) Positive.none
theorem h760 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b42 s102 :=
  appAll len16 d16 c16 sub303 ((h625 ρ a0) 16 mem162) Positive.none
theorem h761 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b42 s115 :=
  appAll len55 d55 c55 sub305 ((h626 ρ a0) 55 mem163) (smaller (h754 ρ a0) sub304)
theorem h762 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b42 s117 :=
  appAll len60 d60 c60 sub306 ((h627 ρ a0) 60 mem164) (smaller (h756 ρ a0) sub117)
theorem h763 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b42 s134 :=
  appAll len110 d110 c110 sub307 ((h628 ρ a0) 110 mem165) (smaller (h755 ρ a0) sub283)
theorem h764 (ρ : Env) (a0 : Fits s67 (ρ 0)) : All tab ρ b42 s11 :=
  appAll len164 d164 c164 sub5 ((h629 ρ a0) 164 mem166) (smaller (h757 ρ a0) sub286)
theorem h765 (ρ : Env) (a0 : Fits s72 (ρ 0)) : All tab ρ b42 s11 :=
  appAll len175 d175 c175 sub5 ((h630 ρ a0) 175 mem167) (smaller (h758 ρ a0) sub288)
theorem h766 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b43 s6 :=
  varAll (fun i hi => a0 i (sub4 i hi))
theorem h767 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b43 s27 :=
  varAll (fun i hi => a0 i (sub281 i hi))
theorem h768 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b43 s29 :=
  varAll (fun i hi => a0 i (sub152 i hi))
theorem h769 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b43 s53 :=
  varAll (fun i hi => a0 i (sub308 i hi))
theorem h770 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b44 s11 :=
  botAll ((h759 ρ a0) 0 mem23)
theorem h771 (ρ : Env) (a0 : Fits s6 (ρ 0)) : All tab ρ b44 s11 :=
  appAll len15 d15 c15 sub5 ((h760 ρ a0) 15 mem168) (smaller (h766 ρ a0) sub4)
theorem h772 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b44 s114 :=
  appAll len54 d54 c54 sub309 ((h761 ρ a0) 54 mem169) (smaller (h767 ρ a0) sub281)
theorem h773 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b44 s110 :=
  appAll len59 d59 c59 sub213 ((h762 ρ a0) 59 mem170) (smaller (h768 ρ a0) sub152)
theorem h774 (ρ : Env) (a0 : Fits s53 (ρ 0)) : All tab ρ b44 s114 :=
  appAll len109 d109 c109 sub309 ((h763 ρ a0) 109 mem171) (smaller (h769 ρ a0) sub308)
theorem h775 (ρ : Env) (a0 : Fits s67 (ρ 0)) : All tab ρ b44 s45 :=
  botAll ((h764 ρ a0) 0 mem23)
theorem h776 (ρ : Env) (a0 : Fits s72 (ρ 0)) : All tab ρ b44 s276 :=
  botAll ((h765 ρ a0) 0 mem23)
theorem h777 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b44 s136 :=
  botAll ((h759 ρ a0) 0 mem23)
theorem h778 (ρ : Env)  : All tab ρ b45 s277 :=
  (consAll (lamAt d11 c11 (smaller (h770 (SelfintRecursiveTypes.cons s9 ρ) sub6) sub5)) (consAll (lamAt d15 c15 (smaller (h771 (SelfintRecursiveTypes.cons s6 ρ) sub4) sub5)) (consAll (lamAt d53 c53 (smaller (h772 (SelfintRecursiveTypes.cons s27 ρ) sub281) sub310)) (consAll (lamAt d54 c54 (smaller (h772 (SelfintRecursiveTypes.cons s27 ρ) sub281) sub309)) (consAll (lamAt d58 c58 (smaller (h773 (SelfintRecursiveTypes.cons s29 ρ) sub152) sub311)) (consAll (lamAt d109 c109 (smaller (h774 (SelfintRecursiveTypes.cons s53 ρ) sub308) sub309)) (consAll (lamAt d162 c162 (smaller (h775 (SelfintRecursiveTypes.cons s67 ρ) sub272) sub151)) (consAll (lamAt d169 c169 (smaller (h773 (SelfintRecursiveTypes.cons s29 ρ) sub152) sub312)) (consAll (lamAt d172 c172 (smaller (h776 (SelfintRecursiveTypes.cons s72 ρ) sub273) sub313)) (consAll (lamAt d228 c228 (smaller (h777 (SelfintRecursiveTypes.cons s9 ρ) sub6) sub125)) (consAll (lamAt d277 c277 (smaller (h772 (SelfintRecursiveTypes.cons s27 ρ) sub281) sub314)) (consAll (lamAt d297 c297 (smaller (h776 (SelfintRecursiveTypes.cons s72 ρ) sub273) sub315)) Positive.none))))))))))))
theorem h779 (ρ : Env) (a2 : Fits s9 (ρ 2)) : All tab ρ b46 s9 :=
  varAll (fun i hi => a2 i (sub6 i hi))
theorem h780 (ρ : Env) (a2 : Fits s6 (ρ 2)) : All tab ρ b46 s6 :=
  varAll (fun i hi => a2 i (sub4 i hi))
theorem h781 (ρ : Env) (a2 : Fits s11 (ρ 2)) : All tab ρ b46 s11 :=
  varAll (fun i hi => a2 i (sub5 i hi))
theorem h782 (ρ : Env) (a2 : Fits s26 (ρ 2)) : All tab ρ b46 s26 :=
  varAll (fun i hi => a2 i (sub316 i hi))
theorem h783 (ρ : Env) (a2 : Fits s36 (ρ 2)) : All tab ρ b46 s36 :=
  varAll (fun i hi => a2 i (sub160 i hi))
theorem h784 (ρ : Env) (a2 : Fits s7 (ρ 2)) : All tab ρ b46 s278 :=
  varAll (fun i hi => a2 i (sub317 i hi))
theorem h785 (ρ : Env) (a2 : Fits s52 (ρ 2)) : All tab ρ b46 s52 :=
  varAll (fun i hi => a2 i (sub302 i hi))
theorem h786 (ρ : Env) (a2 : Fits s66 (ρ 2)) : All tab ρ b46 s66 :=
  varAll (fun i hi => a2 i (sub116 i hi))
theorem h787 (ρ : Env) (a2 : Fits s32 (ρ 2)) : All tab ρ b46 s279 :=
  varAll (fun i hi => a2 i (sub318 i hi))
theorem h788 (ρ : Env) (a2 : Fits s48 (ρ 2)) : All tab ρ b46 s280 :=
  varAll (fun i hi => a2 i (sub319 i hi))
theorem h789 (ρ : Env) (a0 : Fits s28 (ρ 0)) : All tab ρ b47 s28 :=
  varAll (fun i hi => a0 i (sub304 i hi))
theorem h790 (ρ : Env) (a0 : Fits s56 (ρ 0)) : All tab ρ b47 s56 :=
  varAll (fun i hi => a0 i (sub119 i hi))
theorem h791 (ρ : Env) (a0 : Fits s54 (ρ 0)) : All tab ρ b47 s54 :=
  varAll (fun i hi => a0 i (sub283 i hi))
end Blc.H45.H45F9692402957530
