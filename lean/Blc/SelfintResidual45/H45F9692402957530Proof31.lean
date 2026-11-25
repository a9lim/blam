import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof30

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1116 (ρ : Env) (a0 : Fits s65 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h995 ρ a0 a1) 0 mem23)
theorem h1117 (ρ : Env) (a0 : Fits s60 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h988 ρ a0 a1) 0 mem23)
theorem h1118 (ρ : Env) (a0 : Fits s59 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len286 d286 c286 sub105 ((h987 ρ a0 a1) 286 mem302) (smaller (h1045 ρ a2) sub108)
theorem h1119 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1012 ρ a0 a1) 0 mem23)
theorem h1120 (ρ : Env) (a0 : Fits s83 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1010 ρ a0 a1) 0 mem23)
theorem h1121 (ρ : Env) (a0 : Fits s80 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len286 d286 c286 sub105 ((h1003 ρ a0 a1) 286 mem302) (smaller (h1045 ρ a2) sub108)
theorem h1122 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1007 ρ a0 a1) 0 mem23)
theorem h1123 (ρ : Env) (a0 : Fits s85 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1013 ρ a0 a1) 0 mem23)
theorem h1124 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len286 d286 c286 sub105 ((h1006 ρ a0 a1) 286 mem302) (smaller (h1045 ρ a2) sub108)
theorem h1125 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s70 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1015 ρ a0 a1) 0 mem23)
theorem h1126 (ρ : Env) (a0 : Fits s90 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len286 d286 c286 sub105 ((h1022 ρ a0 a1) 286 mem302) (smaller (h1045 ρ a2) sub108)
theorem h1127 (ρ : Env) (a0 : Fits s90 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h1023 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1128 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s89 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h1024 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1129 (ρ : Env) (a0 : Fits s90 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  appAll len128 d128 c128 sub163 ((h1022 ρ a0 a1) 128 mem291) (smaller (h1041 ρ a2) sub105)
theorem h1130 (ρ : Env) (a0 : Fits s91 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  botAll ((h1025 ρ a0 a1) 0 mem23)
theorem h1131 (ρ : Env) (a0 : Fits s91 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1025 ρ a0 a1) 0 mem23)
theorem h1132 (ρ : Env) (a0 : Fits s91 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h1026 ρ a0 a1) 0 mem23)
theorem h1133 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len178 d178 c178 sub105 ((h1027 ρ a0 a1) 178 mem299) (smaller (h1044 ρ a2) sub107)
theorem h1134 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len286 d286 c286 sub105 ((h1027 ρ a0 a1) 286 mem302) (smaller (h1045 ρ a2) sub108)
theorem h1135 (ρ : Env) (a0 : Fits s95 (ρ 0)) (a1 : Fits s51 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h1028 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1136 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  appAll len128 d128 c128 sub163 ((h1027 ρ a0 a1) 128 mem291) (smaller (h1041 ρ a2) sub105)
theorem h1137 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1029 ρ a0 a1) 0 mem23)
theorem h1138 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s79 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  botAll ((h1029 ρ a0 a1) 0 mem23)
theorem h1139 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s92 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  appAll len117 d117 c117 sub155 ((h1030 ρ a0 a1) 117 mem290) (smaller (h1041 ρ a2) sub105)
theorem h1140 (ρ : Env) (a0 : Fits s96 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  botAll ((h1031 ρ a0 a1) 0 mem23)
theorem h1141 (ρ : Env) (a0 : Fits s96 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1031 ρ a0 a1) 0 mem23)
theorem h1142 (ρ : Env) (a0 : Fits s96 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1031 ρ a0 a1) 0 mem23)
theorem h1143 (ρ : Env) (a0 : Fits s56 (ρ 0)) (a1 : Fits s51 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s51 :=
  botAll ((h1032 ρ a0 a1) 0 mem23)
theorem h1144 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s48 (ρ 2)) : All tab ρ b60 s140 :=
  botAll ((h1033 ρ a0 a1) 0 mem23)
theorem h1145 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s71 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1033 ρ a0 a1) 0 mem23)
theorem h1146 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s86 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1033 ρ a0 a1) 0 mem23)
theorem h1147 (ρ : Env) (a0 : Fits s65 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h995 ρ a0 a1) 0 mem23)
theorem h1148 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1017 ρ a0 a1) 0 mem23)
theorem h1149 (ρ : Env) (a0 : Fits s62 (ρ 0)) (a1 : Fits s11 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len347 d347 c347 sub105 ((h1034 ρ a0 a1) 347 mem303) (smaller (h1046 ρ a2) sub109)
theorem h1150 (ρ : Env) (a0 : Fits s83 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b60 s48 :=
  botAll ((h1010 ρ a0 a1) 0 mem23)
theorem h1151 (ρ : Env) (a0 : Fits s80 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s70 (ρ 2)) : All tab ρ b60 s48 :=
  appAll len347 d347 c347 sub105 ((h1003 ρ a0 a1) 347 mem304) (smaller (h1046 ρ a2) sub109)
end Blc.H45.H45F9692402957530
