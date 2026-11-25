import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846363266838Proof15

set_option Elab.async false
namespace Blc.H44.H44F4846363266838
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h502 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b9 s85 :=
  (consAll (lamAt d187 c187 (smaller (h401 (SelfintRecursiveTypes.cons s92 ρ) sub73 a0 a1) sub67)) (consAll (lamAt d206 c206 (smaller (h414 (SelfintRecursiveTypes.cons s98 ρ) sub78 a0 a1) sub94)) (consAll (lamAt d229 c229 (smaller (h453 (SelfintRecursiveTypes.cons s20 ρ) sub13 a0 a1) sub83)) Positive.none)))
theorem h503 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s77 (ρ 1)) : All tab ρ b9 s94 :=
  (consAll (lamAt d205 c205 (smaller (h413 (SelfintRecursiveTypes.cons s11 ρ) sub6 a0 a1) sub89)) Positive.none)
theorem h504 (ρ : Env) (a0 : Fits s93 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b9 s97 :=
  (consAll (lamAt d181 c181 (smaller (h415 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0 a1) sub263)) Positive.none)
theorem h505 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s85 (ρ 1)) : All tab ρ b9 s98 :=
  (consAll (lamAt d210 c210 (smaller (h416 (SelfintRecursiveTypes.cons s11 ρ) sub6 a0 a1) sub91)) Positive.none)
theorem h506 (ρ : Env) (a0 : Fits s90 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s60 :=
  (consAll (lamAt d2 c2 (smaller (h418 (SelfintRecursiveTypes.cons s1 ρ) sub323 a0 a1) sub67)) (consAll (lamAt d3 c3 (smaller (h419 (SelfintRecursiveTypes.cons s2 ρ) sub324 a0 a1) sub63)) (consAll (lamAt d7 c7 (smaller (h420 (SelfintRecursiveTypes.cons s6 ρ) sub325 a0 a1) sub146)) (consAll (lamAt d12 c12 (smaller (h420 (SelfintRecursiveTypes.cons s6 ρ) sub325 a0 a1) sub147)) (consAll (lamAt d31 c31 (smaller (h421 (SelfintRecursiveTypes.cons s26 ρ) sub326 a0 a1) sub150)) (consAll (lamAt d36 c36 (smaller (h421 (SelfintRecursiveTypes.cons s26 ρ) sub326 a0 a1) sub151)) (consAll (lamAt d42 c42 (smaller (h422 (SelfintRecursiveTypes.cons s32 ρ) sub25 a0 a1) sub271)) (consAll (lamAt d72 c72 (smaller (h424 (SelfintRecursiveTypes.cons s47 ρ) sub328 a0 a1) sub162)) (consAll (lamAt d77 c77 (smaller (h424 (SelfintRecursiveTypes.cons s47 ρ) sub328 a0 a1) sub163)) (consAll (lamAt d87 c87 (smaller (h425 (SelfintRecursiveTypes.cons s51 ρ) sub286 a0 a1) sub51)) (consAll (lamAt d97 c97 (smaller (h425 (SelfintRecursiveTypes.cons s51 ρ) sub286 a0 a1) sub168)) (consAll (lamAt d98 c98 (smaller (h426 (SelfintRecursiveTypes.cons s55 ρ) sub289 a0 a1) sub51)) (consAll (lamAt d104 c104 (smaller (h426 (SelfintRecursiveTypes.cons s55 ρ) sub289 a0 a1) sub170)) (consAll (lamAt d113 c113 (smaller (h429 (SelfintRecursiveTypes.cons s52 ρ) sub291 a0 a1) sub51)) (consAll (lamAt d116 c116 (smaller (h417 (SelfintRecursiveTypes.cons s62 ρ) sub55 a0 a1) sub51)) (consAll (lamAt d117 c117 (smaller (h425 (SelfintRecursiveTypes.cons s63 ρ) sub52 a0 a1) sub51)) (consAll (lamAt d118 c118 (smaller (h428 (SelfintRecursiveTypes.cons s64 ρ) sub56 a0 a1) sub51)) (consAll (lamAt d120 c120 (smaller (h426 (SelfintRecursiveTypes.cons s65 ρ) sub53 a0 a1) sub51)) (consAll (lamAt d124 c124 (smaller (h417 (SelfintRecursiveTypes.cons s60 ρ) sub285 a0 a1) sub51)) (consAll (lamAt d125 c125 (smaller (h429 (SelfintRecursiveTypes.cons s66 ρ) sub57 a0 a1) sub51)) (consAll (lamAt d127 c127 (smaller (h429 (SelfintRecursiveTypes.cons s21 ρ) sub292 a0 a1) sub51)) (consAll (lamAt d129 c129 (smaller (h430 (SelfintRecursiveTypes.cons s67 ρ) sub58 a0 a1) sub51)) (consAll (lamAt d130 c130 (smaller (h430 (SelfintRecursiveTypes.cons s18 ρ) sub293 a0 a1) sub51)) (consAll (lamAt d131 c131 (smaller (h430 (SelfintRecursiveTypes.cons s68 ρ) sub306 a0 a1) sub51)) (consAll (lamAt d133 c133 (smaller (h428 (SelfintRecursiveTypes.cons s33 ρ) sub287 a0 a1) sub51)) (consAll (lamAt d134 c134 (smaller (h417 (SelfintRecursiveTypes.cons s69 ρ) sub308 a0 a1) sub51)) (consAll (lamAt d136 c136 (smaller (h427 (SelfintRecursiveTypes.cons s46 ρ) sub38 a0 a1) sub256)) (consAll (lamAt d138 c138 (smaller (h417 (SelfintRecursiveTypes.cons s60 ρ) sub285 a0 a1) sub168)) (consAll (lamAt d150 c150 (smaller (h423 (SelfintRecursiveTypes.cons s73 ρ) sub304 a0 a1) sub51)) (consAll (lamAt d157 c157 (smaller (h428 (SelfintRecursiveTypes.cons s33 ρ) sub287 a0 a1) sub168)) (consAll (lamAt d158 c158 (smaller (h426 (SelfintRecursiveTypes.cons s55 ρ) sub289 a0 a1) sub168)) (consAll (lamAt d179 c179 (smaller (h423 (SelfintRecursiveTypes.cons s88 ρ) sub75 a0 a1) sub51)) (consAll (lamAt d183 c183 (smaller (h430 (SelfintRecursiveTypes.cons s90 ρ) sub313 a0 a1) sub51)) (consAll (lamAt d185 c185 (smaller (h417 (SelfintRecursiveTypes.cons s91 ρ) sub315 a0 a1) sub51)) (consAll (lamAt d203 c203 (smaller (h427 (SelfintRecursiveTypes.cons s96 ρ) sub331 a0 a1) sub256)) Positive.none)))))))))))))))))))))))))))))))))))
theorem h507 (ρ : Env) (a0 : Fits s91 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s60 :=
  (consAll (lamAt d2 c2 (smaller (h432 (SelfintRecursiveTypes.cons s1 ρ) sub323 a0 a1) sub67)) (consAll (lamAt d3 c3 (smaller (h433 (SelfintRecursiveTypes.cons s2 ρ) sub324 a0 a1) sub63)) (consAll (lamAt d7 c7 (smaller (h434 (SelfintRecursiveTypes.cons s6 ρ) sub325 a0 a1) sub146)) (consAll (lamAt d12 c12 (smaller (h434 (SelfintRecursiveTypes.cons s6 ρ) sub325 a0 a1) sub147)) (consAll (lamAt d31 c31 (smaller (h435 (SelfintRecursiveTypes.cons s26 ρ) sub326 a0 a1) sub150)) (consAll (lamAt d36 c36 (smaller (h435 (SelfintRecursiveTypes.cons s26 ρ) sub326 a0 a1) sub151)) (consAll (lamAt d42 c42 (smaller (h436 (SelfintRecursiveTypes.cons s32 ρ) sub25 a0 a1) sub271)) (consAll (lamAt d72 c72 (smaller (h438 (SelfintRecursiveTypes.cons s47 ρ) sub328 a0 a1) sub162)) (consAll (lamAt d77 c77 (smaller (h438 (SelfintRecursiveTypes.cons s47 ρ) sub328 a0 a1) sub163)) (consAll (lamAt d87 c87 (smaller (h439 (SelfintRecursiveTypes.cons s51 ρ) sub286 a0 a1) sub51)) (consAll (lamAt d97 c97 (smaller (h439 (SelfintRecursiveTypes.cons s51 ρ) sub286 a0 a1) sub168)) (consAll (lamAt d98 c98 (smaller (h440 (SelfintRecursiveTypes.cons s55 ρ) sub289 a0 a1) sub51)) (consAll (lamAt d104 c104 (smaller (h440 (SelfintRecursiveTypes.cons s55 ρ) sub289 a0 a1) sub170)) (consAll (lamAt d113 c113 (smaller (h443 (SelfintRecursiveTypes.cons s52 ρ) sub291 a0 a1) sub51)) (consAll (lamAt d116 c116 (smaller (h431 (SelfintRecursiveTypes.cons s62 ρ) sub55 a0 a1) sub51)) (consAll (lamAt d117 c117 (smaller (h439 (SelfintRecursiveTypes.cons s63 ρ) sub52 a0 a1) sub51)) (consAll (lamAt d118 c118 (smaller (h442 (SelfintRecursiveTypes.cons s64 ρ) sub56 a0 a1) sub51)) (consAll (lamAt d120 c120 (smaller (h440 (SelfintRecursiveTypes.cons s65 ρ) sub53 a0 a1) sub51)) (consAll (lamAt d124 c124 (smaller (h431 (SelfintRecursiveTypes.cons s60 ρ) sub285 a0 a1) sub51)) (consAll (lamAt d125 c125 (smaller (h443 (SelfintRecursiveTypes.cons s66 ρ) sub57 a0 a1) sub51)) (consAll (lamAt d127 c127 (smaller (h443 (SelfintRecursiveTypes.cons s21 ρ) sub292 a0 a1) sub51)) (consAll (lamAt d129 c129 (smaller (h444 (SelfintRecursiveTypes.cons s67 ρ) sub58 a0 a1) sub51)) (consAll (lamAt d130 c130 (smaller (h444 (SelfintRecursiveTypes.cons s18 ρ) sub293 a0 a1) sub51)) (consAll (lamAt d131 c131 (smaller (h444 (SelfintRecursiveTypes.cons s68 ρ) sub306 a0 a1) sub51)) (consAll (lamAt d133 c133 (smaller (h442 (SelfintRecursiveTypes.cons s33 ρ) sub287 a0 a1) sub51)) (consAll (lamAt d134 c134 (smaller (h431 (SelfintRecursiveTypes.cons s69 ρ) sub308 a0 a1) sub51)) (consAll (lamAt d136 c136 (smaller (h441 (SelfintRecursiveTypes.cons s46 ρ) sub38 a0 a1) sub256)) (consAll (lamAt d138 c138 (smaller (h431 (SelfintRecursiveTypes.cons s60 ρ) sub285 a0 a1) sub168)) (consAll (lamAt d150 c150 (smaller (h437 (SelfintRecursiveTypes.cons s73 ρ) sub304 a0 a1) sub51)) (consAll (lamAt d157 c157 (smaller (h442 (SelfintRecursiveTypes.cons s33 ρ) sub287 a0 a1) sub168)) (consAll (lamAt d158 c158 (smaller (h440 (SelfintRecursiveTypes.cons s55 ρ) sub289 a0 a1) sub168)) (consAll (lamAt d179 c179 (smaller (h437 (SelfintRecursiveTypes.cons s88 ρ) sub75 a0 a1) sub51)) (consAll (lamAt d183 c183 (smaller (h444 (SelfintRecursiveTypes.cons s90 ρ) sub313 a0 a1) sub51)) (consAll (lamAt d185 c185 (smaller (h431 (SelfintRecursiveTypes.cons s91 ρ) sub315 a0 a1) sub51)) (consAll (lamAt d203 c203 (smaller (h441 (SelfintRecursiveTypes.cons s96 ρ) sub331 a0 a1) sub256)) Positive.none)))))))))))))))))))))))))))))))))))
theorem h508 (ρ : Env) (a0 : Fits s100 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b9 s102 :=
  (consAll (lamAt d207 c207 (smaller (h446 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0 a1) sub89)) Positive.none)
theorem h509 (ρ : Env) (a0 : Fits s101 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b9 s103 :=
  (consAll (lamAt d212 c212 (smaller (h448 (SelfintRecursiveTypes.cons s9 ρ) sub10 a0 a1) sub91)) Positive.none)
theorem h510 (ρ : Env) (a0 : Fits s104 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b9 s93 :=
  (consAll (lamAt d216 c216 (smaller (h452 (SelfintRecursiveTypes.cons s19 ρ) sub15 a0 a1) sub84)) Positive.none)
theorem h511 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s71 :=
  (consAll (lamAt d162 c162 (smaller (h459 (SelfintRecursiveTypes.cons s75 ρ) sub90 a0 a1) sub300)) (consAll (lamAt d214 c214 (smaller (h454 (SelfintRecursiveTypes.cons s32 ρ) sub25 a0 a1) sub263)) (consAll (lamAt d240 c240 (smaller (h460 (SelfintRecursiveTypes.cons s46 ρ) sub38 a0 a1) sub266)) Positive.none)))
theorem h512 (ρ : Env) (a0 : Fits s105 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b9 s100 :=
  (consAll (lamAt d223 c223 (smaller (h455 (SelfintRecursiveTypes.cons s19 ρ) sub15 a0 a1) sub85)) Positive.none)
theorem h513 (ρ : Env) (a0 : Fits s106 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b9 s101 :=
  (consAll (lamAt d227 c227 (smaller (h456 (SelfintRecursiveTypes.cons s19 ρ) sub15 a0 a1) sub87)) Positive.none)
theorem h514 (ρ : Env) (a0 : Fits s107 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s76 :=
  (consAll (lamAt d2 c2 (smaller (h461 (SelfintRecursiveTypes.cons s1 ρ) sub323 a0 a1) sub67)) (consAll (lamAt d222 c222 (smaller (h457 (SelfintRecursiveTypes.cons s32 ρ) sub25 a0 a1) sub89)) Positive.none))
theorem h515 (ρ : Env) (a0 : Fits s108 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b9 s79 :=
  (consAll (lamAt d226 c226 (smaller (h458 (SelfintRecursiveTypes.cons s32 ρ) sub25 a0 a1) sub91)) (consAll (lamAt d243 c243 (smaller (h462 (SelfintRecursiveTypes.cons s110 ρ) sub93 a0 a1) sub340)) (consAll (lamAt d247 c247 (smaller (h462 (SelfintRecursiveTypes.cons s110 ρ) sub93 a0 a1) sub341)) Positive.none)))
theorem h516 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s112 :=
  appAll len8 d8 c8 sub97 ((h98 ρ a1) 8 mem196) (smaller (h463 ρ a0 a1) sub342)
theorem h517 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b10 s113 :=
  appAll len11 d11 c11 sub226 ((h99 ρ a1) 11 mem197) (smaller (h464 ρ a0 a1) sub5)
theorem h518 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s15 :=
  appAll len18 d18 c18 sub9 ((h100 ρ a1) 18 mem198) (smaller (h465 ρ a0 a1) sub9)
theorem h519 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s17 :=
  appAll len21 d21 c21 sub11 ((h100 ρ a1) 21 mem199) (smaller (h466 ρ a0 a1) sub11)
theorem h520 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s12 :=
  appAll len27 d27 c27 sub12 ((h100 ρ a1) 27 mem200) (smaller (h467 ρ a0 a1) sub12)
theorem h521 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s114 :=
  appAll len31 d31 c31 sub228 ((h105 ρ a1) 31 mem201) (smaller (h472 ρ a0 a1) sub106)
theorem h522 (ρ : Env) (a0 : Fits s26 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s114 :=
  appAll len32 d32 c32 sub228 ((h98 ρ a1) 32 mem202) (smaller (h468 ρ a0 a1) sub343)
theorem h523 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s27 (ρ 1)) : All tab ρ b10 s116 :=
  appAll len35 d35 c35 sub234 ((h106 ρ a1) 35 mem203) (smaller (h469 ρ a0 a1) sub21)
theorem h524 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s118 :=
  appAll len40 d40 c40 sub236 ((h100 ρ a1) 40 mem204) (smaller (h470 ρ a0 a1) sub22)
theorem h525 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s30 :=
  appAll len46 d46 c46 sub23 ((h100 ρ a1) 46 mem205) (smaller (h471 ρ a0 a1) sub23)
theorem h526 (ρ : Env) (a0 : Fits s37 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s122 :=
  appAll len51 d51 c51 sub224 ((h98 ρ a1) 51 mem206) (smaller (h473 ρ a0 a1) sub344)
theorem h527 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s38 (ρ 1)) : All tab ρ b10 s123 :=
  appAll len55 d55 c55 sub240 ((h111 ρ a1) 55 mem207) (smaller (h474 ρ a0 a1) sub29)
theorem h528 (ρ : Env) (a0 : Fits s42 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s43 :=
  appAll len60 d60 c60 sub30 ((h100 ρ a1) 60 mem208) (smaller (h475 ρ a0 a1) sub30)
theorem h529 (ρ : Env) (a0 : Fits s45 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s42 :=
  appAll len66 d66 c66 sub31 ((h100 ρ a1) 66 mem209) (smaller (h476 ρ a0 a1) sub31)
theorem h530 (ρ : Env) (a0 : Fits s21 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s128 :=
  appAll len72 d72 c72 sub39 ((h105 ρ a1) 72 mem210) (smaller (h479 ρ a0 a1) sub112)
theorem h531 (ρ : Env) (a0 : Fits s47 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s128 :=
  appAll len73 d73 c73 sub39 ((h98 ρ a1) 73 mem211) (smaller (h477 ρ a0 a1) sub345)
theorem h532 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b10 s129 :=
  appAll len76 d76 c76 sub244 ((h116 ρ a1) 76 mem212) (smaller (h478 ρ a0 a1) sub42)
theorem h533 (ρ : Env) (a0 : Fits s30 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s131 :=
  appAll len81 d81 c81 sub246 ((h100 ρ a1) 81 mem213) (smaller (h470 ρ a0 a1) sub22)
theorem h534 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s13 (ρ 1)) : All tab ρ b10 s30 :=
  appAll len46 d46 c46 sub23 ((h100 ρ a1) 46 mem205) (smaller (h480 ρ a0 a1) sub23)
theorem h535 (ρ : Env) (a0 : Fits s52 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s135 :=
  appAll len87 d87 c87 sub51 ((h105 ρ a1) 87 mem214) (smaller (h485 ρ a0 a1) sub113)
theorem h536 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b10 s135 :=
  appAll len88 d88 c88 sub51 ((h98 ρ a1) 88 mem215) (smaller (h481 ρ a0 a1) sub346)
theorem h537 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s5 (ρ 1)) : All tab ρ b10 s132 :=
  appAll len90 d90 c90 sub43 ((h105 ρ a1) 90 mem216) (smaller (h488 ρ a0 a1) sub116)
end Blc.H44.H44F4846363266838
