import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof23

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h864 (ρ : Env) (a0 : Fits s30 (ρ 0)) : All tab ρ b13 s6 :=
  appAll len4 d4 c4 sub4 ((h847 ρ a0) 4 mem102) Positive.none
theorem h865 (ρ : Env) (a0 : Fits s67 (ρ 0)) : All tab ρ b13 s3 :=
  appAll len102 d102 c102 sub15 ((h848 ρ a0) 102 mem132) Positive.none
theorem h866 (ρ : Env) (a0 : Fits s66 (ρ 0)) : All tab ρ b13 s67 :=
  appAll len108 d108 c108 sub189 ((h849 ρ a0) 108 mem202) (smaller (h832 ρ) sub279)
theorem h867 (ρ : Env) (a0 : Fits s83 (ρ 0)) : All tab ρ b13 s128 :=
  appAll len125 d125 c125 sub203 ((h850 ρ a0) 125 mem203) (smaller (h832 ρ) sub275)
theorem h868 (ρ : Env) (a0 : Fits s90 (ρ 0)) : All tab ρ b13 s67 :=
  appAll len108 d108 c108 sub189 ((h851 ρ a0) 108 mem202) (smaller (h832 ρ) sub279)
theorem h869 (ρ : Env)  : All tab ρ b14 s187 :=
  (consAll (lamAt d3 c3 (smaller (h852 (SelfintRecursiveTypes.cons s1 ρ) sub280) sub4)) Positive.none)
theorem h870 (ρ : Env)  : All tab ρ b14 s188 :=
  (consAll (lamAt d11 c11 (smaller (h853 (SelfintRecursiveTypes.cons s7 ρ) sub281) sub173)) (consAll (lamAt d26 c26 (smaller (h855 (SelfintRecursiveTypes.cons s19 ρ) sub282) sub212)) (consAll (lamAt d38 c38 (smaller (h856 (SelfintRecursiveTypes.cons s26 ρ) sub226) sub178)) (consAll (lamAt d50 c50 (smaller (h858 (SelfintRecursiveTypes.cons s34 ρ) sub283) sub182)) Positive.none))))
theorem h871 (ρ : Env)  : All tab ρ b14 s5 :=
  (consAll (lamAt d9 c9 (smaller (h854 (SelfintRecursiveTypes.cons s6 ρ) sub4) sub4)) Positive.none)
theorem h872 (ρ : Env)  : All tab ρ b14 s48 :=
  (consAll (lamAt d9 c9 (smaller (h854 (SelfintRecursiveTypes.cons s6 ρ) sub4) sub4)) (consAll (lamAt d24 c24 (smaller (h857 (SelfintRecursiveTypes.cons s17 ρ) sub17) sub4)) Positive.none))
theorem h873 (ρ : Env)  : All tab ρ b14 s116 :=
  (consAll (lamAt d58 c58 (smaller (h859 (SelfintRecursiveTypes.cons s41 ρ) sub222) sub4)) Positive.none)
theorem h874 (ρ : Env)  : All tab ρ b14 s45 :=
  (consAll (lamAt d66 c66 (smaller (h860 (SelfintRecursiveTypes.cons s46 ρ) sub184) sub4)) (consAll (lamAt d81 c81 (smaller (h862 (SelfintRecursiveTypes.cons s56 ρ) sub284) sub4)) (consAll (lamAt d95 c95 (smaller (h864 (SelfintRecursiveTypes.cons s30 ρ) sub178) sub4)) (consAll (lamAt d101 c101 (smaller (h865 (SelfintRecursiveTypes.cons s67 ρ) sub189) sub15)) Positive.none))))
theorem h875 (ρ : Env)  : All tab ρ b14 s141 :=
  (consAll (lamAt d38 c38 (smaller (h856 (SelfintRecursiveTypes.cons s26 ρ) sub226) sub178)) (consAll (lamAt d70 c70 (smaller (h861 (SelfintRecursiveTypes.cons s44 ρ) sub224) sub184)) (consAll (lamAt d85 c85 (smaller (h863 (SelfintRecursiveTypes.cons s59 ρ) sub285) sub199)) (consAll (lamAt d107 c107 (smaller (h866 (SelfintRecursiveTypes.cons s66 ρ) sub227) sub189)) (consAll (lamAt d124 c124 (smaller (h867 (SelfintRecursiveTypes.cons s83 ρ) sub286) sub203)) (consAll (lamAt d136 c136 (smaller (h868 (SelfintRecursiveTypes.cons s90 ρ) sub228) sub189)) Positive.none))))))
theorem h876 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b15 s11 :=
  appAll len11 d11 c11 sub173 ((h870 ρ) 11 mem204) (Positive.consAll ((h640 ρ a0) 12 mem6) (Positive.consAll ((h637 ρ a0) 18 mem4) Positive.none))
theorem h877 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b15 s111 :=
  appAll len26 d26 c26 sub212 ((h870 ρ) 26 mem205) (Positive.consAll ((h648 ρ a0) 33 mem11) (Positive.consAll ((h659 ρ a0) 47 mem24) Positive.none))
theorem h878 (ρ : Env) (a0 : Fits s25 (ρ 0)) : All tab ρ b15 s30 :=
  appAll len38 d38 c38 sub178 ((h870 ρ) 38 mem206) (Positive.consAll ((h653 ρ a0) 18 mem4) (Positive.consAll ((h656 ρ a0) 39 mem15) Positive.none))
theorem h879 (ρ : Env) (a0 : Fits s32 (ρ 0)) : All tab ρ b15 s38 :=
  appAll len50 d50 c50 sub182 ((h870 ρ) 50 mem207) (Positive.consAll ((h663 ρ a0) 18 mem4) (Positive.consAll ((h666 ρ a0) 51 mem33) Positive.none))
theorem h880 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b16 s6 :=
  appAll len10 d10 c10 sub4 ((h876 ρ a0) 10 mem5) (smaller (h871 ρ) sub2)
theorem h881 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b16 s6 :=
  appAll len25 d25 c25 sub4 ((h877 ρ a0) 25 mem208) (Positive.consAll ((h875 ρ) 38 mem17) (Positive.consAll ((h873 ρ) 58 mem18) (Positive.consAll ((h875 ρ) 70 mem19) (Positive.consAll ((h875 ρ) 85 mem20) (Positive.consAll ((h875 ρ) 107 mem21) (Positive.consAll ((h875 ρ) 124 mem22) (Positive.consAll ((h875 ρ) 136 mem23) Positive.none)))))))
theorem h882 (ρ : Env) (a0 : Fits s25 (ρ 0)) : All tab ρ b16 s6 :=
  appAll len37 d37 c37 sub4 ((h878 ρ a0) 37 mem14) (smaller (h872 ρ) sub39)
theorem h883 (ρ : Env) (a0 : Fits s32 (ρ 0)) : All tab ρ b16 s6 :=
  appAll len49 d49 c49 sub4 ((h879 ρ a0) 49 mem32) (Positive.consAll ((h872 ρ) 9 mem131) (Positive.consAll ((h874 ρ) 66 mem28) (Positive.consAll ((h874 ρ) 81 mem29) (Positive.consAll ((h874 ρ) 95 mem30) (Positive.consAll ((h874 ρ) 101 mem31) Positive.none)))))
theorem h884 (ρ : Env)  : All tab ρ b17 s108 :=
  (consAll (lamAt d7 c7 (smaller (h880 (SelfintRecursiveTypes.cons s4 ρ) sub216) sub4)) Positive.none)
theorem h885 (ρ : Env)  : All tab ρ b17 s110 :=
  (consAll (lamAt d20 c20 (smaller (h881 (SelfintRecursiveTypes.cons s14 ρ) sub217) sub4)) Positive.none)
theorem h886 (ρ : Env)  : All tab ρ b17 s113 :=
  (consAll (lamAt d35 c35 (smaller (h882 (SelfintRecursiveTypes.cons s25 ρ) sub219) sub4)) (consAll (lamAt d48 c48 (smaller (h883 (SelfintRecursiveTypes.cons s32 ρ) sub220) sub4)) Positive.none))
theorem h887 (ρ : Env)  : All tab ρ b18 s6 :=
  appAll len3 d3 c3 sub4 ((h869 ρ) 3 mem209) (Positive.consAll ((h884 ρ) 7 mem3) (Positive.consAll ((h885 ρ) 20 mem10) (Positive.consAll ((h886 ρ) 35 mem13) (Positive.consAll ((h886 ρ) 48 mem27) Positive.none))))
theorem h888 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b19 s17 :=
  appAll len2 d2 c2 sub17 ((h887 ρ) 2 mem7) Positive.none
end Blc.H45.H45F9692715709398
