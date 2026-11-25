import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof26

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h972 (ρ : Env) (a1 : Fits s63 (ρ 1)) : All tab ρ b57 s63 :=
  varAll (fun i hi => a1 i (sub147 i hi))
theorem h973 (ρ : Env) (a1 : Fits s89 (ρ 1)) : All tab ρ b57 s89 :=
  varAll (fun i hi => a1 i (sub148 i hi))
theorem h974 (ρ : Env) (a1 : Fits s79 (ρ 1)) : All tab ρ b57 s79 :=
  varAll (fun i hi => a1 i (sub110 i hi))
theorem h975 (ρ : Env) (a1 : Fits s51 (ρ 1)) : All tab ρ b57 s51 :=
  varAll (fun i hi => a1 i (sub155 i hi))
theorem h976 (ρ : Env) (a1 : Fits s92 (ρ 1)) : All tab ρ b57 s92 :=
  varAll (fun i hi => a1 i (sub149 i hi))
theorem h977 (ρ : Env) (a1 : Fits s86 (ρ 1)) : All tab ρ b57 s86 :=
  varAll (fun i hi => a1 i (sub108 i hi))
theorem h978 (ρ : Env) (a1 : Fits s87 (ρ 1)) : All tab ρ b57 s87 :=
  varAll (fun i hi => a1 i (sub150 i hi))
theorem h979 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b58 s103 :=
  appAll len18 d18 c18 sub176 ((h919 ρ a0) 18 mem228) (smaller (h952 ρ a1) sub137)
theorem h980 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len23 d23 c23 sub5 ((h920 ρ a0) 23 mem229) (smaller (h952 ρ a1) sub137)
theorem h981 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b58 s103 :=
  appAll len33 d33 c33 sub176 ((h921 ρ a0) 33 mem230) (smaller (h953 ρ a1) sub138)
theorem h982 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b58 s108 :=
  appAll len37 d37 c37 sub121 ((h922 ρ a0) 37 mem231) (smaller (h953 ρ a1) sub138)
theorem h983 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s19 (ρ 1)) : All tab ρ b58 s103 :=
  appAll len44 d44 c44 sub176 ((h923 ρ a0) 44 mem232) (smaller (h954 ρ a1) sub139)
theorem h984 (ρ : Env) (a0 : Fits s22 (ρ 0)) (a1 : Fits s19 (ρ 1)) : All tab ρ b58 s118 :=
  appAll len62 d62 c62 sub122 ((h924 ρ a0) 62 mem233) (smaller (h954 ρ a1) sub139)
theorem h985 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s33 (ρ 1)) : All tab ρ b58 s124 :=
  appAll len77 d77 c77 sub123 ((h925 ρ a0) 77 mem234) (smaller (h955 ρ a1) sub140)
theorem h986 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s46 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len118 d118 c118 sub125 ((h926 ρ a0) 118 mem235) (smaller (h956 ρ a1) sub141)
theorem h987 (ρ : Env) (a0 : Fits s59 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b58 s141 :=
  appAll len129 d129 c129 sub130 ((h927 ρ a0) 129 mem236) (smaller (h957 ρ a1) sub105)
theorem h988 (ρ : Env) (a0 : Fits s60 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len132 d132 c132 sub5 ((h928 ρ a0) 132 mem34) (smaller (h957 ρ a1) sub105)
theorem h989 (ρ : Env) (a0 : Fits s57 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len90 d90 c90 sub5 ((h929 ρ a0) 90 mem237) (smaller (h958 ρ a1) sub151)
theorem h990 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b58 s143 :=
  appAll len134 d134 c134 sub177 ((h930 ρ a0) 134 mem238) (smaller (h958 ρ a1) sub151)
theorem h991 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s45 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len90 d90 c90 sub5 ((h931 ρ a0) 90 mem239) (smaller (h958 ρ a1) sub151)
theorem h992 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b58 s148 :=
  appAll len150 d150 c150 sub126 ((h932 ρ a0) 150 mem240) (smaller (h959 ρ a1) sub7)
theorem h993 (ρ : Env) (a0 : Fits s62 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b58 s149 :=
  appAll len152 d152 c152 sub178 ((h933 ρ a0) 152 mem241) (smaller (h960 ρ a1) sub5)
theorem h994 (ρ : Env) (a0 : Fits s64 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len161 d161 c161 sub125 ((h934 ρ a0) 161 mem242) (smaller (h960 ρ a1) sub5)
theorem h995 (ρ : Env) (a0 : Fits s65 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len116 d116 c116 sub5 ((h935 ρ a0) 116 mem243) (smaller (h960 ρ a1) sub5)
theorem h996 (ρ : Env) (a0 : Fits s68 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len116 d116 c116 sub5 ((h936 ρ a0) 116 mem53) (smaller (h960 ρ a1) sub5)
theorem h997 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s29 (ρ 1)) : All tab ρ b58 s155 :=
  appAll len180 d180 c180 sub128 ((h937 ρ a0) 180 mem244) (smaller (h961 ρ a1) sub152)
theorem h998 (ρ : Env) (a0 : Fits s75 (ρ 0)) (a1 : Fits s55 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len181 d181 c181 sub125 ((h938 ρ a0) 181 mem245) (smaller (h963 ρ a1) sub153)
theorem h999 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len185 d185 c185 sub125 ((h926 ρ a0) 185 mem246) (smaller (h962 ρ a1) sub142)
theorem h1000 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s76 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len187 d187 c187 sub125 ((h939 ρ a0) 187 mem247) (smaller (h964 ρ a1) sub154)
theorem h1001 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s29 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len194 d194 c194 sub5 ((h931 ρ a0) 194 mem248) (smaller (h961 ρ a1) sub152)
theorem h1002 (ρ : Env) (a0 : Fits s77 (ρ 0)) (a1 : Fits s29 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len194 d194 c194 sub5 ((h940 ρ a0) 194 mem249) (smaller (h961 ρ a1) sub152)
theorem h1003 (ρ : Env) (a0 : Fits s80 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b58 s141 :=
  appAll len213 d213 c213 sub130 ((h941 ρ a0) 213 mem250) (smaller (h965 ρ a1) sub107)
theorem h1004 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s78 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len230 d230 c230 sub125 ((h926 ρ a0) 230 mem251) (smaller (h966 ρ a1) sub143)
theorem h1005 (ρ : Env) (a0 : Fits s50 (ρ 0)) (a1 : Fits s58 (ρ 1)) : All tab ρ b58 s136 :=
  appAll len245 d245 c245 sub125 ((h926 ρ a0) 245 mem252) (smaller (h967 ρ a1) sub144)
theorem h1006 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b58 s141 :=
  appAll len254 d254 c254 sub130 ((h942 ρ a0) 254 mem253) (smaller (h968 ρ a1) sub109)
theorem h1007 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b58 s11 :=
  appAll len244 d244 c244 sub5 ((h931 ρ a0) 244 mem254) (smaller (h965 ρ a1) sub107)
end Blc.H45.H45F9692402957530
