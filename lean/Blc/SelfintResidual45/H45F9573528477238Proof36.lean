import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Proof35

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h1296 (ρ : Env) (a0 : Fits s231 (ρ 0)) (a1 : Fits s226 (ρ 1)) (a2 : Fits s220 (ρ 2)) : All tab ρ b8 s605 :=
  appAll len478 d478 c478 sub1081 ((h494 ρ a1) 478 mem381) (smaller (h1029 ρ a0 a2) sub154)
theorem h1297 (ρ : Env) (a0 : Fits s230 (ρ 0)) (a1 : Fits s227 (ρ 1)) (a2 : Fits s204 (ρ 2)) : All tab ρ b8 s232 :=
  appAll len484 d484 c484 sub154 ((h496 ρ a1) 484 mem382) (smaller (h1031 ρ a0 a2) sub485)
theorem h1298 (ρ : Env) (a0 : Fits s234 (ρ 0)) (a1 : Fits s226 (ρ 1)) (a2 : Fits s220 (ρ 2)) : All tab ρ b8 s232 :=
  appAll len485 d485 c485 sub154 ((h494 ρ a1) 485 mem383) (smaller (h1030 ρ a0 a2) sub156)
theorem h1299 (ρ : Env) (a0 : Fits s220 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s609 :=
  appAll len492 d492 c492 sub1082 ((h355 ρ a1) 492 mem384) Positive.none
theorem h1300 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s609 :=
  appAll len493 d493 c493 sub1082 ((h354 ρ a1) 493 mem385) (smaller (h1035 ρ a0 a2) sub490)
theorem h1301 (ρ : Env) (a0 : Fits s239 (ρ 0)) (a1 : Fits s222 (ρ 1)) (a2 : Fits s220 (ρ 2)) : All tab ρ b8 s610 :=
  appAll len496 d496 c496 sub1083 ((h498 ρ a1) 496 mem386) (smaller (h1032 ρ a0 a2) sub159)
theorem h1302 (ρ : Env) (a0 : Fits s230 (ρ 0)) (a1 : Fits s223 (ρ 1)) (a2 : Fits s238 (ρ 2)) : All tab ρ b8 s240 :=
  appAll len502 d502 c502 sub159 ((h500 ρ a1) 502 mem387) (smaller (h1034 ρ a0 a2) sub489)
theorem h1303 (ρ : Env) (a0 : Fits s242 (ρ 0)) (a1 : Fits s222 (ρ 1)) (a2 : Fits s220 (ρ 2)) : All tab ρ b8 s240 :=
  appAll len503 d503 c503 sub159 ((h498 ρ a1) 503 mem388) (smaller (h1033 ρ a0 a2) sub161)
theorem h1304 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s238 (ρ 1)) (a2 : Fits s204 (ρ 2)) : All tab ρ b8 s615 :=
  appAll len516 d516 c516 sub1084 ((h502 ρ a1) 516 mem389) (smaller (h1036 ρ a0 a2) sub166)
theorem h1305 (ρ : Env) (a0 : Fits s238 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s616 :=
  appAll len519 d519 c519 sub1085 ((h355 ρ a1) 519 mem390) Positive.none
theorem h1306 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s616 :=
  appAll len520 d520 c520 sub1085 ((h354 ρ a1) 520 mem391) (smaller (h1038 ρ a0 a2) sub491)
theorem h1307 (ρ : Env) (a0 : Fits s249 (ρ 0)) (a1 : Fits s220 (ρ 1)) (a2 : Fits s247 (ρ 2)) : All tab ρ b8 s619 :=
  appAll len525 d525 c525 sub1086 ((h490 ρ a1) 525 mem392) (smaller (h1037 ρ a0 a2) sub169)
theorem h1308 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s248 (ρ 1)) (a2 : Fits s230 (ρ 2)) : All tab ρ b8 s250 :=
  appAll len532 d532 c532 sub169 ((h505 ρ a1) 532 mem393) (smaller (h1040 ρ a0 a2) sub494)
theorem h1309 (ρ : Env) (a0 : Fits s252 (ρ 0)) (a1 : Fits s220 (ρ 1)) (a2 : Fits s247 (ρ 2)) : All tab ρ b8 s250 :=
  appAll len533 d533 c533 sub169 ((h490 ρ a1) 533 mem394) (smaller (h1039 ρ a0 a2) sub171)
theorem h1310 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s247 (ρ 1)) (a2 : Fits s204 (ρ 2)) : All tab ρ b8 s625 :=
  appAll len545 d545 c545 sub1087 ((h503 ρ a1) 545 mem395) (smaller (h1041 ρ a0 a2) sub175)
theorem h1311 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s597 :=
  appAll len443 d443 c443 sub1088 ((h355 ρ a1) 443 mem396) Positive.none
theorem h1312 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s597 :=
  appAll len548 d548 c548 sub1088 ((h354 ρ a1) 548 mem397) (smaller (h1043 ρ a0 a2) sub495)
theorem h1313 (ρ : Env) (a0 : Fits s259 (ρ 0)) (a1 : Fits s197 (ρ 1)) (a2 : Fits s257 (ρ 2)) : All tab ρ b8 s627 :=
  appAll len553 d553 c553 sub1089 ((h476 ρ a1) 553 mem398) (smaller (h1042 ρ a0 a2) sub178)
theorem h1314 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s258 (ρ 1)) (a2 : Fits s204 (ρ 2)) : All tab ρ b8 s260 :=
  appAll len560 d560 c560 sub178 ((h509 ρ a1) 560 mem399) (smaller (h1045 ρ a0 a2) sub498)
theorem h1315 (ρ : Env) (a0 : Fits s262 (ρ 0)) (a1 : Fits s197 (ρ 1)) (a2 : Fits s257 (ρ 2)) : All tab ρ b8 s260 :=
  appAll len561 d561 c561 sub178 ((h476 ρ a1) 561 mem400) (smaller (h1044 ρ a0 a2) sub180)
theorem h1316 (ρ : Env) (a0 : Fits s257 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s209 :=
  appAll len567 d567 c567 sub1031 ((h355 ρ a1) 567 mem401) Positive.none
theorem h1317 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s209 :=
  appAll len568 d568 c568 sub1031 ((h354 ρ a1) 568 mem402) (smaller (h1049 ρ a0 a2) sub503)
theorem h1318 (ρ : Env) (a0 : Fits s266 (ρ 0)) (a1 : Fits s209 (ρ 1)) (a2 : Fits s197 (ρ 2)) : All tab ρ b8 s630 :=
  appAll len571 d571 c571 sub1090 ((h511 ρ a1) 571 mem403) (smaller (h1046 ρ a0 a2) sub183)
theorem h1319 (ρ : Env) (a0 : Fits s204 (ρ 0)) (a1 : Fits s210 (ρ 1)) (a2 : Fits s265 (ρ 2)) : All tab ρ b8 s267 :=
  appAll len577 d577 c577 sub183 ((h513 ρ a1) 577 mem404) (smaller (h1048 ρ a0 a2) sub502)
theorem h1320 (ρ : Env) (a0 : Fits s269 (ρ 0)) (a1 : Fits s209 (ρ 1)) (a2 : Fits s197 (ρ 2)) : All tab ρ b8 s267 :=
  appAll len578 d578 c578 sub183 ((h511 ρ a1) 578 mem405) (smaller (h1047 ρ a0 a2) sub185)
theorem h1321 (ρ : Env) (a0 : Fits s274 (ρ 0)) (a1 : Fits s197 (ρ 1)) (a2 : Fits s206 (ρ 2)) : All tab ρ b8 s634 :=
  appAll len591 d591 c591 sub1091 ((h476 ρ a1) 591 mem406) (smaller (h1050 ρ a0 a2) sub189)
theorem h1322 (ρ : Env) (a0 : Fits s212 (ρ 0)) (a1 : Fits s273 (ρ 1)) (a2 : Fits s204 (ρ 2)) : All tab ρ b8 s275 :=
  appAll len597 d597 c597 sub189 ((h517 ρ a1) 597 mem407) (smaller (h1052 ρ a0 a2) sub506)
theorem h1323 (ρ : Env) (a0 : Fits s277 (ρ 0)) (a1 : Fits s197 (ρ 1)) (a2 : Fits s206 (ρ 2)) : All tab ρ b8 s275 :=
  appAll len598 d598 c598 sub189 ((h476 ρ a1) 598 mem408) (smaller (h1051 ρ a0 a2) sub191)
theorem h1324 (ρ : Env) (a0 : Fits s206 (ρ 0)) (a1 : Fits s2 (ρ 1)) (a2 : Fits s3 (ρ 2)) : All tab ρ b8 s594 :=
  appAll len605 d605 c605 sub1092 ((h355 ρ a1) 605 mem409) (smaller (h1057 ρ a0 a2) sub510)
theorem h1325 (ρ : Env) (a0 : Fits s280 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s594 :=
  appAll len606 d606 c606 sub1092 ((h354 ρ a1) 606 mem410) (smaller (h1054 ρ a0 a2) sub688)
theorem h1326 (ρ : Env) (a0 : Fits s283 (ρ 0)) (a1 : Fits s206 (ρ 1)) (a2 : Fits s281 (ρ 2)) : All tab ρ b8 s11 :=
  appAll len16 d16 c16 sub5 ((h480 ρ a1) 16 mem411) (smaller (h1053 ρ a0 a2) sub5)
theorem h1327 (ρ : Env) (a0 : Fits s285 (ρ 0)) (a1 : Fits s282 (ρ 1)) (a2 : Fits s212 (ρ 2)) : All tab ρ b8 s11 :=
  appAll len613 d613 c613 sub5 ((h520 ρ a1) 613 mem412) (smaller (h1056 ρ a0 a2) sub509)
theorem h1328 (ρ : Env) (a0 : Fits s286 (ρ 0)) (a1 : Fits s206 (ρ 1)) (a2 : Fits s281 (ρ 2)) : All tab ρ b8 s11 :=
  appAll len614 d614 c614 sub5 ((h480 ρ a1) 614 mem413) (smaller (h1055 ρ a0 a2) sub1034)
theorem h1329 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s280 :=
  appAll len622 d622 c622 sub510 ((h354 ρ a1) 622 mem414) (smaller (h1059 ρ a0 a2) sub511)
theorem h1330 (ρ : Env) (a0 : Fits s292 (ρ 0)) (a1 : Fits s217 (ρ 1)) (a2 : Fits s290 (ρ 2)) : All tab ρ b8 s639 :=
  appAll len627 d627 c627 sub1093 ((h486 ρ a1) 627 mem415) (smaller (h1058 ρ a0 a2) sub1035)
theorem h1331 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s290 :=
  appAll len632 d632 c632 sub511 ((h354 ρ a1) 632 mem416) (smaller (h1062 ρ a0 a2) sub515)
end Blc.H45.H45F9573528477238
