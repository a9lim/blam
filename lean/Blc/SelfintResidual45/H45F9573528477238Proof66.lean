import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Proof65

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h2364 (ρ : Env) (a0 : Fits s501 (ρ 0)) (a1 : Fits s507 (ρ 1)) : All tab ρ b11 s707 :=
  appAll len1062 d1062 c1062 sub1296 ((h1969 ρ a0 a1) 1062 mem1159) (smaller (h657 ρ a1) sub639)
theorem h2365 (ρ : Env) (a0 : Fits s455 (ρ 0)) (a1 : Fits s507 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len1064 d1064 c1064 sub5 ((h1970 ρ a0 a1) 1064 mem1160) (smaller (h657 ρ a1) sub639)
theorem h2366 (ρ : Env) (a0 : Fits s508 (ρ 0)) (a1 : Fits s501 (ρ 1)) : All tab ρ b11 s709 :=
  appAll len1066 d1066 c1066 sub1283 ((h1971 ρ a0 a1) 1066 mem1161) (smaller (h651 ρ a1) sub633)
theorem h2367 (ρ : Env) (a0 : Fits s510 (ρ 0)) (a1 : Fits s501 (ρ 1)) : All tab ρ b11 s710 :=
  appAll len1069 d1069 c1069 sub1113 ((h1972 ρ a0 a1) 1069 mem1162) (smaller (h651 ρ a1) sub633)
theorem h2368 (ρ : Env) (a0 : Fits s511 (ρ 0)) (a1 : Fits s512 (ρ 1)) : All tab ρ b11 s510 :=
  appAll len1073 d1073 c1073 sub342 ((h1973 ρ a0 a1) 1073 mem1163) (smaller (h663 ρ a1) sub644)
theorem h2369 (ρ : Env) (a0 : Fits s514 (ρ 0)) (a1 : Fits s501 (ρ 1)) : All tab ρ b11 s510 :=
  appAll len1077 d1077 c1077 sub342 ((h1974 ρ a0 a1) 1077 mem1164) (smaller (h651 ρ a1) sub633)
theorem h2370 (ρ : Env) (a0 : Fits s515 (ρ 0)) (a1 : Fits s512 (ρ 1)) : All tab ρ b11 s514 :=
  appAll len1080 d1080 c1080 sub344 ((h1975 ρ a0 a1) 1080 mem1165) (smaller (h663 ρ a1) sub644)
theorem h2371 (ρ : Env) (a0 : Fits s507 (ρ 0)) (a1 : Fits s507 (ρ 1)) : All tab ρ b11 s11 :=
  botAll ((h1976 ρ a0 a1) 0 mem546)
theorem h2372 (ρ : Env) (a0 : Fits s516 (ρ 0)) (a1 : Fits s512 (ρ 1)) : All tab ρ b11 s11 :=
  botAll ((h1977 ρ a0 a1) 0 mem546)
theorem h2373 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s512 (ρ 1)) : All tab ρ b11 s11 :=
  botAll ((h1978 ρ a0 a1) 0 mem546)
theorem h2374 (ρ : Env) (a0 : Fits s518 (ρ 0)) (a1 : Fits s512 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len1085 d1085 c1085 sub5 ((h1979 ρ a0 a1) 1085 mem1166) (smaller (h663 ρ a1) sub644)
theorem h2375 (ρ : Env) (a0 : Fits s512 (ρ 0)) (a1 : Fits s389 (ρ 1)) : All tab ρ b11 s11 :=
  appAll len824 d824 c824 sub5 ((h1980 ρ a0 a1) 824 mem1101) (smaller (h584 ρ a1) sub569)
theorem h2376 (ρ : Env) (a0 : Fits s519 (ρ 0)) (a1 : Fits s220 (ρ 1)) : All tab ρ b11 s375 :=
  appAll len1090 d1090 c1090 sub577 ((h1981 ρ a0 a1) 1090 mem1167) (smaller (h490 ρ a1) sub478)
theorem h2377 (ρ : Env) (a0 : Fits s229 (ρ 0)) (a1 : Fits s402 (ρ 1)) : All tab ρ b11 s505 :=
  appAll len1093 d1093 c1093 sub646 ((h1982 ρ a0 a1) 1093 mem1168) (smaller (h589 ρ a1) sub574)
theorem h2378 (ρ : Env) (a0 : Fits s402 (ρ 0)) (a1 : Fits s230 (ρ 1)) : All tab ρ b11 s505 :=
  appAll len1095 d1095 c1095 sub646 ((h1983 ρ a0 a1) 1095 mem1169) (smaller (h491 ρ a1) sub479)
theorem h2379 (ρ : Env) (a0 : Fits s501 (ρ 0)) (a1 : Fits s507 (ρ 1)) : All tab ρ b11 s715 :=
  appAll len1097 d1097 c1097 sub1297 ((h1984 ρ a0 a1) 1097 mem1170) (smaller (h657 ρ a1) sub639)
theorem h2380 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b12 s520 :=
  (consAll (lamAt d2 c2 (smaller (h1985 (SelfintRecursiveTypes.cons s1 ρ) sub0 a0) sub5)) Positive.none)
theorem h2381 (ρ : Env) (a0 : Fits s2 (ρ 0)) : All tab ρ b12 s520 :=
  (consAll (lamAt d2 c2 (smaller (h1986 (SelfintRecursiveTypes.cons s1 ρ) sub0 a0) sub5)) Positive.none)
theorem h2382 (ρ : Env) (a0 : Fits s3 (ρ 0)) : All tab ρ b12 s521 :=
  (consAll (lamAt d5 c5 (smaller (h1987 (SelfintRecursiveTypes.cons s2 ρ) sub352 a0) sub5)) Positive.none)
theorem h2383 (ρ : Env) (a0 : Fits s5 (ρ 0)) : All tab ρ b12 s522 :=
  (consAll (lamAt d7 c7 (smaller (h1988 (SelfintRecursiveTypes.cons s3 ρ) sub353 a0) sub5)) Positive.none)
theorem h2384 (ρ : Env) (a0 : Fits s7 (ρ 0)) : All tab ρ b12 s523 :=
  (consAll (lamAt d10 c10 (smaller (h1989 (SelfintRecursiveTypes.cons s5 ρ) sub354 a0) sub5)) Positive.none)
theorem h2385 (ρ : Env) (a0 : Fits s9 (ρ 0)) : All tab ρ b12 s5 :=
  (consAll (lamAt d13 c13 (smaller (h1990 (SelfintRecursiveTypes.cons s8 ρ) sub1124 a0) sub5)) (consAll (lamAt d16 c16 (smaller (h1991 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0) sub5)) (consAll (lamAt d23 c23 (smaller (h1993 (SelfintRecursiveTypes.cons s16 ρ) sub1019 a0) sub5)) (consAll (lamAt d145 c145 (smaller (h2033 (SelfintRecursiveTypes.cons s74 ρ) sub44 a0) sub391)) (consAll (lamAt d197 c197 (smaller (h2053 (SelfintRecursiveTypes.cons s96 ρ) sub61 a0) sub402)) (consAll (lamAt d218 c218 (smaller (h2062 (SelfintRecursiveTypes.cons s108 ρ) sub68 a0) sub411)) Positive.none))))))
theorem h2386 (ρ : Env) (a0 : Fits s14 (ρ 0)) : All tab ρ b12 s7 :=
  (consAll (lamAt d17 c17 (smaller (h1992 (SelfintRecursiveTypes.cons s12 ρ) sub6 a0) sub5)) (consAll (lamAt d25 c25 (smaller (h1994 (SelfintRecursiveTypes.cons s18 ρ) sub8 a0) sub1019)) Positive.none))
theorem h2387 (ρ : Env) (a0 : Fits s21 (ρ 0)) : All tab ρ b12 s16 :=
  (consAll (lamAt d24 c24 (smaller (h1995 (SelfintRecursiveTypes.cons s17 ρ) sub9 a0) sub5)) (consAll (lamAt d32 c32 (smaller (h1996 (SelfintRecursiveTypes.cons s22 ρ) sub10 a0) sub5)) Positive.none))
theorem h2388 (ρ : Env) (a0 : Fits s24 (ρ 0)) : All tab ρ b12 s524 :=
  (consAll (lamAt d33 c33 (smaller (h1997 (SelfintRecursiveTypes.cons s21 ρ) sub360 a0) sub5)) Positive.none)
theorem h2389 (ρ : Env) (a0 : Fits s26 (ρ 0)) : All tab ρ b12 s21 :=
  (consAll (lamAt d16 c16 (smaller (h1999 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0) sub5)) (consAll (lamAt d38 c38 (smaller (h1998 (SelfintRecursiveTypes.cons s25 ρ) sub12 a0) sub5)) Positive.none))
theorem h2390 (ρ : Env) (a0 : Fits s27 (ρ 0)) : All tab ρ b12 s24 :=
  (consAll (lamAt d41 c41 (smaller (h2000 (SelfintRecursiveTypes.cons s26 ρ) sub13 a0) sub5)) Positive.none)
theorem h2391 (ρ : Env) (a0 : Fits s28 (ρ 0)) : All tab ρ b12 s20 :=
  (consAll (lamAt d43 c43 (smaller (h2001 (SelfintRecursiveTypes.cons s27 ρ) sub14 a0) sub5)) Positive.none)
theorem h2392 (ρ : Env) (a0 : Fits s29 (ρ 0)) : All tab ρ b12 s23 :=
  (consAll (lamAt d47 c47 (smaller (h2002 (SelfintRecursiveTypes.cons s28 ρ) sub363 a0) sub5)) Positive.none)
theorem h2393 (ρ : Env) (a0 : Fits s32 (ρ 0)) : All tab ρ b12 s28 :=
  (consAll (lamAt d50 c50 (smaller (h2003 (SelfintRecursiveTypes.cons s30 ρ) sub1125 a0) sub5)) (consAll (lamAt d54 c54 (smaller (h2004 (SelfintRecursiveTypes.cons s34 ρ) sub1020 a0) sub5)) (consAll (lamAt d63 c63 (smaller (h2006 (SelfintRecursiveTypes.cons s39 ρ) sub1021 a0) sub1020)) Positive.none)))
theorem h2394 (ρ : Env) (a0 : Fits s37 (ρ 0)) : All tab ρ b12 s29 :=
  (consAll (lamAt d57 c57 (smaller (h2005 (SelfintRecursiveTypes.cons s36 ρ) sub18 a0) sub1020)) (consAll (lamAt d66 c66 (smaller (h2007 (SelfintRecursiveTypes.cons s41 ρ) sub20 a0) sub1021)) Positive.none))
theorem h2395 (ρ : Env) (a0 : Fits s43 (ρ 0)) : All tab ρ b12 s32 :=
  (consAll (lamAt d69 c69 (smaller (h2008 (SelfintRecursiveTypes.cons s42 ρ) sub21 a0) sub366)) (consAll (lamAt d80 c80 (smaller (h2012 (SelfintRecursiveTypes.cons s47 ρ) sub25 a0) sub24)) (consAll (lamAt d87 c87 (smaller (h2014 (SelfintRecursiveTypes.cons s50 ρ) sub27 a0) sub26)) (consAll (lamAt d97 c97 (smaller (h2018 (SelfintRecursiveTypes.cons s53 ρ) sub1129 a0) sub1130)) (consAll (lamAt d100 c100 (smaller (h2019 (SelfintRecursiveTypes.cons s55 ρ) sub31 a0) sub1058)) (consAll (lamAt d109 c109 (smaller (h2021 (SelfintRecursiveTypes.cons s60 ρ) sub33 a0) sub31)) (consAll (lamAt d161 c161 (smaller (h2039 (SelfintRecursiveTypes.cons s78 ρ) sub1141 a0) sub1142)) (consAll (lamAt d164 c164 (smaller (h2040 (SelfintRecursiveTypes.cons s80 ρ) sub49 a0) sub1065)) (consAll (lamAt d173 c173 (smaller (h2042 (SelfintRecursiveTypes.cons s85 ρ) sub51 a0) sub49)) (consAll (lamAt d221 c221 (smaller (h2063 (SelfintRecursiveTypes.cons s109 ρ) sub1024 a0) sub412)) Positive.none))))))))))
theorem h2396 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b12 s37 :=
  (consAll (lamAt d71 c71 (smaller (h2009 (SelfintRecursiveTypes.cons s43 ρ) sub369 a0) sub366)) Positive.none)
theorem h2397 (ρ : Env) (a0 : Fits s44 (ρ 0)) : All tab ρ b12 s14 :=
  (consAll (lamAt d65 c65 (smaller (h2010 (SelfintRecursiveTypes.cons s40 ρ) sub1126 a0) sub1057)) (consAll (lamAt d77 c77 (smaller (h2011 (SelfintRecursiveTypes.cons s46 ρ) sub24 a0) sub1054)) (consAll (lamAt d84 c84 (smaller (h2013 (SelfintRecursiveTypes.cons s49 ρ) sub26 a0) sub24)) (consAll (lamAt d96 c96 (smaller (h2024 (SelfintRecursiveTypes.cons s52 ρ) sub380 a0) sub1020)) (consAll (lamAt d101 c101 (smaller (h2023 (SelfintRecursiveTypes.cons s43 ρ) sub369 a0) sub1298)) (consAll (lamAt d110 c110 (smaller (h2023 (SelfintRecursiveTypes.cons s43 ρ) sub369 a0) sub1299)) (consAll (lamAt d160 c160 (smaller (h2044 (SelfintRecursiveTypes.cons s77 ρ) sub394 a0) sub5)) (consAll (lamAt d165 c165 (smaller (h2023 (SelfintRecursiveTypes.cons s43 ρ) sub369 a0) sub1300)) (consAll (lamAt d174 c174 (smaller (h2023 (SelfintRecursiveTypes.cons s43 ρ) sub369 a0) sub1301)) Positive.none)))))))))
theorem h2398 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b12 s529 :=
  (consAll (lamAt d85 c85 (smaller (h2015 (SelfintRecursiveTypes.cons s44 ρ) sub377 a0) sub24)) Positive.none)
theorem h2399 (ρ : Env) (a0 : Fits s0 (ρ 0)) : All tab ρ b12 s528 :=
  (consAll (lamAt d78 c78 (smaller (h2016 (SelfintRecursiveTypes.cons s44 ρ) sub377 a0) sub1054)) Positive.none)
end Blc.H45.H45F9573528477238
