import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof28

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1044 (ρ : Env) (a2 : Fits s71 (ρ 2)) : All tab ρ b59 s71 :=
  varAll (fun i hi => a2 i (sub107 i hi))
theorem h1045 (ρ : Env) (a2 : Fits s86 (ρ 2)) : All tab ρ b59 s86 :=
  varAll (fun i hi => a2 i (sub108 i hi))
theorem h1046 (ρ : Env) (a2 : Fits s70 (ρ 2)) : All tab ρ b59 s70 :=
  varAll (fun i hi => a2 i (sub109 i hi))
theorem h1047 (ρ : Env) (a2 : Fits s79 (ρ 2)) : All tab ρ b59 s79 :=
  varAll (fun i hi => a2 i (sub110 i hi))
theorem h1048 (ρ : Env) (a2 : Fits s11 (ρ 2)) : All tab ρ b59 s11 :=
  varAll (fun i hi => a2 i (sub5 i hi))
theorem h1049 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s6 :=
  appAll len17 d17 c17 sub4 ((h979 ρ a0 a1) 17 mem286) (smaller (h1040 ρ a2) sub13)
theorem h1050 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s11 :=
  botAll ((h980 ρ a0 a1) 0 mem23)
theorem h1051 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s6 :=
  appAll len17 d17 c17 sub4 ((h981 ρ a0 a1) 17 mem286) (smaller (h1040 ρ a2) sub13)
theorem h1052 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s9 :=
  appAll len36 d36 c36 sub6 ((h982 ρ a0 a1) 36 mem287) (smaller (h1040 ρ a2) sub13)
theorem h1053 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s19 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s6 :=
  appAll len17 d17 c17 sub4 ((h983 ρ a0 a1) 17 mem286) (smaller (h1040 ρ a2) sub13)
theorem h1054 (ρ : Env) (a0 : Fits s22 (ρ 0)) (a1 : Fits s19 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s11 :=
  appAll len61 d61 c61 sub5 ((h984 ρ a0 a1) 61 mem288) (smaller (h1040 ρ a2) sub13)
theorem h1055 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s33 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b60 s36 :=
  appAll len76 d76 c76 sub160 ((h985 ρ a0 a1) 76 mem289) (smaller (h1040 ρ a2) sub13)
theorem h1056 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s46 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h986 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1057 (ρ : Env) (a0 : Fits s59 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  appAll len128 d128 c128 sub163 ((h987 ρ a0 a1) 128 mem291) (smaller (h1041 ρ a2) sub105)
theorem h1058 (ρ : Env) (a0 : Fits s60 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  botAll ((h988 ρ a0 a1) 0 mem23)
theorem h1059 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b60 s142 :=
  botAll ((h989 ρ a0 a1) 0 mem23)
theorem h1060 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b60 s142 :=
  appAll len133 d133 c133 sub165 ((h990 ρ a0 a1) 133 mem292) (smaller (h1042 ρ a2) sub7)
theorem h1061 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b60 s142 :=
  botAll ((h991 ρ a0 a1) 0 mem23)
theorem h1062 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h990 ρ a0 a1) 117 mem293) (smaller (h1041 ρ a2) sub105)
theorem h1063 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h989 ρ a0 a1) 0 mem23)
theorem h1064 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h991 ρ a0 a1) 0 mem23)
theorem h1065 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s32 (ρ 2)) : All tab ρ b60 s45 :=
  appAll len148 d148 c148 sub151 ((h992 ρ a0 a1) 148 mem294) (smaller (h1043 ρ a2) sub106)
theorem h1066 (ρ : Env) (a0 : Fits s62 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  appAll len128 d128 c128 sub163 ((h993 ρ a0 a1) 128 mem295) (smaller (h1041 ρ a2) sub105)
theorem h1067 (ρ : Env) (a0 : Fits s64 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h994 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1068 (ρ : Env) (a0 : Fits s65 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  botAll ((h995 ρ a0 a1) 0 mem23)
theorem h1069 (ρ : Env) (a0 : Fits s68 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h996 ρ a0 a1) 0 mem23)
theorem h1070 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s7 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h992 ρ a0 a1) 117 mem296) (smaller (h1041 ρ a2) sub105)
theorem h1071 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len178 d178 c178 sub105 ((h997 ρ a0 a1) 178 mem297) (smaller (h1044 ρ a2) sub107)
theorem h1072 (ρ : Env) (a0 : Fits s75 (ρ 0)) (a1 : Fits s55 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h998 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1073 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s24 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h999 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1074 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s76 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h1000 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1075 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1001 ρ a0 a1) 0 mem23)
theorem h1076 (ρ : Env) (a0 : Fits s77 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1002 ρ a0 a1) 0 mem23)
theorem h1077 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h997 ρ a0 a1) 117 mem298) (smaller (h1041 ρ a2) sub105)
theorem h1078 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h1001 ρ a0 a1) 0 mem23)
theorem h1079 (ρ : Env) (a0 : Fits s77 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h1002 ρ a0 a1) 0 mem23)
end Blc.H45.H45F9692402957530
